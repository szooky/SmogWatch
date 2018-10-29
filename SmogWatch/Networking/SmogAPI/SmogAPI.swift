//
//  SmogAPI.swift
//  SmogWatch
//
//  Created by Filip Szukala on 26/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class SmogAPI: API {
    private let session = URLSession(configuration: .default)
    private let baseEndpoint = "http://api.gios.gov.pl/pjp-api/rest/"

    func send<T: Request>(_ request: T, completion: @escaping ResponseCallback<T.Response>) {
        let endpoint = self.endpoint(for: request)

        let task = session.dataTask(with: URLRequest(url: endpoint)) { data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(T.Response.self, from: data)
                    dump(response)

                    if let decodedResponse = response as? [CoreDatable] {
                        decodedResponse.forEach { $0.saveToCoreData() }
                    } else if let decodedResponse = response as? CoreDatable {
                        decodedResponse.saveToCoreData()
                    }

                    if error == nil {
                        completion(.success(response))
                    } else if let error = error {
                        completion(.failure(SmogError.server(message: error.localizedDescription)))
                    } else {
                        completion(.failure(SmogError.decoding))
                    }
                } catch {
                    completion(.failure(error))
                }
            } else if let error = error {
                completion(.failure(error))
            }
        }
        task.resume()
    }

    private func endpoint<T: Request>(for request: T) -> URL {
        return URL(string: baseEndpoint + request.resourcePath)!
    }
}
