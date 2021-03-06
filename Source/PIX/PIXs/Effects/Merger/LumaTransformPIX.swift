//
//  LumaTransformPIX.swift
//  PixelKit
//
//  Created by Hexagons on 2020-06-02.
//  Open Source - MIT License
//

import LiveValues
import RenderKit
import CoreGraphics

public class LumaTransformPIX: PIXMergerEffect, PIXAuto {
    
    override open var shaderName: String { return "effectMergerLumaTransformPIX" }
    
    // MARK: - Public Properties
    
    public var position: LivePoint = .zero
    public var rotation: LiveFloat = LiveFloat(0.0, min: -0.5, max: 0.5)
    public var scale: LiveFloat = LiveFloat(1.0, max: 2.0)
    public var size: LiveSize = LiveSize(w: 1.0, h: 1.0)
    
    // MARK: - Property Helpers
    
    override public var liveValues: [LiveValue] {
        return [position, rotation, scale, size]
    }
    
    // MARK: - Life Cycle
    
    public required init() {
        super.init(name: "Luma Transform", typeName: "pix-effect-merger-luma-transform")
    }
    
}
