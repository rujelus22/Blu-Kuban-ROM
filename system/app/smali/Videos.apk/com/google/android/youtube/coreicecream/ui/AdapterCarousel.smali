.class public Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;
.super Lcom/android/ex/carousel/CarouselView;
.source "AdapterCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;
    }
.end annotation


# static fields
.field private static loadingBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private adapter:Landroid/widget/Adapter;

.field private final antiAliasedPainter:Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;

.field private cameraZ:F

.field private cardHeight:I

.field private cardWidth:I

.field private final carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

.field private carouselRotation:Ljava/lang/Float;

.field private detached:Z

.field private detailHeight:I

.field private final detailViewTag:Ljava/lang/String;

.field private detailWidth:I

.field private lastTouchPosition:[I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private radius:F

.field private rowCount:I

.field private rowSpacing:F

.field private slotCount:I

.field private splitDetailViews:Z

.field private surfaceReady:Z

.field private visibleSlotCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v1, Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;

    invoke-direct {v1}, Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->antiAliasedPainter:Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;

    .line 86
    const v1, 0x7f0b008e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;

    .line 88
    sget-object v1, Lcom/google/android/youtube/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->radius:F

    .line 90
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowCount:I

    .line 91
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowSpacing:F

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->slotCount:I

    .line 94
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cameraZ:F

    .line 95
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I

    .line 96
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I

    .line 97
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailWidth:I

    .line 98
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailHeight:I

    .line 99
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z

    .line 100
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setOverscrollSlots(F)V

    .line 101
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSwaySensitivity(F)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 105
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setBackgroundColor(FFFF)V

    .line 106
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    .line 109
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->radius:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRadius(F)V

    .line 110
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowCount(I)V

    .line 111
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowSpacing:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setRowSpacing(F)V

    .line 112
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setVisibleSlots(I)V

    .line 113
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setVisibleDetails(I)V

    .line 114
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->slotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setSlotCount(I)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDrawRuler(Z)V

    .line 117
    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDetailTextureAlignment(I)V

    .line 119
    sget-object v1, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d3

    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    .line 123
    :cond_d3
    sget-object v1, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    sget-object v1, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardsFaceTangent(Z)V

    .line 128
    const v1, -0x4036f025

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardRotation(F)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDragModel(I)V

    .line 130
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setPrefetchCardCount(I)V

    .line 131
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cameraZ:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCameraZ(F)V

    .line 133
    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardSize(II)V

    .line 135
    new-instance v1, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    iput-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    .line 136
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 137
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detached:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$201(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->lastTouchPosition:[I

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z

    return v0
.end method


# virtual methods
.method public createCards(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-nez v0, :cond_e

    .line 323
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    .line 325
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 326
    return-void
.end method

.method public createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "view"
    .parameter "w"
    .parameter "h"
    .parameter "antialias"

    .prologue
    const/high16 v3, 0x4000

    const/4 v4, 0x0

    .line 299
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_29

    .line 309
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 312
    if-eqz p4, :cond_3a

    if-eqz v0, :cond_3a

    .line 313
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->antiAliasedPainter:Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/coreicecream/ui/AntiAliasedEdgePainter;->paint(Landroid/graphics/Canvas;)V

    .line 316
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_3a
    return-object v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->onDestroy()V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->destroyRenderScriptGL()V

    .line 249
    return-void
.end method

.method public destroyRenderScriptGL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getRenderScriptGL()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 254
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    .line 255
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    .line 257
    :cond_11
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->surfaceReady:Z

    if-nez v0, :cond_9

    .line 353
    new-instance p1, Landroid/graphics/Canvas;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 355
    .restart local p1
    :cond_9
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 356
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "region"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->surfaceReady:Z

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getLastTouchPosition()[I
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->lastTouchPosition:[I

    return-object v0
.end method

.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .registers 3

    .prologue
    .line 243
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const/high16 v1, 0x7f07

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method

.method public interpretLongPressEvents()Z
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public layout(IIII)V
    .registers 6
    .parameter "t"
    .parameter "l"
    .parameter "b"
    .parameter "r"

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detached:Z

    if-nez v0, :cond_7

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->layout(IIII)V

    .line 385
    :cond_7
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detached:Z

    .line 377
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onAttachedToWindow()V

    .line 378
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->requestLayout()V

    .line 390
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$2;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 290
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 291
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "rotation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    .line 292
    const-string v2, "super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 293
    .local v1, superState:Landroid/os/Parcelable;
    if-eqz v1, :cond_1a

    .line 294
    invoke-super {p0, v1}, Lcom/android/ex/carousel/CarouselView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 296
    :cond_1a
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, state:Landroid/os/Bundle;
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 279
    .local v1, superState:Landroid/os/Parcelable;
    if-eqz v1, :cond_10

    .line 280
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    :cond_10
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-eqz v2, :cond_1f

    .line 283
    const-string v2, "rotation"

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 285
    :cond_1f
    return-object v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 360
    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    .line 361
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->requestLayout()V

    .line 362
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$1;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 370
    :goto_f
    return-void

    .line 368
    :cond_10
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->onWindowVisibilityChanged(I)V

    goto :goto_f
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 233
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_e

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 237
    :cond_e
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 239
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 215
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 217
    return-void
.end method

.method public setCameraZ(F)V
    .registers 10
    .parameter "cameraZ"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 158
    new-array v1, v4, [F

    aput v3, v1, v5

    aput v3, v1, v6

    aput p1, v1, v7

    .line 160
    .local v1, eye:[F
    new-array v0, v4, [F

    aput v3, v0, v5

    aput v3, v0, v6

    iget v3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->radius:F

    neg-float v3, v3

    aput v3, v0, v7

    .line 161
    .local v0, at:[F
    new-array v2, v4, [F

    fill-array-data v2, :array_22

    .line 162
    .local v2, up:[F
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setLookAt([F[F[F)V

    .line 163
    return-void

    .line 161
    nop

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCardSize(II)V
    .registers 8
    .parameter "w"
    .parameter "h"

    .prologue
    .line 194
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I

    .line 195
    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I

    .line 197
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    .local v0, cardMatrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 199
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 200
    .local v1, rsMatrix:[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDefaultCardMatrix([F)V

    .line 202
    return-void
.end method

.method public setDetailSize(II)V
    .registers 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 205
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailWidth:I

    .line 206
    iput p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailHeight:I

    .line 207
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 221
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 225
    return-void
.end method

.method public setRadius(F)V
    .registers 2
    .parameter "radius"

    .prologue
    .line 153
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->radius:F

    .line 154
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRadius(F)V

    .line 155
    return-void
.end method

.method public setRowCount(I)V
    .registers 2
    .parameter "rows"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRowCount(I)V

    .line 184
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowCount:I

    .line 185
    return-void
.end method

.method public setRowSpacing(F)V
    .registers 2
    .parameter "s"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRowSpacing(F)V

    .line 190
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->rowSpacing:F

    .line 191
    return-void
.end method

.method public setSlotCount(I)V
    .registers 7
    .parameter "slots"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setSlotCount(I)V

    .line 168
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->slotCount:I

    .line 169
    const-wide v1, 0x401921fb54442d18L

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 171
    .local v0, wedgeSize:F
    const v1, 0x3fc90fdb

    iget v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setStartAngle(F)V

    .line 172
    return-void
.end method

.method public setSplitDetailViews(Z)V
    .registers 3
    .parameter "splitDetailViews"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z

    if-eq v0, p1, :cond_b

    .line 145
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->onChanged()V

    .line 149
    :cond_b
    return-void
.end method

.method public setVisibleSlots(I)V
    .registers 2
    .parameter "slots"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setVisibleSlots(I)V

    .line 177
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setVisibleDetails(I)V

    .line 178
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->visibleSlotCount:I

    .line 179
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-eqz v0, :cond_11

    .line 262
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 264
    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->surfaceReady:Z

    .line 266
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->invalidate()V

    .line 267
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->surfaceReady:Z

    .line 272
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 273
    return-void
.end method
