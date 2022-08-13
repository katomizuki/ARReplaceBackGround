//
//  Renderer.swift
//  ARReplaceBackGround
//
//  Created by ミズキ on 2022/08/13.
//

import Foundation
import Metal
import MetalKit
import ARKit

// Render先に委任させる
protocol RenderDestinationProvider {
    var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }
    var currentDrawable: CAMetalDrawable? { get }
    var colorPixelFormat: MTLPixelFormat { get set }
    var sampleCount: Int { get set }
}

class Renderer {
    // コマンドバッファの最大数
    private let kMaxBuffersInFlight: Int = 3
    // uniformバッファの最大数
    private let kMaxAnchorInstanceCount: Int = 64
    // 16バイトユニフォームの構造体
    private let kAlignedSharedUniformsSize: Int = (MemoryLayout<SharedUniforms>.size & ~0xFF) + 0x100
    
    private let kAlignedInstanceUniformsSize: Int = ((MemoryLayout<InstanceUniforms>.size * 64) & ~0xFF) + 0x100
    
    private let kImagePlaneVertexData: [Float] = [
        -1.0, -1.0, 0.0, 1.0,
        1.0, -1.0, 1.0, 1.0,
        -1.0, 1.0, 0.0, 0.0,
        1.0, 1.0, 1.0, 0.0
    ]
    
    
}
