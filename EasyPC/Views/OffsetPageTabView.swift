//
//  OffsetPageTabView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/25.
//

import SwiftUI

struct OffsetPageTabView<Content: View>: UIViewRepresentable {
    
    var content: Content
    @Binding var offset: CGFloat
    
    func makeCoordinator() -> Coordinator {
        return OffsetPageTabView.Coordinator(parent: self)
    }
    
    init(offset: Binding<CGFloat>,@ViewBuilder content: @escaping ()->Content){
        self.content = content()
        self._offset = offset
    }
    
    func makeUIView(context: Context) -> some UIScrollView {
        
        let scrollview = UIScrollView()
        
        // Extracting SwiftUI View and embedding into UIKit ScrollView...
        let hostview = UIHostingController(rootView: content)
        hostview.view.translatesAutoresizingMaskIntoConstraints = false
        
        
        let constraints = [
            hostview.view.topAnchor.constraint(equalTo: scrollview.topAnchor),
            hostview.view.leadingAnchor.constraint(equalTo: scrollview.leadingAnchor),
            hostview.view.trailingAnchor.constraint(equalTo: scrollview.trailingAnchor),
            hostview.view.bottomAnchor.constraint(equalTo: scrollview.bottomAnchor),
            
            //if you are using vertical scrolling, then don't declare height constraint
            hostview.view.heightAnchor.constraint(equalTo: scrollview.heightAnchor)
        ]
        
        scrollview.addSubview(hostview.view)
        scrollview.addConstraints(constraints)
        
        //Enabling Paging
        scrollview.isPagingEnabled = true
        scrollview.showsVerticalScrollIndicator = false
        scrollview.showsHorizontalScrollIndicator = false
        
        //setting Delegate...
        scrollview.delegate = context.coordinator
        
        return scrollview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        //need to update only when offset changed manually...
        // just check the current and scrollview offsets
        let currentOffset = uiView.contentOffset.x
        
        if currentOffset != offset{
            uiView.setContentOffset(CGPoint(x: offset, y: 0), animated: true)
        }

    }
    
    //Pager Offset...
    class Coordinator: NSObject,UIScrollViewDelegate{
        
        var parent: OffsetPageTabView
        
        init(parent: OffsetPageTabView){
            self.parent = parent
        }
        
        func scrollViewDidScroll(_ scrollview: UIScrollView) {
            let offset = scrollview.contentOffset.x
            
            parent.offset = offset
        }
    }
}
