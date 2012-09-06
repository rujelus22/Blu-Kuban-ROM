.class public Lcom/google/googlenav/ui/android/aA;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Lcom/google/googlenav/cn;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/cn;ZI)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/aA;->h:Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/google/googlenav/ui/android/aA;->a:Lcom/google/googlenav/cn;

    .line 316
    iput-boolean p2, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    .line 317
    iput p3, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    .line 318
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    .line 319
    const/16 v0, 0x4ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/aA;->e:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->c()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->d:Z

    .line 321
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->l()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3b

    :goto_36
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/aA;->f:Z

    .line 322
    return-void

    :cond_39
    move v0, v2

    .line 320
    goto :goto_2d

    :cond_3b
    move v1, v2

    .line 321
    goto :goto_36
.end method

.method private a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 339
    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/aA;->f:Z

    if-eqz v1, :cond_75

    .line 340
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    const/high16 v1, -0x100

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    :goto_12
    sub-int v1, p5, p3

    add-int/lit8 v1, v1, 0x1

    .line 347
    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 351
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/aA;->d:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/aA;->f:Z

    if-eqz v2, :cond_84

    .line 354
    :cond_23
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 356
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 359
    invoke-virtual {p6}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 360
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->a:Lcom/google/googlenav/cn;

    invoke-virtual {v1}, Lcom/google/googlenav/cn;->k()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->h:Ljava/lang/String;

    if-nez v1, :cond_5f

    .line 365
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    invoke-static {p6, v1, v2}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/android/aA;->h:Ljava/lang/String;

    .line 366
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/aA;->i:I

    .line 368
    :cond_5f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->h:Ljava/lang/String;

    iget v2, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    iget v3, p0, Lcom/google/googlenav/ui/android/aA;->i:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    int-to-float v3, p4

    invoke-virtual {p1, v1, v2, v3, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 384
    :goto_71
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    return-void

    .line 343
    :cond_75
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->a:Lcom/google/googlenav/cn;

    invoke-virtual {v1}, Lcom/google/googlenav/cn;->l()I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12

    .line 371
    :cond_84
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    if-eqz v2, :cond_a9

    .line 374
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    sget v4, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-int v4, p3, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    int-to-float v5, v5

    add-float/2addr v5, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 382
    :goto_a1
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_71

    .line 379
    :cond_a9
    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->g()Landroid/graphics/RectF;

    move-result-object v2

    add-int v3, p3, v1

    int-to-float v3, v3

    sget v4, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    sub-int v1, p5, v1

    int-to-float v1, v1

    invoke-virtual {v2, p2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a1
.end method

.method private b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/high16 v0, -0x100

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->d:Z

    if-eqz v0, :cond_1c

    .line 394
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    if-eqz v0, :cond_1b

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aA;->e:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 405
    :cond_1b
    :goto_1b
    return-void

    .line 400
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 401
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->f:Z

    if-eqz v0, :cond_43

    :cond_34
    iget v0, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    .line 403
    :goto_36
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    int-to-float v0, v0

    add-float/2addr v0, p2

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v2, p4

    invoke-virtual {p1, v1, v0, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1b

    .line 401
    :cond_43
    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    goto :goto_36
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 19
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
    .line 410
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 411
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 412
    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/android/aA;->a(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 413
    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/android/aA;->b(Landroid/graphics/Canvas;FIIILandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->d:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    if-nez v0, :cond_b

    .line 421
    iget v0, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    .line 427
    :goto_a
    return v0

    .line 423
    :cond_b
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->d:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aA;->e:Ljava/lang/String;

    .line 424
    :goto_11
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->h()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 425
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->b:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/aA;->f:Z

    if-eqz v0, :cond_37

    :cond_25
    iget v0, p0, Lcom/google/googlenav/ui/android/aA;->g:I

    .line 427
    :goto_27
    sget v1, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/googlenav/ui/android/TransitStationView;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    .line 423
    :cond_34
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aA;->c:Ljava/lang/String;

    goto :goto_11

    .line 425
    :cond_37
    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    goto :goto_27
.end method
