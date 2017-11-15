/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  To be able to use struct PostProcessSettings. // Each property consists of a bool to enable it (by default off),
  // the variable declaration and further down the default value for it.
  // The comment should include the meaning and usable range.
**/
@:glueCppIncludes("Classes/Engine/Scene.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPostProcessSettings {
  
  /**
    for backwards compatibility
  **/
  @:deprecated @:uproperty public var Blendables_DEPRECATED : unreal.TArray<unreal.UObject>;
  
  /**
    Allows custom post process materials to be defined, using a MaterialInstance with the same Material as its parent to allow blending.
    For materials this needs to be the "PostProcess" domain type. This can be used for any UObject object implementing the IBlendableInterface (e.g. could be used to fade weather settings).
  **/
  @:uproperty public var WeightedBlendables : unreal.FWeightedBlendables;
  
  /**
    To render with lower or high resolution than it is presented,
    controlled by console variable,
    100:off, needs to be <99 to get upsampling and lower to get performance,
    >100 for super sampling (slower but higher quality),
    only applied in game
  **/
  @:uproperty public var ScreenPercentage : unreal.Float32;
  
  /**
    LPV Directional Occlusion Fade range - increase to fade more gradually towards the LPV edges.
  **/
  @:uproperty public var LPVDirectionalOcclusionFadeRange : unreal.Float32;
  
  /**
    LPV Fade range - increase to fade more gradually towards the LPV edges.
  **/
  @:uproperty public var LPVFadeRange : unreal.Float32;
  
  /**
    Until what roughness we fade the screen space reflections, 0.8 works well, smaller can run faster
  **/
  @:uproperty public var ScreenSpaceReflectionMaxRoughness : unreal.Float32;
  
  /**
    0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition, 50 is the default for better performance.
  **/
  @:uproperty public var ScreenSpaceReflectionQuality : unreal.Float32;
  
  /**
    Enable/Fade/disable the Screen Space Reflection feature, in percent, avoid numbers between 0 and 1 fo consistency
  **/
  @:uproperty public var ScreenSpaceReflectionIntensity : unreal.Float32;
  
  /**
    Specular occlusion intensity - higher values provide increased specular occlusion.
  **/
  @:uproperty public var LPVSpecularOcclusionIntensity : unreal.Float32;
  
  /**
    Diffuse occlusion intensity - higher values provide increased diffuse occlusion.
  **/
  @:uproperty public var LPVDiffuseOcclusionIntensity : unreal.Float32;
  
  /**
    Specular occlusion exponent - increase for more contrast. 6 to 9 is recommended
  **/
  @:uproperty public var LPVSpecularOcclusionExponent : unreal.Float32;
  
  /**
    Diffuse occlusion exponent - increase for more contrast. 1 to 2 is recommended
  **/
  @:uproperty public var LPVDiffuseOcclusionExponent : unreal.Float32;
  
  /**
    Occlusion Radius - 16 is recommended for most scenes
  **/
  @:uproperty public var LPVDirectionalOcclusionRadius : unreal.Float32;
  
  /**
    Controls the amount of directional occlusion. Requires LPV. Values very close to 1.0 are recommended
  **/
  @:uproperty public var LPVDirectionalOcclusionIntensity : unreal.Float32;
  @:uproperty public var LPVEmissiveInjectionIntensity : unreal.Float32;
  
  /**
    Bias applied to the geometry volume in cell units. Increase to reduce darkening due to secondary occlusion
  **/
  @:uproperty public var LPVGeometryVolumeBias : unreal.Float32;
  
  /**
    Secondary bounce light strength (bounce light shadows). Set to 0 to disable
  **/
  @:uproperty public var LPVSecondaryBounceIntensity : unreal.Float32;
  
  /**
    Secondary occlusion strength (bounce light shadows). Set to 0 to disable
  **/
  @:uproperty public var LPVSecondaryOcclusionIntensity : unreal.Float32;
  
  /**
    The size of the LPV volume, in Unreal units
  **/
  @:uproperty public var LPVSize : unreal.Float32;
  
  /**
    Bias applied to light injected into the LPV in cell units. Increase to reduce bleeding through thin walls
  **/
  @:uproperty public var LPVVplInjectionBias : unreal.Float32;
  
  /**
    How strong the dynamic GI from the LPV should be. 0.0 is off, 1.0 is the "normal" value, but higher values can be used to boost the effect
  **/
  @:uproperty public var LPVIntensity : unreal.Float32;
  
  /**
    The minimum projected screen radius for a primitive to be drawn in the velocity pass, percentage of screen width. smaller numbers cause more draw calls, default: 4%
  **/
  @:uproperty public var MotionBlurPerObjectSize : unreal.Float32;
  
  /**
    max distortion caused by motion blur, in percent of the screen width, 0:off
  **/
  @:uproperty public var MotionBlurMax : unreal.Float32;
  
  /**
    Strength of motion blur, 0:off, should be renamed to intensity
  **/
  @:uproperty public var MotionBlurAmount : unreal.Float32;
  
  /**
    Artificial circular mask to (near) blur content outside the radius, only for GaussianDOF, diameter in percent of screen width, costs performance if the mask is used, keep Feather can Radius on default to keep it off
  **/
  @:uproperty public var DepthOfFieldVignetteSize : unreal.Float32;
  
  /**
    Artificial distance to allow the skybox to be in focus (e.g. 200000), <=0 to switch the feature off, only for GaussianDOF, can cost performance
  **/
  @:uproperty public var DepthOfFieldSkyFocusDistance : unreal.Float32;
  
  /**
    Size threshold to do full quality DOF (BokehDOF only)
  **/
  @:uproperty public var DepthOfFieldSizeThreshold : unreal.Float32;
  
  /**
    Color threshold to do full quality DOF (BokehDOF only)
  **/
  @:uproperty public var DepthOfFieldColorThreshold : unreal.Float32;
  
  /**
    Occlusion tweak factor 1 (0.18 to get natural occlusion, 0.4 to solve layer color leaking issues)
  **/
  @:uproperty public var DepthOfFieldOcclusion : unreal.Float32;
  
  /**
    Defines the shape of the Bokeh when object get out of focus, cannot be blended
  **/
  @:uproperty public var DepthOfFieldBokehShape : unreal.UTexture;
  
  /**
    Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)
  **/
  @:uproperty public var DepthOfFieldFarBlurSize : unreal.Float32;
  
  /**
    Gaussian only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size)
  **/
  @:uproperty public var DepthOfFieldNearBlurSize : unreal.Float32;
  
  /**
    BokehDOF only: Maximum size of the Depth of Field blur (in percent of the view width) (note: performance cost scales with size*size)
  **/
  @:uproperty public var DepthOfFieldMaxBokehSize : unreal.Float32;
  
  /**
    SM5: BokehDOF only: To amplify the depth of field effect (like aperture)  0=off
              ES2: Used to blend DoF. 0=off
  **/
  @:uproperty public var DepthOfFieldScale : unreal.Float32;
  
  /**
    To define the width of the transition region next to the focal region on the near side (cm)
  **/
  @:uproperty public var DepthOfFieldFarTransitionRegion : unreal.Float32;
  
  /**
    To define the width of the transition region next to the focal region on the near side (cm)
  **/
  @:uproperty public var DepthOfFieldNearTransitionRegion : unreal.Float32;
  
  /**
    Artificial region where all content is in focus, starting after DepthOfFieldFocalDistance, in unreal units  (cm)
  **/
  @:uproperty public var DepthOfFieldFocalRegion : unreal.Float32;
  
  /**
    CircleDOF only: Depth blur radius in pixels at 1920x
  **/
  @:uproperty public var DepthOfFieldDepthBlurRadius : unreal.Float32;
  
  /**
    CircleDOF only: Depth blur km for 50%
  **/
  @:uproperty public var DepthOfFieldDepthBlurAmount : unreal.Float32;
  
  /**
    Distance in which the Depth of Field effect should be sharp, in unreal units (cm)
  **/
  @:uproperty public var DepthOfFieldFocalDistance : unreal.Float32;
  
  /**
    Width of the camera sensor to assume, in mm.
  **/
  @:uproperty public var DepthOfFieldSensorWidth : unreal.Float32;
  
  /**
    CircleDOF only: Defines the opening of the camera lens, Aperture is 1/fstop, typical lens go down to f/1.2 (large opening), larger numbers reduce the DOF effect
  **/
  @:uproperty public var DepthOfFieldFstop : unreal.Float32;
  
  /**
    Enable HQ Gaussian on high end mobile platforms. (ES3_1)
  **/
  @:uproperty public var bMobileHQGaussian : Bool;
  
  /**
    BokehDOF, Simple gaussian, ... Mobile supports Gaussian only.
  **/
  @:uproperty public var DepthOfFieldMethod : unreal.EDepthOfFieldMethod;
  
  /**
    Look up table texture to use or none of not used
  **/
  @:uproperty public var ColorGradingLUT : unreal.UTexture;
  
  /**
    Color grading lookup table intensity. 0 = no intensity, 1=full intensity
  **/
  @:uproperty public var ColorGradingIntensity : unreal.Float32;
  
  /**
    Scales the indirect lighting contribution. A value of 0 disables GI. Default is 1. The show flag 'Global Illumination' must be enabled to use this property.
  **/
  @:uproperty public var IndirectLightingIntensity : unreal.Float32;
  
  /**
    Adjusts indirect lighting color. (1,1,1) is default. (0,0,0) to disable GI. The show flag 'Global Illumination' must be enabled to use this property.
  **/
  @:uproperty public var IndirectLightingColor : unreal.FLinearColor;
  
  /**
    to tweak the bilateral upsampling when using multiple mips (lower resolution versions)
  **/
  @:uproperty public var AmbientOcclusionMipThreshold : unreal.Float32;
  
  /**
    Affects the radius AO radius scale over the multiple mips (lower resolution versions)
  **/
  @:uproperty public var AmbientOcclusionMipScale : unreal.Float32;
  
  /**
    Affects the blend over the multiple mips (lower resolution versions) , 0:fully use full resolution, 1::fully use low resolution, around 0.6 seems to be a good value
  **/
  @:uproperty public var AmbientOcclusionMipBlend : unreal.Float32;
  
  /**
    0=lowest quality..100=maximum quality, only a few quality levels are implemented, no soft transition
  **/
  @:uproperty public var AmbientOcclusionQuality : unreal.Float32;
  
  /**
    >0, in unreal units, default (3.0) works well for flat surfaces but can reduce details
  **/
  @:uproperty public var AmbientOcclusionBias : unreal.Float32;
  
  /**
    >0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion
  **/
  @:uproperty public var AmbientOcclusionPower : unreal.Float32;
  
  /**
    >0, in unreal units, how wide the ambient occlusion effect should affect the geometry (in depth), will be removed - only used for non normal method which is not exposed
  **/
  @:deprecated @:uproperty public var AmbientOcclusionDistance_DEPRECATED : unreal.Float32;
  
  /**
    >0, in unreal units, how many units before AmbientOcclusionFadeOutDistance it starts fading out
  **/
  @:uproperty public var AmbientOcclusionFadeRadius : unreal.Float32;
  
  /**
    >0, in unreal units, at what distance the AO effect disppears in the distance (avoding artifacts and AO effects on huge object)
  **/
  @:uproperty public var AmbientOcclusionFadeDistance : unreal.Float32;
  
  /**
    true: AO radius is in world space units, false: AO radius is locked the view space in 400 units
  **/
  @:uproperty public var AmbientOcclusionRadiusInWS : Bool;
  
  /**
    >0, in unreal units, bigger values means even distant surfaces affect the ambient occlusion
  **/
  @:uproperty public var AmbientOcclusionRadius : unreal.Float32;
  
  /**
    0..1 0=no effect on static lighting .. 1=AO affects the stat lighting, 0 is free meaning no extra rendering pass
  **/
  @:uproperty public var AmbientOcclusionStaticFraction : unreal.Float32;
  
  /**
    0..1 0=off/no ambient occlusion .. 1=strong ambient occlusion, defines how much it affects the non direct lighting after base pass
  **/
  @:uproperty public var AmbientOcclusionIntensity : unreal.Float32;
  
  /**
    0..1 grain intensity
  **/
  @:uproperty public var GrainIntensity : unreal.Float32;
  
  /**
    0..1 grain jitter
  **/
  @:uproperty public var GrainJitter : unreal.Float32;
  
  /**
    0..1 0=off/no vignette .. 1=strong vignette
  **/
  @:uproperty public var VignetteIntensity : unreal.Float32;
  
  /**
    Defines the shape of the Bokeh when the image base lens flares are blurred, cannot be blended
  **/
  @:uproperty public var LensFlareBokehShape : unreal.UTexture;
  
  /**
    Minimum brightness the lens flare starts having effect (this should be as high as possible to avoid the performance cost of blurring content that is too dark too see)
  **/
  @:uproperty public var LensFlareThreshold : unreal.Float32;
  
  /**
    Size of the Lens Blur (in percent of the view width) that is done with the Bokeh texture (note: performance cost is radius*radius)
  **/
  @:uproperty public var LensFlareBokehSize : unreal.Float32;
  
  /**
    Tint color for the image based lens flares.
  **/
  @:uproperty public var LensFlareTint : unreal.FLinearColor;
  
  /**
    Brightness scale of the image cased lens flares (linear)
  **/
  @:uproperty public var LensFlareIntensity : unreal.Float32;
  
  /**
    temporary exposed until we found good values 4: 16, 8: 256
  **/
  @:uproperty public var HistogramLogMax : unreal.Float32;
  
  /**
    temporary exposed until we found good values, -8: 1/256, -10: 1/1024
  **/
  @:uproperty public var HistogramLogMin : unreal.Float32;
  
  /**
    Logarithmic adjustment for the exposure. Only used if a tonemapper is specified.
    0: no adjustment, -1:2x darker, -2:4x darker, 1:2x brighter, 2:4x brighter, ...
  **/
  @:uproperty public var AutoExposureBias : unreal.Float32;
  
  /**
    >0
  **/
  @:uproperty public var AutoExposureSpeedDown : unreal.Float32;
  
  /**
    >0
  **/
  @:uproperty public var AutoExposureSpeedUp : unreal.Float32;
  
  /**
    A good value should be positive (2 is a good value). This is the maximum brightness the auto exposure can adapt to.
    It should be tweaked in a bright lighting situation (too small: image appears too bright, too large: image appears too dark).
    Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global
    effect and defined the HDR range - you don't want to change that late in the project development.
    Eye Adaptation is disabled if MinBrightness = MaxBrightness
  **/
  @:uproperty public var AutoExposureMaxBrightness : unreal.Float32;
  
  /**
    A good value should be positive near 0. This is the minimum brightness the auto exposure can adapt to.
    It should be tweaked in a dark lighting situation (too small: image appears too bright, too large: image appears too dark).
    Note: Tweaking emissive materials and lights or tweaking auto exposure can look the same. Tweaking auto exposure has global
    effect and defined the HDR range - you don't want to change that late in the project development.
    Eye Adaptation is disabled if MinBrightness = MaxBrightness
  **/
  @:uproperty public var AutoExposureMinBrightness : unreal.Float32;
  
  /**
    The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
    The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
    but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
    bright spots.
    >0, <100, good values are in the range 80 .. 95
  **/
  @:uproperty public var AutoExposureHighPercent : unreal.Float32;
  
  /**
    The eye adaptation will adapt to a value extracted from the luminance histogram of the scene color.
    The value is defined as having x percent below this brightness. Higher values give bright spots on the screen more priority
    but can lead to less stable results. Lower values give the medium and darker values more priority but might cause burn out of
    bright spots.
    >0, <100, good values are in the range 70 .. 80
  **/
  @:uproperty public var AutoExposureLowPercent : unreal.Float32;
  
  /**
    Luminance computation method
  **/
  @:uproperty public var AutoExposureMethod : unreal.EAutoExposureMethod;
  
  /**
    The Ambient cubemap (Affects diffuse and specular shading), blends additively which if different from all other settings here
  **/
  @:uproperty public var AmbientCubemap : unreal.UTextureCube;
  
  /**
    To scale the Ambient cubemap brightness
    >=0: off, 1(default), >1 brighter
  **/
  @:uproperty public var AmbientCubemapIntensity : unreal.Float32;
  
  /**
    AmbientCubemap tint color
  **/
  @:uproperty public var AmbientCubemapTint : unreal.FLinearColor;
  
  /**
    BloomDirtMask tint color
  **/
  @:uproperty public var BloomDirtMaskTint : unreal.FLinearColor;
  
  /**
    BloomDirtMask intensity
  **/
  @:uproperty public var BloomDirtMaskIntensity : unreal.Float32;
  
  /**
    Texture that defines the dirt on the camera lens where the light of very bright objects is scattered.
  **/
  @:uproperty public var BloomDirtMask : unreal.UTexture;
  
  /**
    Implicit buffer region as a fraction of the screen size to insure the bloom does not wrap across the screen.  Larger sizes have perf impact.
  **/
  @:uproperty public var BloomConvolutionBufferScale : unreal.Float32;
  
  /**
    Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables
  **/
  @:uproperty public var BloomConvolutionPreFilterMult : unreal.Float32;
  
  /**
    Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables
  **/
  @:uproperty public var BloomConvolutionPreFilterMax : unreal.Float32;
  
  /**
    Boost intensity of select pixels  prior to computing bloom convolution (Min, Max, Multiplier).  Max < Min disables
  **/
  @:uproperty public var BloomConvolutionPreFilterMin : unreal.Float32;
  @:deprecated @:uproperty public var BloomConvolutionPreFilter_DEPRECATED : unreal.FVector;
  
  /**
    The UV location of the center of the kernel.  Should be very close to (.5,.5)
  **/
  @:uproperty public var BloomConvolutionCenterUV : unreal.FVector2D;
  
  /**
    Relative size of the convolution kernel image compared to the minor axis of the viewport
  **/
  @:uproperty public var BloomConvolutionSize : unreal.Float32;
  
  /**
    Texture to replace default convolution bloom kernel
  **/
  @:uproperty public var BloomConvolutionTexture : unreal.UTexture2D;
  
  /**
    Bloom6 tint color
  **/
  @:uproperty public var Bloom6Tint : unreal.FLinearColor;
  
  /**
    Bloom5 tint color
  **/
  @:uproperty public var Bloom5Tint : unreal.FLinearColor;
  
  /**
    Bloom4 tint color
  **/
  @:uproperty public var Bloom4Tint : unreal.FLinearColor;
  
  /**
    Bloom3 tint color
  **/
  @:uproperty public var Bloom3Tint : unreal.FLinearColor;
  
  /**
    Bloom2 tint color
  **/
  @:uproperty public var Bloom2Tint : unreal.FLinearColor;
  
  /**
    Bloom1 tint color
  **/
  @:uproperty public var Bloom1Tint : unreal.FLinearColor;
  
  /**
    Diameter size for Bloom6 in percent of the screen width
    (is done in 1/64 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom6Size : unreal.Float32;
  
  /**
    Diameter size for Bloom5 in percent of the screen width
    (is done in 1/32 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom5Size : unreal.Float32;
  
  /**
    Diameter size for Bloom4 in percent of the screen width
    (is done in 1/16 resolution, larger values cost more performance, best for wide contributions)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom4Size : unreal.Float32;
  
  /**
    Diameter size for Bloom3 in percent of the screen width
    (is done in 1/8 resolution, larger values cost more performance)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom3Size : unreal.Float32;
  
  /**
    Diameter size for Bloom2 in percent of the screen width
    (is done in 1/4 resolution, larger values cost more performance)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom2Size : unreal.Float32;
  
  /**
    Diameter size for the Bloom1 in percent of the screen width
    (is done in 1/2 resolution, larger values cost more performance, good for high frequency details)
    >=0: can be clamped because of shader limitations
  **/
  @:uproperty public var Bloom1Size : unreal.Float32;
  
  /**
    Scale for all bloom sizes
  **/
  @:uproperty public var BloomSizeScale : unreal.Float32;
  
  /**
    minimum brightness the bloom starts having effect
    -1:all pixels affect bloom equally (physically correct, faster as a threshold pass is omitted), 0:all pixels affect bloom brights more, 1(default), >1 brighter
  **/
  @:uproperty public var BloomThreshold : unreal.Float32;
  
  /**
    Multiplier for all bloom contributions >=0: off, 1(default), >1 brighter
  **/
  @:uproperty public var BloomIntensity : unreal.Float32;
  
  /**
    Bloom algorithm
  **/
  @:uproperty public var BloomMethod : unreal.EBloomMethod;
  
  /**
    in percent, Scene chromatic aberration / color fringe (camera imperfection) to simulate an artifact that happens in real-world lens, mostly visible in the image corners.
  **/
  @:uproperty public var SceneFringeIntensity : unreal.Float32;
  
  /**
    Scene tint color
  **/
  @:uproperty public var SceneColorTint : unreal.FLinearColor;
  @:uproperty public var FilmDynamicRange : unreal.Float32;
  @:uproperty public var FilmHealAmount : unreal.Float32;
  @:uproperty public var FilmToeAmount : unreal.Float32;
  @:uproperty public var FilmContrast : unreal.Float32;
  @:uproperty public var FilmChannelMixerBlue : unreal.FLinearColor;
  @:uproperty public var FilmChannelMixerGreen : unreal.FLinearColor;
  @:uproperty public var FilmChannelMixerRed : unreal.FLinearColor;
  @:uproperty public var FilmSaturation : unreal.Float32;
  @:uproperty public var FilmShadowTintAmount : unreal.Float32;
  @:uproperty public var FilmShadowTintBlend : unreal.Float32;
  @:uproperty public var FilmShadowTint : unreal.FLinearColor;
  @:uproperty public var FilmWhitePoint : unreal.FLinearColor;
  @:uproperty public var FilmWhiteClip : unreal.Float32;
  @:uproperty public var FilmBlackClip : unreal.Float32;
  @:uproperty public var FilmShoulder : unreal.Float32;
  @:uproperty public var FilmToe : unreal.Float32;
  @:uproperty public var FilmSlope : unreal.Float32;
  @:uproperty public var ColorCorrectionHighlightsMin : unreal.Float32;
  @:uproperty public var ColorOffsetHighlights : unreal.FVector4;
  @:uproperty public var ColorGainHighlights : unreal.FVector4;
  @:uproperty public var ColorGammaHighlights : unreal.FVector4;
  @:uproperty public var ColorContrastHighlights : unreal.FVector4;
  @:uproperty public var ColorSaturationHighlights : unreal.FVector4;
  @:uproperty public var ColorOffsetMidtones : unreal.FVector4;
  @:uproperty public var ColorGainMidtones : unreal.FVector4;
  @:uproperty public var ColorGammaMidtones : unreal.FVector4;
  @:uproperty public var ColorContrastMidtones : unreal.FVector4;
  @:uproperty public var ColorSaturationMidtones : unreal.FVector4;
  @:uproperty public var ColorCorrectionShadowsMax : unreal.Float32;
  @:uproperty public var ColorOffsetShadows : unreal.FVector4;
  @:uproperty public var ColorGainShadows : unreal.FVector4;
  @:uproperty public var ColorGammaShadows : unreal.FVector4;
  @:uproperty public var ColorContrastShadows : unreal.FVector4;
  @:uproperty public var ColorSaturationShadows : unreal.FVector4;
  @:uproperty public var ColorOffset : unreal.FVector4;
  @:uproperty public var ColorGain : unreal.FVector4;
  @:uproperty public var ColorGamma : unreal.FVector4;
  @:uproperty public var ColorContrast : unreal.FVector4;
  
  /**
    Color Correction controls
  **/
  @:uproperty public var ColorSaturation : unreal.FVector4;
  @:uproperty public var WhiteTint : unreal.Float32;
  @:uproperty public var WhiteTemp : unreal.Float32;
  @:uproperty public var bOverride_ScreenSpaceReflectionRoughnessScale : Bool;
  @:uproperty public var bOverride_ScreenSpaceReflectionMaxRoughness : Bool;
  @:uproperty public var bOverride_ScreenSpaceReflectionQuality : Bool;
  @:uproperty public var bOverride_ScreenSpaceReflectionIntensity : Bool;
  @:uproperty public var bOverride_ScreenPercentage : Bool;
  @:uproperty public var bOverride_MotionBlurPerObjectSize : Bool;
  @:uproperty public var bOverride_MotionBlurMax : Bool;
  @:uproperty public var bOverride_MotionBlurAmount : Bool;
  @:uproperty public var bOverride_DepthOfFieldVignetteSize : Bool;
  @:uproperty public var bOverride_DepthOfFieldSkyFocusDistance : Bool;
  @:uproperty public var bOverride_DepthOfFieldSizeThreshold : Bool;
  @:uproperty public var bOverride_DepthOfFieldColorThreshold : Bool;
  @:uproperty public var bOverride_DepthOfFieldOcclusion : Bool;
  @:uproperty public var bOverride_DepthOfFieldBokehShape : Bool;
  @:uproperty public var bOverride_MobileHQGaussian : Bool;
  @:uproperty public var bOverride_DepthOfFieldMethod : Bool;
  @:uproperty public var bOverride_DepthOfFieldFarBlurSize : Bool;
  @:uproperty public var bOverride_DepthOfFieldNearBlurSize : Bool;
  @:uproperty public var bOverride_DepthOfFieldMaxBokehSize : Bool;
  @:uproperty public var bOverride_DepthOfFieldScale : Bool;
  @:uproperty public var bOverride_DepthOfFieldFarTransitionRegion : Bool;
  @:uproperty public var bOverride_DepthOfFieldNearTransitionRegion : Bool;
  @:uproperty public var bOverride_DepthOfFieldFocalRegion : Bool;
  @:uproperty public var bOverride_DepthOfFieldDepthBlurAmount : Bool;
  @:uproperty public var bOverride_DepthOfFieldDepthBlurRadius : Bool;
  @:uproperty public var bOverride_DepthOfFieldSensorWidth : Bool;
  @:uproperty public var bOverride_DepthOfFieldFstop : Bool;
  @:uproperty public var bOverride_DepthOfFieldFocalDistance : Bool;
  @:uproperty public var bOverride_ColorGradingLUT : Bool;
  @:uproperty public var bOverride_ColorGradingIntensity : Bool;
  @:uproperty public var bOverride_IndirectLightingIntensity : Bool;
  @:uproperty public var bOverride_IndirectLightingColor : Bool;
  @:uproperty public var bOverride_LPVDirectionalOcclusionFadeRange : Bool;
  @:uproperty public var bOverride_LPVFadeRange : Bool;
  @:uproperty public var bOverride_LPVEmissiveInjectionIntensity : Bool;
  @:uproperty public var bOverride_LPVVplInjectionBias : Bool;
  @:uproperty public var bOverride_LPVGeometryVolumeBias : Bool;
  @:uproperty public var bOverride_LPVSecondaryBounceIntensity : Bool;
  @:uproperty public var bOverride_LPVSecondaryOcclusionIntensity : Bool;
  @:uproperty public var bOverride_LPVSize : Bool;
  @:uproperty public var bOverride_LPVSpecularOcclusionIntensity : Bool;
  @:uproperty public var bOverride_LPVDiffuseOcclusionIntensity : Bool;
  @:uproperty public var bOverride_LPVSpecularOcclusionExponent : Bool;
  @:uproperty public var bOverride_LPVDiffuseOcclusionExponent : Bool;
  @:uproperty public var bOverride_LPVDirectionalOcclusionRadius : Bool;
  @:uproperty public var bOverride_LPVDirectionalOcclusionIntensity : Bool;
  @:uproperty public var bOverride_LPVIntensity : Bool;
  @:uproperty public var bOverride_AmbientOcclusionMipThreshold : Bool;
  @:uproperty public var bOverride_AmbientOcclusionMipScale : Bool;
  @:uproperty public var bOverride_AmbientOcclusionMipBlend : Bool;
  @:uproperty public var bOverride_AmbientOcclusionQuality : Bool;
  @:uproperty public var bOverride_AmbientOcclusionBias : Bool;
  @:uproperty public var bOverride_AmbientOcclusionPower : Bool;
  @:uproperty public var bOverride_AmbientOcclusionRadiusInWS : Bool;
  @:deprecated @:uproperty public var bOverride_AmbientOcclusionDistance_DEPRECATED : Bool;
  @:uproperty public var bOverride_AmbientOcclusionFadeRadius : Bool;
  @:uproperty public var bOverride_AmbientOcclusionFadeDistance : Bool;
  @:uproperty public var bOverride_AmbientOcclusionRadius : Bool;
  @:uproperty public var bOverride_AmbientOcclusionStaticFraction : Bool;
  @:uproperty public var bOverride_AmbientOcclusionIntensity : Bool;
  @:uproperty public var bOverride_GrainJitter : Bool;
  @:uproperty public var bOverride_GrainIntensity : Bool;
  @:uproperty public var bOverride_VignetteIntensity : Bool;
  @:uproperty public var bOverride_LensFlareThreshold : Bool;
  @:uproperty public var bOverride_LensFlareBokehShape : Bool;
  @:uproperty public var bOverride_LensFlareBokehSize : Bool;
  @:uproperty public var bOverride_LensFlareTints : Bool;
  @:uproperty public var bOverride_LensFlareTint : Bool;
  @:uproperty public var bOverride_LensFlareIntensity : Bool;
  @:uproperty public var bOverride_HistogramLogMax : Bool;
  @:uproperty public var bOverride_HistogramLogMin : Bool;
  @:uproperty public var bOverride_AutoExposureBias : Bool;
  @:uproperty public var bOverride_AutoExposureSpeedDown : Bool;
  @:uproperty public var bOverride_AutoExposureSpeedUp : Bool;
  @:uproperty public var bOverride_AutoExposureMaxBrightness : Bool;
  @:uproperty public var bOverride_AutoExposureMinBrightness : Bool;
  @:uproperty public var bOverride_AutoExposureHighPercent : Bool;
  @:uproperty public var bOverride_AutoExposureLowPercent : Bool;
  @:uproperty public var bOverride_AutoExposureMethod : Bool;
  @:uproperty public var bOverride_BloomDirtMask : Bool;
  @:uproperty public var bOverride_BloomDirtMaskTint : Bool;
  @:uproperty public var bOverride_BloomDirtMaskIntensity : Bool;
  @:uproperty public var bOverride_BloomConvolutionBufferScale : Bool;
  @:uproperty public var bOverride_BloomConvolutionPreFilterMult : Bool;
  @:uproperty public var bOverride_BloomConvolutionPreFilterMax : Bool;
  @:uproperty public var bOverride_BloomConvolutionPreFilterMin : Bool;
  @:deprecated @:uproperty public var bOverride_BloomConvolutionPreFilter_DEPRECATED : Bool;
  @:uproperty public var bOverride_BloomConvolutionCenterUV : Bool;
  @:uproperty public var bOverride_BloomConvolutionSize : Bool;
  @:uproperty public var bOverride_BloomConvolutionTexture : Bool;
  @:uproperty public var bOverride_BloomSizeScale : Bool;
  @:uproperty public var bOverride_Bloom6Size : Bool;
  @:uproperty public var bOverride_Bloom6Tint : Bool;
  @:uproperty public var bOverride_Bloom5Size : Bool;
  @:uproperty public var bOverride_Bloom5Tint : Bool;
  @:uproperty public var bOverride_Bloom4Size : Bool;
  @:uproperty public var bOverride_Bloom4Tint : Bool;
  @:uproperty public var bOverride_Bloom3Size : Bool;
  @:uproperty public var bOverride_Bloom3Tint : Bool;
  @:uproperty public var bOverride_Bloom2Tint : Bool;
  @:uproperty public var bOverride_Bloom2Size : Bool;
  @:uproperty public var bOverride_Bloom1Size : Bool;
  @:uproperty public var bOverride_Bloom1Tint : Bool;
  @:uproperty public var bOverride_BloomThreshold : Bool;
  @:uproperty public var bOverride_BloomIntensity : Bool;
  @:uproperty public var bOverride_BloomMethod : Bool;
  @:uproperty public var bOverride_AmbientCubemapIntensity : Bool;
  @:uproperty public var bOverride_AmbientCubemapTint : Bool;
  @:uproperty public var bOverride_SceneFringeIntensity : Bool;
  @:uproperty public var bOverride_SceneColorTint : Bool;
  @:uproperty public var bOverride_FilmWhiteClip : Bool;
  @:uproperty public var bOverride_FilmBlackClip : Bool;
  @:uproperty public var bOverride_FilmShoulder : Bool;
  @:uproperty public var bOverride_FilmToe : Bool;
  @:uproperty public var bOverride_FilmSlope : Bool;
  @:uproperty public var bOverride_FilmShadowTintAmount : Bool;
  @:uproperty public var bOverride_FilmShadowTintBlend : Bool;
  @:uproperty public var bOverride_FilmShadowTint : Bool;
  @:uproperty public var bOverride_FilmToeAmount : Bool;
  @:uproperty public var bOverride_FilmHealAmount : Bool;
  @:uproperty public var bOverride_FilmDynamicRange : Bool;
  @:uproperty public var bOverride_FilmContrast : Bool;
  @:uproperty public var bOverride_FilmChannelMixerBlue : Bool;
  @:uproperty public var bOverride_FilmChannelMixerGreen : Bool;
  @:uproperty public var bOverride_FilmChannelMixerRed : Bool;
  @:uproperty public var bOverride_FilmSaturation : Bool;
  @:uproperty public var bOverride_FilmWhitePoint : Bool;
  @:uproperty public var bOverride_ColorCorrectionHighlightsMin : Bool;
  @:uproperty public var bOverride_ColorCorrectionShadowsMax : Bool;
  @:uproperty public var bOverride_ColorOffsetHighlights : Bool;
  @:uproperty public var bOverride_ColorGainHighlights : Bool;
  @:uproperty public var bOverride_ColorGammaHighlights : Bool;
  @:uproperty public var bOverride_ColorContrastHighlights : Bool;
  @:uproperty public var bOverride_ColorSaturationHighlights : Bool;
  @:uproperty public var bOverride_ColorOffsetMidtones : Bool;
  @:uproperty public var bOverride_ColorGainMidtones : Bool;
  @:uproperty public var bOverride_ColorGammaMidtones : Bool;
  @:uproperty public var bOverride_ColorContrastMidtones : Bool;
  @:uproperty public var bOverride_ColorSaturationMidtones : Bool;
  @:uproperty public var bOverride_ColorOffsetShadows : Bool;
  @:uproperty public var bOverride_ColorGainShadows : Bool;
  @:uproperty public var bOverride_ColorGammaShadows : Bool;
  @:uproperty public var bOverride_ColorContrastShadows : Bool;
  @:uproperty public var bOverride_ColorSaturationShadows : Bool;
  @:uproperty public var bOverride_ColorOffset : Bool;
  @:uproperty public var bOverride_ColorGain : Bool;
  @:uproperty public var bOverride_ColorGamma : Bool;
  @:uproperty public var bOverride_ColorContrast : Bool;
  
  /**
    Color Correction controls
  **/
  @:uproperty public var bOverride_ColorSaturation : Bool;
  @:uproperty public var bOverride_WhiteTint : Bool;
  
  /**
    first all bOverride_... as they get grouped together into bitfields
  **/
  @:uproperty public var bOverride_WhiteTemp : Bool;
  
}
