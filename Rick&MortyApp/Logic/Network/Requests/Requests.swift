//
//  Requests.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation

final class CharactersRequest: NetworkRequestProtocol {
    typealias ResponseType = GeneralResponse<PersonCharacter>

    let endpoint: Endpoint
    let method: HTTPMethod = .GET

    init(name: String, status: String, gender: String, page: Int) {
        endpoint = .getCharacters(name: name, status: status,
                                  gender: gender, page: page)
    }
}

final class EpisodesRequest: NetworkRequestProtocol {
    typealias ResponseType = GeneralResponse<Episode>

    let endpoint: Endpoint
    let method: HTTPMethod = .GET

    init(name: String, page: Int) {
        endpoint = .getEpisodes(for: name, page: page)
    }
}

final class LocationsRequest: NetworkRequestProtocol {
    typealias ResponseType = GeneralResponse<Location>

    let endpoint: Endpoint
    let method: HTTPMethod = .GET

    init(name: String, page: Int) {
        endpoint = .getLocations(for: name, page: page)
    }
}
