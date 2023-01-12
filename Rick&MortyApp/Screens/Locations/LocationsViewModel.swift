//
//  LocationsViewModel.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import Combine
import Resolver

class LocationsViewModel {

    private var cancellables = Set<AnyCancellable>()
    private var isLoadingPage = false

    let locationsSubject = CurrentValueSubject<[Location], Never>([])
    let isFirstLoadingPageSubject = CurrentValueSubject<Bool, Never>(true)
    var currentSearchQuery = ""
    var currentPage = 1
    var canLoadMorePages = true

    @LazyInjected private var networkService: NetworkService
    
    func getLocations() async {
        guard !isLoadingPage && canLoadMorePages else {
            return
        }
        isLoadingPage = true
        let request = LocationsRequest(name: currentSearchQuery, page: currentPage)
        do {
            let locationResponseModel = try await networkService.fetch(request)
            isLoadingPage = false
            locationsSubject.value.append(contentsOf: locationResponseModel.results)
            if locationResponseModel.pageInfo.pageCount == currentPage {
                canLoadMorePages = false
                return
            }
            currentPage += 1
            isFirstLoadingPageSubject.value = false
        } catch {
            print(error.localizedDescription)
        }
    }
}
