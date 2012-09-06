.class public Lcom/google/android/apps/unveil/env/BorderedText;
.super Ljava/lang/Object;
.source "BorderedText.java"


# static fields
.field private static final SIZE_TO_WIDTH_RATIO:F = 0.2f


# instance fields
.field private final exteriorPaint:Landroid/graphics/Paint;

.field private final interiorPaint:Landroid/graphics/Paint;

.field private final textSize:F


# direct methods
.method public constructor <init>(F)V
    .registers 5
    .parameter "textSize"

    .prologue
    .line 34
    const/4 v0, -0x1

    const/high16 v1, -0x100

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/apps/unveil/env/BorderedText;-><init>(IIFLandroid/graphics/Paint$Align;)V

    .line 35
    return-void
.end method

.method public constructor <init>(FLandroid/graphics/Paint$Align;)V
    .registers 5
    .parameter "textSize"
    .parameter "textAlign"

    .prologue
    .line 45
    const/4 v0, -0x1

    const/high16 v1, -0x100

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/apps/unveil/env/BorderedText;-><init>(IIFLandroid/graphics/Paint$Align;)V

    .line 46
    return-void
.end method

.method public constructor <init>(IIFLandroid/graphics/Paint$Align;)V
    .registers 10
    .parameter "interiorColor"
    .parameter "exteriorColor"
    .parameter "textSize"
    .parameter "textAlign"

    .prologue
    const/4 v4, 0x1

    const v3, 0x3e4ccccd

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    mul-float v1, p3, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    mul-float v1, p3, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    iput p3, p0, Lcom/google/android/apps/unveil/env/BorderedText;->textSize:F

    .line 78
    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .registers 6
    .parameter "canvas"
    .parameter "posX"
    .parameter "posY"
    .parameter "text"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 6
    .parameter "line"
    .parameter "index"
    .parameter "count"
    .parameter "lineBounds"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    return-void
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->textSize:F

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    return-void
.end method

.method public setExteriorColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    return-void
.end method

.method public setInteriorColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 3
    .parameter "align"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    return-void
.end method
