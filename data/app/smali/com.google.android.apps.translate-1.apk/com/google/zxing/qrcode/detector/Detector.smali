.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .parameter "image"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 45
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 10
    .parameter "pattern"
    .parameter "otherPattern"

    .prologue
    const/high16 v6, 0x40e0

    .line 241
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 245
    .local v0, moduleSizeEst1:F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    .line 249
    .local v1, moduleSizeEst2:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 250
    div-float v2, v1, v6

    .line 257
    :goto_3a
    return v2

    .line 252
    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 253
    div-float v2, v0, v6

    goto :goto_3a

    .line 257
    :cond_44
    add-float v2, v0, v1

    const/high16 v3, 0x4160

    div-float/2addr v2, v3

    goto :goto_3a
.end method

.method protected static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .registers 8
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "moduleSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/Detector;->round(F)I

    move-result v2

    .line 207
    .local v2, tltrCentersDimension:I
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/Detector;->round(F)I

    move-result v1

    .line 208
    .local v1, tlblCentersDimension:I
    add-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x7

    .line 209
    .local v0, dimension:I
    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_2a

    .line 220
    :goto_1d
    :pswitch_1d
    return v0

    .line 211
    :pswitch_1e
    add-int/lit8 v0, v0, 0x1

    .line 212
    goto :goto_1d

    .line 215
    :pswitch_21
    add-int/lit8 v0, v0, -0x1

    .line 216
    goto :goto_1d

    .line 218
    :pswitch_24
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 209
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private static round(F)I
    .registers 2
    .parameter "d"

    .prologue
    .line 411
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .registers 5
    .parameter "image"
    .parameter "transform"
    .parameter "dimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 195
    .local v0, sampler:Lcom/google/zxing/common/GridSampler;
    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .registers 25
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    .line 305
    .local v13, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 309
    .local v7, height:I
    sub-int v18, p4, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v19, p3, p1

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a6

    const/4 v11, 0x1

    .line 310
    .local v11, steep:Z
    :goto_27
    if-eqz v11, :cond_35

    .line 311
    move/from16 v12, p1

    .line 312
    .local v12, temp:I
    move/from16 p1, p2

    .line 313
    move/from16 p2, v12

    .line 314
    move/from16 v12, p3

    .line 315
    move/from16 p3, p4

    .line 316
    move/from16 p4, v12

    .line 319
    .end local v12           #temp:I
    :cond_35
    sub-int v18, p3, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 320
    .local v4, dx:I
    sub-int v18, p4, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 321
    .local v5, dy:I
    neg-int v0, v4

    move/from16 v18, v0

    shr-int/lit8 v6, v18, 0x1

    .line 322
    .local v6, error:I
    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_a8

    const/16 v17, 0x1

    .line 323
    .local v17, ystep:I
    :goto_4e
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_ab

    const/4 v15, 0x1

    .line 324
    .local v15, xstep:I
    :goto_55
    const/4 v10, 0x0

    .line 325
    .local v10, state:I
    move/from16 v14, p1

    .local v14, x:I
    move/from16 v16, p2

    .local v16, y:I
    :goto_5a
    move/from16 v0, p3

    if-eq v14, v0, :cond_d4

    .line 327
    if-eqz v11, :cond_ad

    move/from16 v8, v16

    .line 328
    .local v8, realX:I
    :goto_62
    if-eqz v11, :cond_af

    move v9, v14

    .line 329
    .local v9, realY:I
    :goto_65
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_b2

    .line 330
    if-ltz v8, :cond_83

    if-ge v8, v13, :cond_83

    if-ltz v9, :cond_83

    if-ge v9, v7, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    if-eqz v18, :cond_83

    .line 332
    add-int/lit8 v10, v10, 0x1

    .line 341
    :cond_83
    :goto_83
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v10, v0, :cond_cb

    .line 342
    sub-int v2, v14, p1

    .line 343
    .local v2, diffX:I
    sub-int v3, v16, p2

    .line 344
    .local v3, diffY:I
    if-gez v15, :cond_91

    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 347
    :cond_91
    mul-int v18, v2, v2

    mul-int v19, v3, v3

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 360
    .end local v8           #realX:I
    .end local v9           #realY:I
    :goto_a5
    return v18

    .line 309
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #error:I
    .end local v10           #state:I
    .end local v11           #steep:Z
    .end local v14           #x:I
    .end local v15           #xstep:I
    .end local v16           #y:I
    .end local v17           #ystep:I
    :cond_a6
    const/4 v11, 0x0

    goto :goto_27

    .line 322
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v6       #error:I
    .restart local v11       #steep:Z
    :cond_a8
    const/16 v17, -0x1

    goto :goto_4e

    .line 323
    .restart local v17       #ystep:I
    :cond_ab
    const/4 v15, -0x1

    goto :goto_55

    .restart local v10       #state:I
    .restart local v14       #x:I
    .restart local v15       #xstep:I
    .restart local v16       #y:I
    :cond_ad
    move v8, v14

    .line 327
    goto :goto_62

    .restart local v8       #realX:I
    :cond_af
    move/from16 v9, v16

    .line 328
    goto :goto_65

    .line 335
    .restart local v9       #realY:I
    :cond_b2
    if-ltz v8, :cond_c8

    if-ge v8, v13, :cond_c8

    if-ltz v9, :cond_c8

    if-ge v9, v7, :cond_c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    if-nez v18, :cond_83

    .line 337
    :cond_c8
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 349
    :cond_cb
    add-int/2addr v6, v5

    .line 350
    if-lez v6, :cond_f0

    .line 351
    move/from16 v0, v16

    move/from16 v1, p4

    if-ne v0, v1, :cond_ed

    .line 358
    .end local v8           #realX:I
    .end local v9           #realY:I
    :cond_d4
    sub-int v2, p3, p1

    .line 359
    .restart local v2       #diffX:I
    sub-int v3, p4, p2

    .line 360
    .restart local v3       #diffY:I
    mul-int v18, v2, v2

    mul-int v19, v3, v3

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    goto :goto_a5

    .line 354
    .end local v2           #diffX:I
    .end local v3           #diffY:I
    .restart local v8       #realX:I
    .restart local v9       #realY:I
    :cond_ed
    add-int v16, v16, v17

    .line 355
    sub-int/2addr v6, v4

    .line 325
    :cond_f0
    add-int/2addr v14, v15

    goto/16 :goto_5a
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .registers 11
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v2

    .line 270
    .local v2, result:F
    const/high16 v3, 0x3f80

    .line 271
    .local v3, scale:F
    sub-int v4, p3, p1

    sub-int v0, p1, v4

    .line 272
    .local v0, otherToX:I
    if-gez v0, :cond_36

    .line 273
    rsub-int/lit8 v4, p1, 0x0

    int-to-float v4, v4

    sub-int v5, v0, p1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 274
    const/4 v0, 0x0

    .line 279
    :cond_15
    :goto_15
    int-to-float v4, p2

    sub-int v5, p4, p2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 281
    .local v1, otherToY:I
    const/high16 v3, 0x3f80

    .line 282
    if-gez v1, :cond_52

    .line 283
    rsub-int/lit8 v4, p2, 0x0

    int-to-float v4, v4

    sub-int v5, v1, p2

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 284
    const/4 v1, 0x0

    .line 289
    :cond_29
    :goto_29
    int-to-float v4, p1

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 291
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v2, v4

    .line 292
    return v2

    .line 275
    .end local v1           #otherToY:I
    :cond_36
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-le v0, v4, :cond_15

    .line 276
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    int-to-float v4, v4

    sub-int v5, v0, p1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 277
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    goto :goto_15

    .line 285
    .restart local v1       #otherToY:I
    :cond_52
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-le v1, v4, :cond_29

    .line 286
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v1, p2

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 287
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    goto :goto_29
.end method


# virtual methods
.method protected calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .registers 24
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "alignmentPattern"
    .parameter "dimension"

    .prologue
    .line 153
    move/from16 v0, p5

    int-to-float v1, v0

    const/high16 v2, 0x4060

    sub-float v3, v1, v2

    .line 158
    .local v3, dimMinusThree:F
    if-eqz p4, :cond_3c

    .line 159
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 160
    .local v13, bottomRightX:F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 161
    .local v14, bottomRightY:F
    const/high16 v1, 0x4040

    sub-float v6, v3, v1

    .local v6, sourceBottomRightY:F
    move v5, v6

    .line 169
    .local v5, sourceBottomRightX:F
    :goto_16
    const/high16 v1, 0x4060

    const/high16 v2, 0x4060

    const/high16 v4, 0x4060

    const/high16 v7, 0x4060

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move v8, v3

    invoke-static/range {v1 .. v16}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v17

    .line 187
    .local v17, transform:Lcom/google/zxing/common/PerspectiveTransform;
    return-object v17

    .line 164
    .end local v5           #sourceBottomRightX:F
    .end local v6           #sourceBottomRightY:F
    .end local v13           #bottomRightX:F
    .end local v14           #bottomRightY:F
    .end local v17           #transform:Lcom/google/zxing/common/PerspectiveTransform;
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float v13, v1, v2

    .line 165
    .restart local v13       #bottomRightX:F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float v14, v1, v2

    .line 166
    .restart local v14       #bottomRightY:F
    move v6, v3

    .restart local v6       #sourceBottomRightY:F
    move v5, v3

    .restart local v5       #sourceBottomRightX:F
    goto :goto_16
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;
    .registers 5
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_15

    const/4 v2, 0x0

    :goto_3
    iput-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 79
    .local v0, finder:Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->fastFind(Ljava/util/Hashtable;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    .line 81
    .local v1, info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0           #finder:Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .end local v1           #info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_15
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPointCallback;

    goto :goto_3
.end method

.method protected findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 16
    .parameter "overallEstModuleSize"
    .parameter "estAlignmentX"
    .parameter "estAlignmentY"
    .parameter "allowanceFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4040

    .line 381
    mul-float v1, p4, p1

    float-to-int v10, v1

    .line 382
    .local v10, allowance:I
    sub-int v1, p2, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 383
    .local v2, alignmentAreaLeftX:I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p2, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 384
    .local v9, alignmentAreaRightX:I
    sub-int v1, v9, v2

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_28

    .line 385
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 388
    :cond_28
    sub-int v1, p3, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 389
    .local v3, alignmentAreaTopY:I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p3, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 390
    .local v8, alignmentAreaBottomY:I
    sub-int v1, v8, v3

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4a

    .line 391
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 394
    :cond_4a
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v4, v9, v2

    sub-int v5, v8, v3

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 403
    .local v0, alignmentFinder:Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v1

    return-object v1
.end method

.method protected getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .registers 23
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 88
    .local v2, topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    .line 89
    .local v3, topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    .line 92
    .local v4, bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v19

    sub-float v1, v1, v19

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v19

    add-float v1, v1, v19

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v19

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    sub-float v19, v19, v20

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 96
    .local v8, bottomRight:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v14

    .line 97
    .local v14, moduleSize:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v14, v1

    if-gez v1, :cond_44

    .line 98
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 100
    :cond_44
    invoke-static {v2, v3, v4, v14}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v6

    .line 101
    .local v6, dimension:I
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 102
    .local v17, provisionalVersion:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v1

    add-int/lit8 v15, v1, -0x7

    .line 104
    .local v15, modulesBetweenFPCenters:I
    const/4 v5, 0x0

    .line 106
    .local v5, alignmentPattern:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_bf

    .line 109
    const/high16 v1, 0x3f80

    const/high16 v19, 0x4040

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v10, v1, v19

    .line 110
    .local v10, correctionToTopLeft:F
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    sub-float v19, v19, v20

    mul-float v19, v19, v10

    add-float v1, v1, v19

    float-to-int v11, v1

    .line 111
    .local v11, estAlignmentX:I
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    sub-float v19, v19, v20

    mul-float v19, v19, v10

    add-float v1, v1, v19

    float-to-int v12, v1

    .line 114
    .local v12, estAlignmentY:I
    const/4 v13, 0x4

    .local v13, i:I
    :goto_8c
    const/16 v1, 0x10

    if-gt v13, v1, :cond_97

    .line 116
    int-to-float v1, v13

    :try_start_91
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v12, v1}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_96
    .catch Lcom/google/zxing/NotFoundException; {:try_start_91 .. :try_end_96} :catch_ea

    move-result-object v5

    .line 127
    :cond_97
    if-eqz v5, :cond_bf

    .line 128
    new-instance v9, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    add-float v1, v1, v19

    int-to-float v0, v11

    move/from16 v19, v0

    sub-float v1, v1, v19

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v19

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    add-float v19, v19, v20

    int-to-float v0, v12

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    invoke-direct {v9, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .end local v8           #bottomRight:Lcom/google/zxing/ResultPoint;
    .local v9, bottomRight:Lcom/google/zxing/ResultPoint;
    move-object v8, v9

    .end local v9           #bottomRight:Lcom/google/zxing/ResultPoint;
    .end local v10           #correctionToTopLeft:F
    .end local v11           #estAlignmentX:I
    .end local v12           #estAlignmentY:I
    .end local v13           #i:I
    .restart local v8       #bottomRight:Lcom/google/zxing/ResultPoint;
    :cond_bf
    move-object/from16 v1, p0

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v18

    .line 137
    .local v18, transform:Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v0, v18

    invoke-static {v1, v0, v6}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    .line 140
    .local v7, bits:Lcom/google/zxing/common/BitMatrix;
    if-nez v5, :cond_ee

    .line 141
    const/4 v1, 0x4

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    aput-object v4, v16, v1

    const/4 v1, 0x1

    aput-object v2, v16, v1

    const/4 v1, 0x2

    aput-object v3, v16, v1

    const/4 v1, 0x3

    aput-object v8, v16, v1

    .line 145
    .local v16, points:[Lcom/google/zxing/ResultPoint;
    :goto_e2
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v0, v16

    invoke-direct {v1, v7, v0}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    .line 121
    .end local v7           #bits:Lcom/google/zxing/common/BitMatrix;
    .end local v16           #points:[Lcom/google/zxing/ResultPoint;
    .end local v18           #transform:Lcom/google/zxing/common/PerspectiveTransform;
    .restart local v10       #correctionToTopLeft:F
    .restart local v11       #estAlignmentX:I
    .restart local v12       #estAlignmentY:I
    .restart local v13       #i:I
    :catch_ea
    move-exception v1

    .line 114
    shl-int/lit8 v13, v13, 0x1

    goto :goto_8c

    .line 143
    .end local v10           #correctionToTopLeft:F
    .end local v11           #estAlignmentX:I
    .end local v12           #estAlignmentY:I
    .end local v13           #i:I
    .restart local v7       #bits:Lcom/google/zxing/common/BitMatrix;
    .restart local v18       #transform:Lcom/google/zxing/common/PerspectiveTransform;
    :cond_ee
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    aput-object v4, v16, v1

    const/4 v1, 0x1

    aput-object v2, v16, v1

    const/4 v1, 0x2

    aput-object v3, v16, v1

    const/4 v1, 0x3

    aput-object v8, v16, v1

    const/4 v1, 0x4

    aput-object v5, v16, v1

    .restart local v16       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_e2
.end method
