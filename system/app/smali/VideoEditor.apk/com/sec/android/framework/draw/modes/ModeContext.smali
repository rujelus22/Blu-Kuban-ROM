.class public Lcom/sec/android/framework/draw/modes/ModeContext;
.super Lcom/sec/android/framework/draw/modes/AbstractModeContext;
.source "SourceFile"


# static fields
.field public static final PEN_MODE:Lcom/sec/android/framework/draw/modes/IModeState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/sec/android/framework/draw/modes/PenMode;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/modes/PenMode;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/modes/ModeContext;->PEN_MODE:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->view:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/sec/android/framework/draw/sprites/SpriteFactory;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/SpriteFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    .line 29
    new-instance v0, Lcom/sec/android/framework/draw/Setting;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/Setting;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 31
    sget-object v0, Lcom/sec/android/framework/draw/modes/ModeContext;->PEN_MODE:Lcom/sec/android/framework/draw/modes/IModeState;

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 32
    new-instance v0, Lcom/sec/android/framework/draw/Stage;

    invoke-direct {v0, p0}, Lcom/sec/android/framework/draw/Stage;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    .line 33
    return-void
.end method


# virtual methods
.method public changeCanvasSize(Landroid/graphics/Rect;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_8

    .line 57
    :cond_7
    :goto_7
    return-void

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Setting;->setCanvasRect(Landroid/graphics/Rect;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    new-array v1, v4, [I

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v3

    aput v3, v2, v6

    .line 42
    new-array v3, v4, [I

    iget-object v4, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v4}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v4

    aput v4, v3, v6

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/AbstractStage;->changeLayersSize([I[I[I)V

    .line 44
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v0, v0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v0, v0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v1

    if-eq v0, v1, :cond_79

    .line 45
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v0, v0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v1

    if-eq v0, v1, :cond_79

    .line 46
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v1

    .line 47
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v2, v2, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, v1, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iput-object v0, v1, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 53
    :cond_79
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v0, v0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 54
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v2

    .line 55
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 54
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    goto/16 :goto_7
.end method

.method protected changePanningPosition(FF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_5

    .line 78
    :goto_4
    return-void

    .line 74
    :cond_5
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/framework/draw/AbstractStage;->setPanning(ILcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/framework/draw/AbstractStage;->setPanning(ILcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V

    goto :goto_4
.end method

.method public changeScreenSize(Landroid/graphics/Rect;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_7

    .line 67
    :goto_6
    return-void

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Setting;->setScreenRect(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    new-array v1, v4, [I

    aput v4, v1, v5

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/Setting;->getScreenWidth()I

    move-result v3

    aput v3, v2, v5

    .line 66
    new-array v3, v4, [I

    iget-object v4, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v4}, Lcom/sec/android/framework/draw/Setting;->getScreenHeight()I

    move-result v4

    aput v4, v3, v5

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/AbstractStage;->changeLayersSize([I[I[I)V

    goto :goto_6
.end method

.method protected changeZoomFactor(F)V
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_5

    .line 87
    :goto_4
    return-void

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/framework/draw/AbstractStage;->setZoom(IF)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/framework/draw/AbstractStage;->setZoom(IF)V

    goto :goto_4
.end method

.method public getPanning()Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->getPanning(I)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    move-result-object v0

    goto :goto_5
.end method

.method public getZoom()F
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_7

    .line 100
    const/high16 v0, 0x3f80

    .line 102
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->getZoom(I)F

    move-result v0

    goto :goto_6
.end method
