.class Lcom/google/android/apps/unveil/textinput/GridOverlayView;
.super Landroid/view/View;
.source "GridOverlayView.java"


# static fields
.field private static final ALPHA:I = 0x41

.field private static final MIN_HEIGHT_DIP:I = 0x3c


# instance fields
.field private minHeightPx:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->paint:Landroid/graphics/Paint;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    const/high16 v0, 0x4270

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->minHeightPx:I

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->minHeightPx:I

    div-int v7, v0, v1

    .line 48
    .local v7, numHorizBoxes:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->getHeight()I

    move-result v0

    div-int v8, v0, v7

    .line 50
    .local v8, yDelta:I
    const/4 v6, 0x1

    .local v6, i:I
    :goto_12
    if-ge v6, v7, :cond_29

    .line 51
    const/4 v1, 0x0

    mul-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    mul-int v0, v6, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/GridOverlayView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 58
    :cond_29
    return-void
.end method
