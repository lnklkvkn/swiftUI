//
//  SettingsView.swift
//  SwiftUIEducation
//
//  Created by ln on 11.07.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    @AppStorage("isTitleOn") var isTitleOn: Bool = false
    @State private var showMem = false
    @State private var sliderValue: Double = 0
    @State private var toggler = true
    @State private var selectedAppearance = 1
    @State var colorsForBackgroung = ["Серый", "Зеленый", "Розовый", "Синий", "Желтый"]
    @State var selectedColor = "Серый"
    
    var backColor: Color {
        switch selectedColor {
        case "Серый":
            return Color(.systemGray6)
        case "Зеленый":
            return .green
        case "Розовый":
            return .pink
        case "Синий":
            return .blue
        default:
            return .yellow
        }
    }
    
    var body: some View {
        
        Form {
            
            Section {
                Text("Текущее оформление: " + (colorScheme == .dark ? "темное" : "светлое"))
            }
            
            Section {
                
                Toggle("Показывать заголовок основного раздела", isOn: $isTitleOn)
                    .onChange(of: isTitleOn) { _titleOn in
                        titleOn  = _titleOn
                        print("Новое значение для юзер деволтс - \(String(describing: isTitleOn))")
                    }
                   
                Text("Заголовок" + (isTitleOn ? " активирован" : " отключен"))
            }
            
            Section {
                Toggle("Показать мем", isOn: $showMem)
                if showMem {
                    Image("mem")
                        .resizable()
                }
            }
            
            Section {
                VStack {
                    Text( "Моя оценка приложению: ")
                    Slider(value: $sliderValue, in: 0...10)
                        .accentColor(color(forScore: Int(sliderValue)))
                        .accentColor(color(forScore: Int(sliderValue)))
                        .colorMultiply(color(forScore: Int(sliderValue)))
                    Text(text(forScore:Int(sliderValue)))
                        .foregroundColor(color(forScore: Int(sliderValue)))
                }.padding()
            }
            
            Picker("Изменить цвет фона", selection: $selectedColor) {
                ForEach(colorsForBackgroung, id: \.self) { item in
                    Text(item)
                }
            }
            
            Picker("Изменить цвет фона", selection: $selectedColor) {
                ForEach(colorsForBackgroung, id: \.self) { item in
                    Text(item)
                }
            }
            
        }
        .background(backColor)
        .scrollContentBackground(.hidden)
        
    }
    
    func text(forScore: Int) -> String {
        switch forScore {
        case 0..<3:
            return "Видали и получше"
        case 7...10:
            return "Я что, в раю?"
        default:
            return "Приемлемо"
        }
    }
    
    func color(forScore: Int) -> Color {
        switch forScore {
        case 0..<3:
            return .red
        case 7...10:
            return .green
        default:
            return .blue
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView( titleOn: .constant(true))
    }
}


