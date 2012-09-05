.class Lcom/sec/android/app/twlauncher/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Grid;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Surface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final TRACK_TEXTURE_UPLOADS:Z


# instance fields
.field private mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

.field private mHeight:I

.field private mIdentityMatrix:[F

.field private mIsTouchTrackingEnabled:Z

.field private mNativeSelf:I

.field private mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

.field mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mScratchMatrix:[F

.field private mTransRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field mTransformPointResult:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "glcanvas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeClassInit()V

    .line 44
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeClassInit()V

    .line 1348
    const-string v0, "GLCanvas"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V
    .registers 10
    .parameter "retained"
    .parameter "pq"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    .line 1045
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    .line 1047
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    .line 1344
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    .line 1346
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 51
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    .line 52
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    .line 53
    iput p3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    .line 54
    iput p4, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 56
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mNativeSelf:I
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->access$000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)I

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeInit(III)V

    .line 60
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncPremultipliedAlpha()V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mDefaultProgram:Lcom/sec/android/app/twlauncher/ShaderProgram;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$200(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->clearClip()V

    .line 67
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    return-object v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 35
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->createRenderCache()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->destroyRenderCache(I)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .registers 5
    .parameter "op"

    .prologue
    .line 1356
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_3f

    .line 1357
    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1360
    :cond_3f
    return-void
.end method

.method static clamp(FFF)F
    .registers 4
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 589
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static native createRenderCache()I
.end method

.method private static native destroyRenderCache(I)V
.end method

.method private native isStackSizeOne()Z
.end method

.method static mix(FFF)F
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 577
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInit(III)V
.end method

.method private native nativeRestore()Z
.end method

.method private native nativeSetClip(IIII)V
.end method

.method private native nativeSetClipIntersection(IIII)V
.end method

.method private native setGeometry(IIII)V
.end method

.method private native setShaderSurface(Ljava/lang/String;I)V
.end method

.method private transformPoint(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "r"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v4

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v5

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint([F)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 362
    return-void
.end method

.method private native transformPoint([F)V
.end method


# virtual methods
.method public accumulateAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    const/high16 v0, 0x3f80

    .line 542
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 543
    return-void
.end method

.method public accumulateClipRegion(Landroid/view/View;Z)V
    .registers 15
    .parameter "v"
    .parameter "clipToPadding"

    .prologue
    .line 125
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    .local v6, viewRect:Landroid/graphics/RectF;
    if-eqz p2, :cond_47

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 130
    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 131
    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 133
    :cond_47
    invoke-static {p0, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 135
    .local v1, clipRect:Landroid/graphics/RectF;
    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 136
    .local v3, left:I
    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 137
    .local v4, right:I
    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 138
    .local v5, top:I
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 139
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v2

    .line 140
    .local v2, height:I
    if-gt v3, v4, :cond_72

    if-gt v5, v0, :cond_72

    .line 141
    sub-int v7, v2, v0

    sub-int v8, v2, v5

    invoke-direct {p0, v3, v7, v4, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClipIntersection(IIII)V

    .line 142
    :cond_72
    return-void
.end method

.method public accumulateColor(FFF)V
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 566
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 567
    return-void
.end method

.method public native accumulateColor(FFFF)V
.end method

.method public accumulateColor(I)V
    .registers 7
    .parameter "argb"

    .prologue
    const/high16 v4, 0x437f

    .line 559
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 563
    return-void
.end method

.method public addTransRef(IIIIIIII)V
    .registers 11
    .parameter "absLeft"
    .parameter "absTop"
    .parameter "absRight"
    .parameter "absBottom"
    .parameter "transLeft"
    .parameter "transTop"
    .parameter "transRight"
    .parameter "transBottom"

    .prologue
    .line 412
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_14

    .line 413
    invoke-static/range {p1 .. p8}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(IIIIIIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    .line 415
    .local v0, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v0           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_14
    return-void
.end method

.method public addTransRef(Landroid/view/View;IIII)V
    .registers 8
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 403
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_14

    .line 404
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(Landroid/view/View;IIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    .line 405
    .local v0, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v0           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_14
    return-void
.end method

.method public addTransRefChild(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 383
    .local v7, sx:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 384
    .local v8, sy:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 385
    .local v6, p:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v7, v0

    .line 386
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v8, v0

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v2, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int v3, v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v4, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v5, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    .line 388
    return-void
.end method

.method public addTransRefSelf(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 398
    .local v2, sx:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 399
    .local v3, sy:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v4, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    .line 400
    return-void
.end method

.method assertBalancedSaveRestore()V
    .registers 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->isStackSizeOne()Z

    move-result v0

    if-nez v0, :cond_d

    .line 186
    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: save() called more times than restore()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_d
    return-void
.end method

.method public clearClip()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v1, v1, v0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    .line 310
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FF)V
    .registers 10
    .parameter "b"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 202
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFFF)V
    .registers 12
    .parameter "b"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 205
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;

    invoke-direct {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 207
    return-void
.end method

.method public drawRect(FFFF)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 286
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 287
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V

    .line 291
    return-void
.end method

.method public drawSurface(IFFFF)V
    .registers 16
    .parameter "textureId"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    .line 228
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    .line 229
    return-void
.end method

.method public native drawSurface(IFFFFFFFF)V
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V
    .registers 10
    .parameter "s"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 236
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V
    .registers 16
    .parameter "s"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    .line 224
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 225
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V
    .registers 20
    .parameter "s"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "tl"
    .parameter "tt"
    .parameter "tr"
    .parameter "tb"

    .prologue
    .line 211
    if-nez p1, :cond_8

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mBlankSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p1

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 214
    iget v0, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_33

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    .line 221
    :goto_32
    return-void

    .line 218
    :cond_33
    iget v1, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    goto :goto_32
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "s"
    .parameter "r"

    .prologue
    .line 239
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 240
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .parameter "s"
    .parameter "r"
    .parameter "source"

    .prologue
    .line 243
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 245
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/RectF;)V
    .registers 9
    .parameter "s"
    .parameter "r"

    .prologue
    .line 248
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 249
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 156
    :try_start_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 159
    return-void

    .line 157
    :catchall_7
    move-exception v0

    throw v0
.end method

.method public native getAlpha()F
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    return v0
.end method

.method public native getMatrix([F)V
.end method

.method public native getProjectionMatrix([F)V
.end method

.method public getProjectionMatrix()[F
    .registers 3

    .prologue
    .line 445
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 446
    .local v0, m:[F
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    .line 447
    return-object v0
.end method

.method getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    return-object v0
.end method

.method public native getShaderUniform(Ljava/lang/String;[F)I
.end method

.method public getTransRef(Landroid/view/View;)Lcom/sec/android/app/twlauncher/TransRef;
    .registers 5
    .parameter "v"

    .prologue
    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 425
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/TransRef;

    .line 426
    .local v1, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/TransRef;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 430
    .end local v1           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :goto_17
    return-object v1

    .line 424
    .restart local v1       #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v1           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method getTransRefList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    return v0
.end method

.method public preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 269
    return-void
.end method

.method public preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 265
    return-void
.end method

.method public native premultiplyMatrix([F)V
.end method

.method public queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    invoke-interface {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 261
    return-void
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/TransRef;->releaseTransRef(Lcom/sec/android/app/twlauncher/TransRef;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 179
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V

    .line 180
    return-void
.end method

.method public restore()V
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeRestore()Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: restore() called once more than save()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_d
    return-void
.end method

.method public rotate(FFFF)V
    .registers 11
    .parameter "degrees"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 339
    return-void
.end method

.method public rotateX(F)V
    .registers 4
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 325
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 326
    return-void
.end method

.method public rotateY(F)V
    .registers 4
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 329
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 330
    return-void
.end method

.method public rotateZ(F)V
    .registers 4
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 333
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 334
    return-void
.end method

.method public native save()V
.end method

.method public scale(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 347
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    .line 348
    return-void
.end method

.method public scale(FFF)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 344
    return-void
.end method

.method public native setAlpha(F)V
.end method

.method public setBlendFunc(II)V
    .registers 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 478
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 479
    return-void
.end method

.method public native setBlendFunc(IIII)V
.end method

.method public setBlendFuncErase()V
    .registers 3

    .prologue
    const/16 v1, 0x303

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 493
    return-void
.end method

.method public setBlendFuncPremultipliedAlpha()V
    .registers 3

    .prologue
    .line 496
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(II)V

    .line 497
    return-void
.end method

.method public native setBlendingEnabled(Z)V
.end method

.method public setClip(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 298
    if-gt p1, p3, :cond_4

    if-le p2, p4, :cond_c

    .line 299
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "left > right || top > bottom"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v0

    .line 301
    .local v0, height:I
    sub-int v1, v0, p4

    sub-int v2, v0, p2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    .line 302
    return-void
.end method

.method public setClipToView(Landroid/view/View;Z)V
    .registers 14
    .parameter "v"
    .parameter "clipToPadding"

    .prologue
    .line 88
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    .local v5, viewRect:Landroid/graphics/RectF;
    if-eqz p2, :cond_47

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 93
    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 94
    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 96
    :cond_47
    invoke-static {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 98
    .local v1, clipRect:Landroid/graphics/RectF;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 99
    .local v2, left:I
    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 100
    .local v3, right:I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 101
    .local v4, top:I
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 102
    .local v0, bottom:I
    if-gt v2, v3, :cond_6a

    if-gt v4, v0, :cond_6a

    .line 103
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    .line 104
    :cond_6a
    return-void
.end method

.method public setColor(FFF)V
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getAlpha()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 547
    return-void
.end method

.method public native setColor(FFFF)V
.end method

.method public setColor(I)V
    .registers 7
    .parameter "argb"

    .prologue
    const/high16 v4, 0x437f

    .line 552
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 556
    return-void
.end method

.method public setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V
    .registers 6
    .parameter "geometry"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 500
    if-nez p1, :cond_e

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 512
    :goto_d
    return-void

    .line 505
    :cond_e
    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_d

    .line 509
    :cond_29
    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v1

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v2

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_d
.end method

.method public native setProjectionMatrix([F)V
.end method

.method public native setShaderProgram(II)V
.end method

.method public setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 463
    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1e

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    .line 469
    :goto_1d
    return-void

    .line 467
    :cond_1e
    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    goto :goto_1d
.end method

.method public setShaderSurface(Ljava/lang/String;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .registers 4
    .parameter "name"
    .parameter "s"

    .prologue
    .line 272
    if-nez p2, :cond_8

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mBlankSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p2

    .line 274
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 275
    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_26

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    .line 281
    :goto_25
    return-void

    .line 279
    :cond_26
    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    goto :goto_25
.end method

.method public native setShaderUnfirom(Ljava/lang/String;[F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;[F)V
.end method

.method public setSubdivide(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 524
    if-eqz p1, :cond_c

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mHighGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$800(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 529
    :goto_b
    return-void

    .line 527
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->mLowGrid:Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    goto :goto_b
.end method

.method public setTouchTrackingEnabled(Z)V
    .registers 2
    .parameter "isEnabled"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    .line 373
    return-void
.end method

.method public translate(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 317
    return-void
.end method

.method public translate(FFF)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 322
    return-void
.end method
