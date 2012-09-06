.class public LCb;
.super Ljava/lang/Object;
.source "CanvasTextRenderer.java"

# interfaces
.implements LCQ;


# static fields
.field private static final a:I

.field private static final a:Z


# instance fields
.field private final a:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 29
    const/16 v0, 0x100

    sput v0, LCb;->a:I

    .line 33
    :goto_10
    const/4 v0, 0x1

    sput-boolean v0, LCb;->a:Z

    .line 38
    :goto_13
    return-void

    .line 31
    :cond_14
    const/16 v0, 0x80

    sput v0, LCb;->a:I

    goto :goto_10

    .line 35
    :cond_19
    const/4 v0, 0x0

    sput-boolean v0, LCb;->a:Z

    .line 36
    const v0, 0x7fffffff

    sput v0, LCb;->a:I

    goto :goto_13
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LCb;->a:Landroid/graphics/Canvas;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x41a0

    .line 83
    if-nez p5, :cond_8

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    .line 87
    :cond_8
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 91
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-float v7, v0

    .line 92
    const/4 v2, 0x0

    move-object v0, p4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 93
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 95
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 96
    iget-object v1, p0, LCb;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v6, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p4}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 100
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 101
    iget v2, v1, Landroid/graphics/RectF;->top:F

    div-float v3, v7, v8

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 102
    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 103
    add-float v2, p2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 105
    iget-object v2, p0, LCb;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    :cond_50
    invoke-virtual {p4}, Landroid/graphics/Paint;->isStrikeThruText()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 109
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 110
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 111
    iget v2, v1, Landroid/graphics/RectF;->top:F

    div-float v3, v7, v8

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 112
    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 113
    add-float/2addr v0, p2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 114
    iget-object v0, p0, LCb;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    :cond_77
    return-void
.end method

.method private a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    sget-boolean v1, LCb;->a:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, LCb;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 71
    if-nez p1, :cond_13

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 75
    :cond_13
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 76
    sget v2, LCb;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    const/4 v0, 0x1

    .line 78
    :cond_21
    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, LCb;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public a(FFFFLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, LCb;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 151
    return-void
.end method

.method public a(IF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public a(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p7, p6}, LCb;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, LCb;->a(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 57
    :goto_16
    return-void

    .line 55
    :cond_17
    iget-object v0, p0, LCb;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_16
.end method

.method public a([CIIFFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p7, p6}, LCb;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    move-object v0, p0

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, LCb;->a(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 67
    :goto_13
    return-void

    .line 65
    :cond_14
    iget-object v0, p0, LCb;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_13
.end method
