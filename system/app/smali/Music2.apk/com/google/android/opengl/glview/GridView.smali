.class public Lcom/google/android/opengl/glview/GridView;
.super Lcom/google/android/opengl/glview/GLView;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GridView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

.field private mColumnMajor:Z

.field private mFocusedChildKey:I

.field private mGapH:F

.field private mGapW:F

.field private mMarginH:F

.field private mMarginW:F

.field private mMinorAxisLength:F

.field private mOldCellSizeH:F

.field private mOldCellSizeW:F

.field private mOldViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/opengl/glview/GridView$Adapter;ZFFFFF)V
    .registers 10
    .parameter "id"
    .parameter "adapter"
    .parameter "columnMajor"
    .parameter "gapW"
    .parameter "gapH"
    .parameter "marginW"
    .parameter "marginH"
    .parameter "minorAxisLength"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    .line 44
    iput-boolean p3, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    .line 45
    iput p4, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    .line 46
    iput p5, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    .line 47
    iput p6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    .line 48
    iput p7, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    .line 49
    iput-object p2, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    .line 50
    iput p8, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    .line 51
    return-void
.end method

.method private clearOldViews()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GridView;->clearViews(Landroid/util/SparseArray;)V

    .line 308
    return-void
.end method

.method private clearViews(Landroid/util/SparseArray;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, views:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/opengl/glview/GLView;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 312
    .local v1, oldSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_1d

    .line 313
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/opengl/glview/GLView;

    .line 314
    .local v2, view:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 315
    iget-object v3, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/google/android/opengl/glview/GridView$Adapter;->recycle(Lcom/google/android/opengl/glview/GLView;I)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 317
    .end local v2           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_1d
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 318
    return-void
.end method

.method private createView(FFFFFFIII)Lcom/google/android/opengl/glview/GLView;
    .registers 16
    .parameter "cellSizeW"
    .parameter "cellSizeH"
    .parameter "x"
    .parameter "y"
    .parameter "cellW"
    .parameter "cellH"
    .parameter "row"
    .parameter "col"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 292
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v2, p9}, Lcom/google/android/opengl/glview/GridView$Adapter;->viewAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 293
    .local v0, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_2f

    .line 294
    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 295
    int-to-float v2, p8

    mul-float/2addr v2, p5

    add-float/2addr v2, p3

    iget v3, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 296
    int-to-float v1, p7

    mul-float/2addr v1, p6

    add-float/2addr v1, p4

    iget v2, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    add-float/2addr v2, v1

    invoke-virtual {v0, v5}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    move v1, v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 297
    iget-object v1, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p9, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 299
    :cond_2f
    return-object v0
.end method

.method private handleFocusEvent(III)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 14
    .parameter "focusDir"
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 387
    iget-object v8, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v8}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v5

    .line 388
    .local v5, itemCount:I
    if-gtz v5, :cond_d

    .line 389
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    .line 390
    const/4 v8, 0x0

    .line 432
    :goto_c
    return-object v8

    .line 392
    :cond_d
    iget-object v8, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v1

    .line 393
    .local v1, cellSizeW:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v0

    .line 395
    .local v0, cellSizeH:F
    invoke-virtual {p0, v5, v1, v0}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v3

    .line 396
    .local v3, cols:I
    invoke-virtual {p0, v5, v1, v0}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v7

    .line 397
    .local v7, rows:I
    iget v4, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    .line 398
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_29

    .line 399
    const/4 v4, 0x0

    .line 401
    :cond_29
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToRow(III)I

    move-result v6

    .line 402
    .local v6, row:I
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToColumn(III)I

    move-result v2

    .line 403
    .local v2, col:I
    sparse-switch p1, :sswitch_data_8a

    .line 427
    :goto_34
    invoke-virtual {p0, v7, v3, v6, v2}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v4

    .line 428
    if-ge v4, v5, :cond_87

    iget v8, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    if-eq v4, v8, :cond_87

    .line 429
    invoke-virtual {p0, v4}, Lcom/google/android/opengl/glview/GridView;->focusOnChild(I)V

    .line 430
    sget-object v8, Lcom/google/android/opengl/glview/GLView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    goto :goto_c

    .line 405
    :sswitch_44
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 406
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToRow(III)I

    move-result v6

    .line 407
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToColumn(III)I

    move-result v2

    .line 408
    goto :goto_34

    .line 410
    :sswitch_55
    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 411
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToRow(III)I

    move-result v6

    .line 412
    invoke-direct {p0, v4, v7, v3}, Lcom/google/android/opengl/glview/GridView;->indexToColumn(III)I

    move-result v2

    .line 413
    goto :goto_34

    .line 415
    :sswitch_65
    const/4 v8, 0x0

    add-int/lit8 v9, v2, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 416
    goto :goto_34

    .line 418
    :sswitch_6d
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 419
    goto :goto_34

    .line 421
    :sswitch_76
    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 422
    goto :goto_34

    .line 424
    :sswitch_7e
    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v6, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_34

    .line 432
    :cond_87
    const/4 v8, 0x0

    goto :goto_c

    .line 403
    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_44
        0x11 -> :sswitch_65
        0x21 -> :sswitch_76
        0x42 -> :sswitch_6d
        0x82 -> :sswitch_7e
    .end sparse-switch
.end method

.method private indexToColumn(III)I
    .registers 5
    .parameter "index"
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_7

    .line 137
    div-int v0, p1, p2

    .line 139
    :goto_6
    return v0

    :cond_7
    div-int v0, p1, p3

    mul-int/2addr v0, p3

    sub-int v0, p1, v0

    goto :goto_6
.end method

.method private indexToRow(III)I
    .registers 5
    .parameter "index"
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_a

    .line 129
    div-int v0, p1, p2

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    .line 131
    :goto_9
    return v0

    :cond_a
    div-int v0, p1, p3

    goto :goto_9
.end method

.method private majorCount(IFF)I
    .registers 6
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 112
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    .line 113
    .local v0, minorCount:I
    if-nez v0, :cond_8

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_7
    return v1

    :cond_8
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    goto :goto_7
.end method

.method private minorCount(FF)I
    .registers 6
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    const/high16 v2, 0x4000

    .line 104
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_15

    .line 105
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 107
    :goto_14
    return v0

    :cond_15
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mMinorAxisLength:F

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_14
.end method

.method private updateViews(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 47
    .parameter "glCanvas"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v33

    .line 184
    .local v33, itemCount:I
    if-gtz v33, :cond_e

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearChildren()V

    .line 287
    :goto_d
    return-void

    .line 188
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v8

    .line 189
    .local v8, cellSizeW:F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v12

    .line 191
    .local v12, cellSizeH:F
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8, v12}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v26

    .line 192
    .local v26, cols:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8, v12}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v39

    .line 193
    .local v39, rows:I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v6, :cond_98

    move/from16 v35, v39

    .line 195
    .local v35, minorAxisCount:I
    :goto_38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v27

    .line 196
    .local v27, drawX:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v29

    .line 197
    .local v29, drawY:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v6

    add-float v28, v27, v6

    .line 198
    .local v28, drawX2:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v6

    add-float v30, v29, v6

    .line 200
    .local v30, drawY2:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v41

    .line 201
    .local v41, x:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v43

    .line 202
    .local v43, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->width()F

    move-result v6

    add-float v42, v41, v6

    .line 203
    .local v42, x2:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->height()F

    move-result v6

    add-float v44, v43, v6

    .line 205
    .local v44, y2:F
    move/from16 v0, v41

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 206
    .local v20, clippedX:F
    move/from16 v0, v43

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 207
    .local v22, clippedY:F
    move/from16 v0, v42

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 208
    .local v21, clippedX2:F
    move/from16 v0, v44

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 210
    .local v23, clippedY2:F
    cmpl-float v6, v20, v21

    if-gez v6, :cond_88

    cmpl-float v6, v22, v23

    if-ltz v6, :cond_9b

    .line 211
    :cond_88
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v0, v35

    invoke-interface {v6, v7, v9, v0}, Lcom/google/android/opengl/glview/GridView$Adapter;->adviseVisible(III)V

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearOldViews()V

    goto/16 :goto_d

    .end local v20           #clippedX:F
    .end local v21           #clippedX2:F
    .end local v22           #clippedY:F
    .end local v23           #clippedY2:F
    .end local v27           #drawX:F
    .end local v28           #drawX2:F
    .end local v29           #drawY:F
    .end local v30           #drawY2:F
    .end local v35           #minorAxisCount:I
    .end local v41           #x:F
    .end local v42           #x2:F
    .end local v43           #y:F
    .end local v44           #y2:F
    :cond_98
    move/from16 v35, v26

    .line 193
    goto :goto_38

    .line 216
    .restart local v20       #clippedX:F
    .restart local v21       #clippedX2:F
    .restart local v22       #clippedY:F
    .restart local v23       #clippedY2:F
    .restart local v27       #drawX:F
    .restart local v28       #drawX2:F
    .restart local v29       #drawY:F
    .restart local v30       #drawY2:F
    .restart local v35       #minorAxisCount:I
    .restart local v41       #x:F
    .restart local v42       #x2:F
    .restart local v43       #y:F
    .restart local v44       #y2:F
    :cond_9b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float v15, v8, v6

    .line 217
    .local v15, cellW:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float v16, v12, v6

    .line 220
    .local v16, cellH:F
    sub-float v6, v20, v41

    div-float/2addr v6, v15

    float-to-int v0, v6

    move/from16 v24, v0

    .line 221
    .local v24, col0:I
    sub-float v6, v22, v43

    div-float v6, v6, v16

    float-to-int v0, v6

    move/from16 v37, v0

    .line 222
    .local v37, row0:I
    sub-float v6, v21, v41

    div-float/2addr v6, v15

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v26

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 223
    .local v25, col1:I
    sub-float v6, v23, v43

    div-float v6, v6, v16

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v39

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 225
    .local v38, row1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    .line 226
    .local v40, temp:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/opengl/glview/GLView;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    .line 227
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    .line 229
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeW:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_f1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeH:F

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_11a

    :cond_f1
    const/16 v36, 0x1

    .line 231
    .local v36, needRelayout:Z
    :goto_f3
    move/from16 v17, v37

    .local v17, row:I
    :goto_f5
    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_190

    .line 232
    move/from16 v18, v24

    .local v18, col:I
    :goto_fd
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_18c

    .line 233
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v19

    .line 234
    .local v19, index:I
    move/from16 v0, v19

    move/from16 v1, v33

    if-lt v0, v1, :cond_11d

    .line 232
    :cond_117
    :goto_117
    add-int/lit8 v18, v18, 0x1

    goto :goto_fd

    .line 229
    .end local v17           #row:I
    .end local v18           #col:I
    .end local v19           #index:I
    .end local v36           #needRelayout:Z
    :cond_11a
    const/16 v36, 0x0

    goto :goto_f3

    .line 237
    .restart local v17       #row:I
    .restart local v18       #col:I
    .restart local v19       #index:I
    .restart local v36       #needRelayout:Z
    :cond_11d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/opengl/glview/GLView;

    .line 238
    .local v5, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_16d

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 240
    if-eqz v36, :cond_163

    .line 241
    const/4 v6, 0x1

    move/from16 v0, v18

    int-to-float v7, v0

    mul-float/2addr v7, v15

    add-float v7, v7, v41

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    add-float/2addr v7, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 242
    const/4 v10, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float v6, v6, v16

    add-float v6, v6, v43

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    add-float v11, v6, v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v13

    const/4 v14, 0x0

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 244
    :cond_163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_117

    :cond_16d
    move-object/from16 v10, p0

    move v11, v8

    move/from16 v13, v41

    move/from16 v14, v43

    .line 246
    invoke-direct/range {v10 .. v19}, Lcom/google/android/opengl/glview/GridView;->createView(FFFFFFIII)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 250
    if-eqz v5, :cond_117

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    move/from16 v0, v19

    if-ne v0, v6, :cond_117

    .line 251
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->findFocusable()Lcom/google/android/opengl/glview/GLView;

    move-result-object v32

    .line 252
    .local v32, focusable:Lcom/google/android/opengl/glview/GLView;
    if-eqz v32, :cond_117

    .line 253
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/opengl/glview/GLView;->requestFocus()Z

    goto :goto_117

    .line 231
    .end local v5           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v19           #index:I
    .end local v32           #focusable:Lcom/google/android/opengl/glview/GLView;
    :cond_18c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_f5

    .line 261
    .end local v18           #col:I
    :cond_190
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    move/from16 v3, v37

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v31

    .line 262
    .local v31, firstVisible:I
    add-int/lit8 v6, v33, -0x1

    add-int/lit8 v7, v38, -0x1

    add-int/lit8 v9, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7, v9}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v34

    .line 263
    .local v34, lastVisible:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    sub-int v7, v34, v31

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    invoke-interface {v6, v0, v7, v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->adviseVisible(III)V

    .line 269
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    if-ltz v6, :cond_238

    .line 270
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/opengl/glview/GLView;

    .line 271
    .restart local v5       #view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_238

    .line 272
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mOldViews:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    if-eqz v36, :cond_22d

    .line 274
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/opengl/glview/GridView;->indexToRow(III)I

    move-result v17

    .line 275
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/opengl/glview/GridView;->indexToColumn(III)I

    move-result v18

    .line 277
    .restart local v18       #col:I
    const/4 v6, 0x1

    move/from16 v0, v18

    int-to-float v7, v0

    mul-float/2addr v7, v15

    add-float v7, v7, v41

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    add-float/2addr v7, v9

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 278
    const/4 v10, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float v6, v6, v16

    add-float v6, v6, v43

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    add-float v11, v6, v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v13

    const/4 v14, 0x0

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 280
    .end local v18           #col:I
    :cond_22d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 284
    .end local v5           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_238
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->clearOldViews()V

    .line 285
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeW:F

    .line 286
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/opengl/glview/GridView;->mOldCellSizeH:F

    goto/16 :goto_d
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;ILandroid/graphics/RectF;)V
    .registers 28
    .parameter
    .parameter "direction"
    .parameter "focusedRect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;I",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v3}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v18

    .line 471
    .local v18, itemCount:I
    if-gtz v18, :cond_b

    .line 533
    :goto_a
    return-void

    .line 477
    :cond_b
    if-nez p3, :cond_ed

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v21

    .line 479
    .local v21, x:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v22

    .line 480
    .local v22, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->width()F

    move-result v20

    .line 481
    .local v20, w:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->height()F

    move-result v15

    .line 482
    .local v15, h:F
    const/high16 v3, 0x3f00

    mul-float v3, v3, v20

    add-float v16, v21, v3

    .line 483
    .local v16, hitX:F
    const/high16 v3, 0x3f00

    mul-float/2addr v3, v15

    add-float v17, v22, v3

    .line 484
    .local v17, hitY:F
    sparse-switch p2, :sswitch_data_146

    .line 492
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 485
    :sswitch_46
    move/from16 v17, v22

    .line 509
    .end local v15           #h:F
    .end local v20           #w:F
    .end local v21           #x:F
    .end local v22           #y:F
    :goto_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 510
    .local v4, cellSizeW:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v5

    .line 512
    .local v5, cellSizeH:F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v14

    .line 513
    .local v14, cols:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v19

    .line 515
    .local v19, rows:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v21

    .line 516
    .restart local v21       #x:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v22

    .line 518
    .restart local v22       #y:F
    const/4 v3, 0x0

    add-int/lit8 v6, v14, -0x1

    sub-float v7, v16, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    move/from16 v23, v0

    add-float v23, v23, v4

    div-float v7, v7, v23

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 520
    .local v11, hitCol:I
    const/4 v3, 0x0

    add-int/lit8 v6, v19, -0x1

    sub-float v7, v17, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    move/from16 v23, v0

    add-float v23, v23, v5

    div-float v7, v7, v23

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 523
    .local v10, hitRow:I
    add-int/lit8 v3, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14, v10, v11}, Lcom/google/android/opengl/glview/GridView;->getChildIndex(IIII)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 525
    .local v12, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/opengl/glview/GLView;

    .line 526
    .local v13, child:Lcom/google/android/opengl/glview/GLView;
    if-nez v13, :cond_d6

    .line 527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float v8, v4, v3

    .line 528
    .local v8, cellW:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float v9, v5, v3

    .line 529
    .local v9, cellH:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/opengl/glview/GridView;->createView(FFFFFFIII)Lcom/google/android/opengl/glview/GLView;

    move-result-object v13

    .line 532
    .end local v8           #cellW:F
    .end local v9           #cellH:F
    :cond_d6
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/google/android/opengl/glview/GLView;->addFocusables(Ljava/util/ArrayList;ILandroid/graphics/RectF;)V

    goto/16 :goto_a

    .line 486
    .end local v4           #cellSizeW:F
    .end local v5           #cellSizeH:F
    .end local v10           #hitRow:I
    .end local v11           #hitCol:I
    .end local v12           #index:I
    .end local v13           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v14           #cols:I
    .end local v19           #rows:I
    .restart local v15       #h:F
    .restart local v20       #w:F
    :sswitch_e1
    add-float v17, v22, v15

    goto/16 :goto_48

    .line 488
    :sswitch_e5
    move/from16 v16, v21

    goto/16 :goto_48

    .line 490
    :sswitch_e9
    add-float v16, v21, v20

    goto/16 :goto_48

    .line 495
    .end local v15           #h:F
    .end local v16           #hitX:F
    .end local v17           #hitY:F
    .end local v20           #w:F
    .end local v21           #x:F
    .end local v22           #y:F
    :cond_ed
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float v16, v3, v6

    .line 496
    .restart local v16       #hitX:F
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float v17, v3, v6

    .line 497
    .restart local v17       #hitY:F
    sparse-switch p2, :sswitch_data_160

    .line 505
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected direction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :sswitch_125
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    goto/16 :goto_48

    .line 499
    :sswitch_12d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    goto/16 :goto_48

    .line 501
    :sswitch_135
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    goto/16 :goto_48

    .line 503
    :sswitch_13d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    goto/16 :goto_48

    .line 484
    nop

    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_e9
        0x2 -> :sswitch_e5
        0x11 -> :sswitch_e5
        0x21 -> :sswitch_46
        0x42 -> :sswitch_e9
        0x82 -> :sswitch_e1
    .end sparse-switch

    .line 497
    :sswitch_data_160
    .sparse-switch
        0x1 -> :sswitch_13d
        0x2 -> :sswitch_135
        0x11 -> :sswitch_135
        0x21 -> :sswitch_125
        0x42 -> :sswitch_13d
        0x82 -> :sswitch_12d
    .end sparse-switch
.end method

.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 323
    return-void
.end method

.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .registers 12
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v2

    .line 146
    .local v2, x:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v6

    .line 147
    .local v6, y:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v3

    .line 148
    .local v3, cellSizeW:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, v5}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v7

    .line 149
    .local v7, cellSizeH:F
    invoke-virtual {p1, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 150
    invoke-virtual {p1, v5}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    move-object v4, p1

    move v9, v5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 151
    return-void
.end method

.method public clearChildren()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GridView;->clearViews(Landroid/util/SparseArray;)V

    .line 304
    return-void
.end method

.method protected clearFocus()V
    .registers 2

    .prologue
    .line 559
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->clearFocus()V

    .line 560
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    .line 561
    return-void
.end method

.method protected cols(IFF)I
    .registers 5
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_9

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView;->majorCount(IFF)I

    move-result v0

    .line 99
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    goto :goto_8
.end method

.method public focusOnChild(I)V
    .registers 20
    .parameter "index"

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_8a

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/opengl/glview/GLView;

    .line 439
    .local v16, newFocus:Lcom/google/android/opengl/glview/GLView;
    if-nez v16, :cond_6c

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v3}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v15

    .line 441
    .local v15, itemCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 442
    .local v4, cellSizeW:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v5

    .line 444
    .local v5, cellSizeH:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4, v5}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v13

    .line 445
    .local v13, cols:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4, v5}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v17

    .line 446
    .local v17, rows:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v13}, Lcom/google/android/opengl/glview/GridView;->indexToRow(III)I

    move-result v10

    .line 447
    .local v10, row:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v13}, Lcom/google/android/opengl/glview/GridView;->indexToColumn(III)I

    move-result v11

    .line 448
    .local v11, col:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-float v8, v4, v3

    .line 449
    .local v8, cellW:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-float v9, v5, v3

    .line 450
    .local v9, cellH:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->x()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GridView;->y()F

    move-result v7

    move-object/from16 v3, p0

    move/from16 v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/opengl/glview/GridView;->createView(FFFFFFIII)Lcom/google/android/opengl/glview/GLView;

    move-result-object v16

    .line 453
    .end local v4           #cellSizeW:F
    .end local v5           #cellSizeH:F
    .end local v8           #cellW:F
    .end local v9           #cellH:F
    .end local v10           #row:I
    .end local v11           #col:I
    .end local v13           #cols:I
    .end local v15           #itemCount:I
    .end local v17           #rows:I
    :cond_6c
    if-eqz v16, :cond_8a

    .line 454
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/GLView;->findFocusable()Lcom/google/android/opengl/glview/GLView;

    move-result-object v14

    .line 455
    .local v14, focusable:Lcom/google/android/opengl/glview/GLView;
    if-eqz v14, :cond_8a

    .line 456
    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLView;->requestFocus()Z

    .line 457
    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v3

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v6

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v7

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v12

    invoke-virtual {v14, v3, v6, v7, v12}, Lcom/google/android/opengl/glview/GLView;->requestRectangleOnScreen(FFFF)V

    .line 465
    .end local v14           #focusable:Lcom/google/android/opengl/glview/GLView;
    .end local v16           #newFocus:Lcom/google/android/opengl/glview/GLView;
    :cond_8a
    return-void
.end method

.method public final gapH()F
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    return v0
.end method

.method public final gapW()F
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    return v0
.end method

.method protected gestureKeyDown(II)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 6
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    invoke-static {p1, p2}, Lcom/google/android/opengl/glview/GridView;->keyCodeToFocusDir(II)I

    move-result v1

    .line 380
    .local v1, focusDir:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 381
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/opengl/glview/GridView;->handleFocusEvent(III)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    .line 383
    :cond_c
    return-object v0
.end method

.method protected getAdapter()Lcom/google/android/opengl/glview/GridView$Adapter;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    return-object v0
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 3
    .parameter "index"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method protected getChildIndex(IIII)I
    .registers 6
    .parameter "rows"
    .parameter "cols"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_8

    .line 121
    mul-int v0, p4, p1

    add-int/2addr v0, p3

    .line 123
    :goto_7
    return v0

    :cond_8
    mul-int v0, p3, p2

    add-int/2addr v0, p4

    goto :goto_7
.end method

.method public getFocusedChild()Lcom/google/android/opengl/glview/GLView;
    .registers 3

    .prologue
    .line 537
    iget v0, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 538
    const/4 v0, 0x0

    .line 540
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLView;

    goto :goto_6
.end method

.method public getMinLength(Z)F
    .registers 11
    .parameter "horizontal"

    .prologue
    const/high16 v8, 0x4000

    .line 155
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v1

    .line 156
    .local v1, cellW:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/opengl/glview/GridView$Adapter;->getCellLength(Z)F

    move-result v0

    .line 157
    .local v0, cellH:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v5}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v3

    .line 158
    .local v3, itemCount:I
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/opengl/glview/GridView;->cols(IFF)I

    move-result v2

    .line 159
    .local v2, cols:I
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/opengl/glview/GridView;->rows(IFF)I

    move-result v4

    .line 160
    .local v4, rows:I
    if-lez v2, :cond_40

    if-lez v4, :cond_40

    .line 161
    if-eqz p1, :cond_32

    .line 162
    int-to-float v5, v2

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mGapW:F

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginW:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 167
    :goto_31
    return v5

    .line 164
    :cond_32
    int-to-float v5, v4

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mGapH:F

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/opengl/glview/GridView;->mMarginH:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    goto :goto_31

    .line 167
    :cond_40
    const/4 v5, 0x0

    goto :goto_31
.end method

.method protected handleFocusGainInternal(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)V
    .registers 7
    .parameter "child"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 546
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->handleFocusGainInternal(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)V

    .line 547
    const/4 v1, -0x1

    .line 548
    .local v1, focusedChildKey:I
    if-eqz p1, :cond_12

    .line 549
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GridView;->indexOfChild(Lcom/google/android/opengl/glview/GLView;)I

    move-result v0

    .line 550
    .local v0, focusedChildIndex:I
    if-ltz v0, :cond_12

    .line 551
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 554
    .end local v0           #focusedChildIndex:I
    :cond_12
    iput v1, p0, Lcom/google/android/opengl/glview/GridView;->mFocusedChildKey:I

    .line 555
    return-void
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public layout(ZFF)V
    .registers 6
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GridView;->getMinLength(Z)F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 173
    .local v0, actualLength:F
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/opengl/glview/GridView;->internalLayout(ZFF)V

    .line 174
    return-void
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    if-eqz v0, :cond_e

    .line 356
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GridView$Adapter;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 357
    const/4 v0, 0x1

    .line 360
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GridView;->updateViews(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 179
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    return v0
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 328
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 329
    .local v0, index:I
    if-ltz v0, :cond_17

    .line 332
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 333
    .local v1, key:I
    iget-object v2, p0, Lcom/google/android/opengl/glview/GridView;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 334
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 336
    .end local v1           #key:I
    :cond_17
    return-void
.end method

.method protected rows(IFF)I
    .registers 5
    .parameter "itemCount"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GridView;->mColumnMajor:Z

    if-eqz v0, :cond_9

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/google/android/opengl/glview/GridView;->minorCount(FF)I

    move-result v0

    .line 91
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GridView;->majorCount(IFF)I

    move-result v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/GridView;->mAdapter:Lcom/google/android/opengl/glview/GridView$Adapter;

    invoke-interface {v1}, Lcom/google/android/opengl/glview/GridView$Adapter;->count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(ILjava/lang/Object;)V
    .registers 4
    .parameter "message"
    .parameter "visitor"

    .prologue
    .line 365
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_8

    .line 366
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GridView;->clearChildren()V

    .line 370
    :goto_7
    return-void

    .line 368
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->visit(ILjava/lang/Object;)V

    goto :goto_7
.end method
