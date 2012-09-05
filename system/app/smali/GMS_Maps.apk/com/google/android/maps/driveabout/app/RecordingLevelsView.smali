.class public Lcom/google/android/maps/driveabout/app/RecordingLevelsView;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:[F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(II)I
    .registers 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_14

    :goto_b
    :sswitch_b
    return p1

    :sswitch_c
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_b

    :sswitch_11
    move p1, v0

    goto :goto_b

    nop

    :sswitch_data_14
    .sparse-switch
        -0x80000000 -> :sswitch_c
        0x0 -> :sswitch_b
        0x40000000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->invalidate()V

    return-void
.end method

.method public a(IF)V
    .registers 11

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    if-ltz p1, :cond_9

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    if-lt p1, v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    cmpg-float v2, p2, v0

    if-gez v2, :cond_1b

    move p2, v0

    :cond_f
    :goto_f
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-ge p1, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    aput p2, v0, p1

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->invalidate()V

    goto :goto_9

    :cond_1b
    cmpl-float v2, p2, v1

    if-lez v2, :cond_f

    move p2, v1

    goto :goto_f

    :cond_21
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-ne p1, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    aput p2, v0, v1

    goto :goto_17

    :cond_30
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-lez v1, :cond_3c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :cond_3c
    sub-float v2, p2, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    sub-int v1, p1, v1

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x1

    :goto_45
    if-gt v1, v3, :cond_58

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_58
    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    goto :goto_17
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_f6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_f6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    int-to-float v1, v1

    const/4 v3, 0x0

    add-float/2addr v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v4, 0x0

    sub-float v4, v1, v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v5, 0x0

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->c:I

    int-to-float v2, v2

    div-float v13, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v2, v1

    const/high16 v3, 0x4000

    div-float v14, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    add-int/lit8 v15, v2, 0x1

    add-int v16, v1, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    add-int/lit8 v17, v1, 0x1

    const/4 v1, 0x0

    move v12, v1

    :goto_84
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->d:I

    if-ge v12, v1, :cond_f6

    int-to-float v1, v12

    mul-float/2addr v1, v13

    move/from16 v0, v17

    int-to-float v2, v0

    add-float/2addr v2, v1

    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    aget v3, v3, v12

    sub-float/2addr v1, v3

    mul-float/2addr v1, v14

    int-to-float v3, v15

    add-float/2addr v1, v3

    const/high16 v3, 0x3f00

    sub-float v3, v1, v3

    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->b:[F

    aget v4, v4, v12

    add-float/2addr v1, v4

    mul-float/2addr v1, v14

    int-to-float v4, v15

    add-float/2addr v1, v4

    const/high16 v4, 0x3f00

    add-float v5, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v15

    cmpl-float v1, v3, v1

    if-lez v1, :cond_dd

    int-to-float v8, v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v2

    move v9, v2

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_dd
    move/from16 v0, v16

    int-to-float v1, v0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_f2

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v2

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_f2
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_84

    :cond_f6
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    if-le v0, v1, :cond_46

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->e:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    :goto_17
    int-to-float v1, v0

    const/high16 v2, 0x4070

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    :cond_2c
    iget v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    invoke-direct {p0, v1, p2}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    if-le v1, v2, :cond_4b

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->f:I

    iput v2, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    :goto_42
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->setMeasuredDimension(II)V

    return-void

    :cond_46
    iput v3, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->i:I

    goto :goto_17

    :cond_4b
    iput v3, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->h:I

    iput v1, p0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->j:I

    goto :goto_42
.end method
