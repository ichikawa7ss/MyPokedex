//
//  APIDataStore.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import Alamofire

enum APIDataStoreProvider {

    static func provide() -> APIDataStore {
        return APIDataStoreImpl(session: Session.default)
    }
}

protocol APIDataStore {

    typealias Completion = (Result<Data, Error>) -> Void

    func request(_ request: APIRequestable, completion: @escaping Completion)
}

private struct APIDataStoreImpl: APIDataStore {

    let session: Session

    func request(_ request: APIRequestable, completion: @escaping Completion) {

        self.session
            .request(request.urlString, method: request.method, parameters: request.parameters)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
        }
    }
}
