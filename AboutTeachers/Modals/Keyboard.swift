//
//  Keyboard.swift
//  AboutTeachers
//
//  Created by Денис on 06.02.2022.
//

func addTapGestureToHideKeyboard() {
    let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
    view.addGestureRecognizer(tapGesture)
}
