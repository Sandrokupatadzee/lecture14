//
//  MainScreen.swift
//  Projects-lecture14
//
//  Created by MacBook Pro on 07.04.24.
//

import UIKit

class MainScreen: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        addMyLockImage()
        addGreetingStackView()
        addLogInStackView()
    }
    
    func addMyLockImage() {
        guard let image = UIImage(systemName: "lock.laptopcomputer") else {return}
        let myLockImage = UIImageView(image: image)
        myLockImage.tintColor = .black
        myLockImage.contentMode = .scaleAspectFit
        myLockImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myLockImage)
        
        myLockImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        myLockImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myLockImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        myLockImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    func addGreetingStackView () {
        let titleLabel = UILabel()
        titleLabel.text = "მოგესალმებით!"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        
        let descriptionTextView = UITextView()
        descriptionTextView.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზაა, შეხვიდეთ თქვენს ანგარიშზე, თუ არ გაქვთ ანგარიში, შექმენით, თუ არ გსურთ ანგარიშის შექმნა, დატოვეთ აქაურობა და წაშალეთ აპლიკაცია!"
        descriptionTextView.font = UIFont.systemFont(ofSize: 14)
        descriptionTextView.isEditable = false
        descriptionTextView.isScrollEnabled = false
        
        let greetingStackView = UIStackView(arrangedSubviews: [titleLabel,descriptionTextView])
        greetingStackView.axis = .vertical
        greetingStackView.spacing = 8
        greetingStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greetingStackView)
        
        greetingStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 115).isActive = true
        greetingStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        greetingStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    }
    
    func addLogInStackView() {
        let titleLabel2 = UILabel()
        titleLabel2.text = "ავტორიზაცია"
        titleLabel2.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontall = UIView()
        let horizontal2 = UIView()
        
        let titleLabel2StackView = UIStackView(arrangedSubviews: [horizontall,titleLabel2,horizontal2])
        titleLabel2StackView.axis = .horizontal
        titleLabel2StackView.spacing = 8
        titleLabel2StackView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel2StackView.distribution = .equalCentering
        titleLabel2StackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        let blueLine = UIView()
        blueLine.backgroundColor = .systemBlue
        blueLine.translatesAutoresizingMaskIntoConstraints = false
        blueLine.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //        MARK: - login stackview
        
        let logInName = UILabel()
        logInName.text = "სრული სახელი"
        logInName.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let addLogInName = UITextField()
        addLogInName.placeholder = "მაგ: Lionel Andrés Messi"
        addLogInName.borderStyle = .roundedRect
        addLogInName.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let logInNameStackView = UIStackView(arrangedSubviews: [logInName,addLogInName])
        logInNameStackView.axis = .vertical
        logInNameStackView.spacing = 8
        
        let logInEmail = UILabel()
        logInEmail.text = "ელ ფოსტა"
        logInEmail.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let addLogInEmail = UITextField()
        addLogInEmail.placeholder = "მაგ: ankaramessi@fcbarcelona.com"
        addLogInEmail.borderStyle = .roundedRect
        addLogInEmail.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let logInEmailStackView = UIStackView(arrangedSubviews: [logInEmail,addLogInEmail])
        logInEmailStackView.axis = .vertical
        logInEmailStackView.spacing = 8
        
        let logInPass = UILabel()
        logInPass.text = "პაროლი"
        logInPass.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let addLogInPass = UITextField()
        addLogInPass.placeholder = "მაგ: I'mGoatFootBaller"
        addLogInPass.borderStyle = .roundedRect
        addLogInPass.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        let logInPassStackView = UIStackView(arrangedSubviews: [logInPass,addLogInPass])
        logInPassStackView.axis = .vertical
        logInPassStackView.spacing = 8
        
        let logInInfoStackView = UIStackView(arrangedSubviews: [logInNameStackView,logInEmailStackView,logInPassStackView])
        logInInfoStackView.axis = .vertical
        logInInfoStackView.spacing = 8
        logInInfoStackView.distribution = .fillEqually
        logInInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        
        //        MARK: - login button and OR
        
        let logInButton = UIButton()
        logInButton.configuration = .filled()
        logInButton.configuration?.title = "შესვლა"
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let horizontalLine1 = UIView()
        horizontalLine1.backgroundColor = .gray
        horizontalLine1.translatesAutoresizingMaskIntoConstraints = false
        horizontalLine1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        horizontalLine1.widthAnchor.constraint(equalToConstant: 158).isActive = true
        
        let orLabel = UILabel()
        orLabel.text = "ან"
        orLabel.font = UIFont.systemFont(ofSize: 15)
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalLine2 = UIView()
        horizontalLine2.backgroundColor = .gray
        horizontalLine2.translatesAutoresizingMaskIntoConstraints = false
        horizontalLine2.heightAnchor.constraint(equalToConstant: 2).isActive = true
        horizontalLine2.widthAnchor.constraint(equalToConstant: 158).isActive = true
        
        let orLabelStackView = UIStackView(arrangedSubviews: [horizontalLine1, orLabel, horizontalLine2])
        orLabelStackView.axis = .horizontal
        orLabelStackView.spacing = 8
        orLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        orLabelStackView.alignment = .center
        orLabelStackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //        MARK: - login alternative methods
        
        let logInGoogle = UIButton()
        logInGoogle.configuration = .tinted()
        logInGoogle.configuration?.title = "გამოიყენეთ Google"
        logInGoogle.configuration?.baseForegroundColor = .black
        logInGoogle.configuration?.baseBackgroundColor = .gray
        logInGoogle.configuration?.image = UIImage(systemName: "g.circle.fill")
        
        let logInFacebook = UIButton()
        logInFacebook.configuration = .tinted()
        logInFacebook.configuration?.title = "გამოიყენეთ Facebook"
        logInFacebook.configuration?.baseForegroundColor = .black
        logInFacebook.configuration?.baseBackgroundColor = .gray
        logInFacebook.configuration?.image = UIImage(systemName: "f.circle.fill")
        
        let logInAlternativeStackView = UIStackView(arrangedSubviews: [logInGoogle,logInFacebook])
        logInAlternativeStackView.axis = .vertical
        logInAlternativeStackView.spacing = 8
        logInAlternativeStackView.distribution = .fillEqually
        logInAlternativeStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //        MARK: - final main stackview
        
        let addLogInStackView = UIStackView(arrangedSubviews: [titleLabel2StackView,blueLine,logInInfoStackView,logInButton,orLabelStackView,logInAlternativeStackView])
        addLogInStackView.axis = .vertical
        addLogInStackView.spacing = 8
        addLogInStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addLogInStackView)
        
        addLogInStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 255).isActive = true
        addLogInStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
}
