//
//  CharacterCollectionViewCell.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import UIKit
import SDWebImage
import Hero
import TinyConstraints

final class CharacterCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier: String = "CharacterCollectionViewCell"
    
    private let characterImageView = UIImageView()
    private let nameLabel = UILabel()
    private let labelsVerticalStackView = UIStackView()
    private let statusHorizontalStackView = UIStackView()
    private let statusLabel = UILabel()
    private let statusImageView = UIImageView(image: SFSymbols.statusSymbol)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Just… no")
    }
    
    private func addSubviews() {
        contentView.addSubview(characterImageView)
        characterImageView.edgesToSuperview(excluding: .bottom, insets: .left(8) + .right(8) + .top(8))
        characterImageView.aspectRatio(1)
        
        labelsVerticalStackView.axis = .vertical
        labelsVerticalStackView.spacing = 4
        labelsVerticalStackView.alignment = .leading
        
        statusHorizontalStackView.axis = .horizontal
        statusHorizontalStackView.spacing = 4
        statusHorizontalStackView.alignment = .leading
        statusHorizontalStackView.alignment = .center
        
        contentView.addSubview(labelsVerticalStackView)
        labelsVerticalStackView.topToBottom(of: characterImageView).constant = 8
        labelsVerticalStackView.edgesToSuperview(excluding: [.top, .bottom], insets: .left(8) + .right(8))
        
        labelsVerticalStackView.addArrangedSubview(nameLabel)
        labelsVerticalStackView.addArrangedSubview(statusHorizontalStackView)
        
        statusHorizontalStackView.addArrangedSubview(statusImageView)
        statusImageView.size(.init(width: 8, height: 8))
        statusHorizontalStackView.addArrangedSubview(statusLabel)
    }
    
    private func configureContents() {
        layer.cornerRadius = 10
        clipsToBounds = true
        contentView.backgroundColor = .rickBlue
        
        nameLabel.font = .preferredFont(forTextStyle: .headline)
        nameLabel.textColor = .white
        
        statusLabel.font = .preferredFont(forTextStyle: .callout)
        statusLabel.adjustsFontSizeToFitWidth = true
        statusLabel.textColor = .secondaryLabel
        
        characterImageView.clipsToBounds = true
        characterImageView.layer.cornerRadius = 10
        characterImageView.sd_imageIndicator = SDWebImageActivityIndicator.gray
    }
    
    func set(with character: PersonCharacter) {
        characterImageView.heroID = character.uuid.uuidString
        nameLabel.heroID = character.name
        nameLabel.text = character.name
        statusImageView.tintColor = character.statusColor
        statusLabel.text = "\(character.status.rawValue) - \(character.species)"
        guard let imageURL = URL(string: character.imageUrl) else { return }
        characterImageView.sd_setImage(with: imageURL)
    }
}
