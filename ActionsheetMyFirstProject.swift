//
//  ActionsheetMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 06.03.2024.
//

import SwiftUI

struct ActionsheetMyFirstProject: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
        
        //return ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message."),
//            buttons: [button1, button1, button1, button2, button3]
//        )
    }
}

#Preview {
    ActionsheetMyFirstProject()
}
