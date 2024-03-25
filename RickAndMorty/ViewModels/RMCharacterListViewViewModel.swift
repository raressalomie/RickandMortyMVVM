//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 23/3/24.
//

import UIKit

final class RMCharacterListViewViewModel:NSObject {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print("Page result count: " + String(model.result.count))
            case .failure(let error):
                print(String(describing: error))
            }
            
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        let url = URL(string: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fes.linkedin.com%2Fin%2Frares-salomie-321052b3&psig=AOvVaw0SKgf7s_YhMknH0OeXr9C7&ust=1711471528847000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIiX7bXuj4UDFQAAAAAdAAAAABAE")
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "Rares", characterStatus: .alive, characterImageUrl: url)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        return CGSize(
            width: width,
            height: width * 1.5
        )
    }
}
