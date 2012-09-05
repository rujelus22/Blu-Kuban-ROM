.class Lcom/google/googlenav/ui/android/al;
.super Landroid/text/style/ReplacementSpan;

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Lcom/google/googlenav/bS;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bS;ZI)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/al;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/bS;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    iput p3, p0, Lcom/google/googlenav/ui/android/al;->g:I

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    const/16 v0, 0x403

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/al;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->d()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->d:Z

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->f()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3b

    :goto_36
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/al;->f:Z

    return-void

    :cond_39
    move v0, v2

    goto :goto_2d

    :cond_3b
    move v1, v2

    goto :goto_36
.end method

.method private a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .registers 13

    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/al;->f:Z

    if-eqz v1, :cond_77

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, -0x100

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_12
    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->e()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/al;->d:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/al;->f:Z

    if-eqz v2, :cond_86

    :cond_25
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->f()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/android/al;->g:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p6}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/bS;

    invoke-virtual {v1}, Lcom/google/googlenav/bS;->e()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->h:Ljava/lang/String;

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/al;->g:I

    invoke-static {p6, v1, v2}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/android/al;->h:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/al;->i:I

    :cond_61
    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->h:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/al;->g:I

    iget v3, p0, Lcom/google/googlenav/ui/android/al;->i:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    int-to-float v3, p4

    invoke-virtual {p1, v1, v2, v3, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_73
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_77
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->a:Lcom/google/googlenav/bS;

    invoke-virtual {v1}, Lcom/google/googlenav/bS;->f()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12

    :cond_86
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    if-eqz v2, :cond_ad

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->f()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/android/al;->g:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->e()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-int v4, p3, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/google/googlenav/ui/android/al;->g:I

    int-to-float v5, v5

    add-float/2addr v5, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_a5
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_73

    :cond_ad
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->f()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->e()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a5
.end method

.method private b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .registers 11

    const/high16 v0, -0x100

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->d:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->e:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/android/al;->g:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->f:Z

    if-eqz v0, :cond_43

    :cond_34
    iget v0, p0, Lcom/google/googlenav/ui/android/al;->g:I

    :goto_36
    iget-object v1, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    int-to-float v0, v0

    add-float/2addr v0, p2

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v2, p4

    invoke-virtual {p1, v1, v0, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1b

    :cond_43
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->e()I

    move-result v0

    goto :goto_36
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 19

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/android/al;->a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/android/al;->b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 10

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->d:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/googlenav/ui/android/al;->g:I

    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->d:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->e:Ljava/lang/String;

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->b:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/al;->f:Z

    if-eqz v0, :cond_37

    :cond_25
    iget v0, p0, Lcom/google/googlenav/ui/android/al;->g:I

    :goto_27
    sget v1, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    :cond_34
    iget-object v0, p0, Lcom/google/googlenav/ui/android/al;->c:Ljava/lang/String;

    goto :goto_11

    :cond_37
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->e()I

    move-result v0

    goto :goto_27
.end method
