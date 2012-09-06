.class public LAN;
.super Landroid/text/style/ReplacementSpan;
.source "KixImageSpan.java"

# interfaces
.implements LEk;


# instance fields
.field private final a:F

.field private final a:LAa;

.field private final a:Ljava/lang/String;

.field private final a:LwH;

.field private final a:LzH;

.field private a:Z

.field private final b:F


# direct methods
.method public constructor <init>(LzH;Ljava/lang/String;FFLwH;LAa;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, LAN;->a:Z

    .line 51
    iput-object p1, p0, LAN;->a:LzH;

    .line 52
    iput-object p6, p0, LAN;->a:LAa;

    .line 53
    iput-object p2, p0, LAN;->a:Ljava/lang/String;

    .line 54
    iput-object p5, p0, LAN;->a:LwH;

    .line 55
    iput p3, p0, LAN;->a:F

    .line 56
    iput p4, p0, LAN;->b:F

    .line 57
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v1, p0, LAN;->a:LwH;

    invoke-interface {v1}, LwH;->a()F

    move-result v7

    .line 72
    iget v1, p0, LAN;->a:F

    mul-float/2addr v1, v7

    float-to-int v5, v1

    .line 73
    iget v1, p0, LAN;->b:F

    mul-float/2addr v1, v7

    float-to-int v6, v1

    .line 74
    iget-object v1, p0, LAN;->a:LzH;

    iget-object v2, p0, LAN;->a:Ljava/lang/String;

    iget-object v3, p0, LAN;->a:LAa;

    iget-boolean v4, p0, LAN;->a:Z

    invoke-virtual/range {v1 .. v6}, LzH;->a(Ljava/lang/String;LAa;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, LAN;->a:Z

    .line 78
    int-to-float v2, p7

    iget v3, p0, LAN;->b:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    .line 79
    if-eqz v1, :cond_36

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    :goto_35
    return-void

    .line 86
    :cond_36
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 87
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 89
    const v4, -0x777778

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v5

    add-float/2addr v5, p5

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-direct {v4, p5, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    const/high16 v2, 0x4100

    const/high16 v5, 0x4100

    move-object/from16 v0, p9

    invoke-virtual {p1, v4, v2, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_35
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, LAN;->a:LwH;

    invoke-interface {v0}, LwH;->a()F

    move-result v0

    .line 100
    if-eqz p5, :cond_18

    .line 103
    iget v1, p0, LAN;->b:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 104
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 107
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 108
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 111
    :cond_18
    iget v1, p0, LAN;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
