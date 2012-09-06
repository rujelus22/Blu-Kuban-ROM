.class public Lcom/android/inputmethod/keyboard/ProximityInfo;
.super Ljava/lang/Object;
.source "ProximityInfo.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I = null

.field public static final MAX_PROXIMITY_CHARS_SIZE:I = 0x10

.field private static SEARCH_DISTANCE:F


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mGridHeight:I

.field private final mGridNeighbors:[[I

.field private final mGridSize:I

.field private final mGridWidth:I

.field private final mKeyHeight:I

.field private final mKeyboardHeight:I

.field private final mKeyboardMinWidth:I

.field private mNativeProximityInfo:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const v0, 0x3f99999a

    sput v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 80
    invoke-static {}, Lcom/android/inputmethod/latin/Utils;->loadNativeLibrary()V

    .line 29
    return-void
.end method

.method constructor <init>(IIIIIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V
    .registers 11
    .parameter "gridWidth"
    .parameter "gridHeight"
    .parameter "minWidth"
    .parameter "height"
    .parameter "keyWidth"
    .parameter "keyHeight"
    .parameter
    .parameter "touchPositionCorrection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p7, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    .line 49
    iput p2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    .line 50
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    .line 51
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    .line 52
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    .line 53
    iput p3, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    .line 54
    iput p4, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    .line 55
    iput p6, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    .line 56
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[I

    .line 57
    if-eqz p3, :cond_32

    if-nez p4, :cond_33

    .line 62
    :cond_32
    :goto_32
    return-void

    .line 61
    :cond_33
    invoke-direct {p0, p5, p7, p8}, Lcom/android/inputmethod/keyboard/ProximityInfo;->computeNearestNeighbors(ILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V

    goto :goto_32
.end method

.method private calculateSweetSpot(Ljava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;[F[F[F)V
    .registers 25
    .parameter
    .parameter "touchPositionCorrection"
    .parameter "sweetSpotCenterXs"
    .parameter "sweetSpotCenterYs"
    .parameter "sweetSpotRadii"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;",
            "[F[F[F)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 137
    .local v9, keyCount:I
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    .line 138
    .local v14, xs:[F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    move-object/from16 v16, v0

    .line 139
    .local v16, ys:[F
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    .line 140
    .local v10, radii:[F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_13
    if-lt v7, v9, :cond_16

    .line 158
    return-void

    .line 141
    :cond_16
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/keyboard/Key;

    .line 142
    .local v8, key:Lcom/android/inputmethod/keyboard/Key;
    iget-object v2, v8, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 143
    .local v2, hitBox:Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyHeight:I

    move/from16 v18, v0

    div-int v12, v17, v18

    .line 144
    .local v12, row:I
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_9d

    .line 145
    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v3, v17, v18

    .line 146
    .local v3, hitBoxCenterX:F
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v4, v17, v18

    .line 147
    .local v4, hitBoxCenterY:F
    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 148
    .local v6, hitBoxWidth:F
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v5, v0

    .line 149
    .local v5, hitBoxHeight:F
    aget v13, v14, v12

    .line 150
    .local v13, x:F
    aget v15, v16, v12

    .line 151
    .local v15, y:F
    aget v11, v10, v12

    .line 152
    .local v11, radius:F
    mul-float v17, v13, v6

    add-float v17, v17, v3

    aput v17, p3, v7

    .line 153
    mul-float v17, v15, v5

    add-float v17, v17, v4

    aput v17, p4, v7

    .line 155
    mul-float v17, v6, v6

    mul-float v18, v5, v5

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    .line 154
    aput v17, p5, v7

    .line 140
    .end local v3           #hitBoxCenterX:F
    .end local v4           #hitBoxCenterY:F
    .end local v5           #hitBoxHeight:F
    .end local v6           #hitBoxWidth:F
    .end local v11           #radius:F
    .end local v13           #x:F
    .end local v15           #y:F
    :cond_9d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13
.end method

.method private computeNearestNeighbors(ILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V
    .registers 25
    .parameter "defaultWidth"
    .parameter
    .parameter "touchPositionCorrection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    move/from16 v0, p1

    int-to-float v1, v0

    sget v2, Lcom/android/inputmethod/keyboard/ProximityInfo;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v18, v0

    .line 179
    .local v18, thresholdBase:I
    mul-int v17, v18, v18

    .line 181
    .local v17, threshold:I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [I

    .line 182
    .local v15, indices:[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    mul-int v13, v1, v2

    .line 183
    .local v13, gridWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    mul-int v12, v1, v2

    .line 184
    .local v12, gridHeight:I
    const/16 v19, 0x0

    .local v19, x:I
    :goto_27
    move/from16 v0, v19

    if-lt v0, v13, :cond_41

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfo([[IIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V

    .line 202
    return-void

    .line 185
    :cond_41
    const/16 v20, 0x0

    .local v20, y:I
    :goto_43
    move/from16 v0, v20

    if-lt v0, v12, :cond_4e

    .line 184
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    add-int v19, v19, v1

    goto :goto_27

    .line 186
    :cond_4e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int v8, v19, v1

    .line 187
    .local v8, centerX:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int v9, v20, v1

    .line 188
    .local v9, centerY:I
    const/4 v10, 0x0

    .line 189
    .local v10, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_60
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v14, v1, :cond_8c

    .line 195
    new-array v7, v10, [I

    .line 196
    .local v7, cell:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int v3, v19, v3

    add-int/2addr v2, v3

    aput-object v7, v1, v2

    .line 185
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    add-int v20, v20, v1

    goto :goto_43

    .line 190
    .end local v7           #cell:[I
    :cond_8c
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/inputmethod/keyboard/Key;

    .line 191
    .local v16, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual/range {v16 .. v16}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 189
    :cond_9a
    :goto_9a
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    .line 192
    :cond_9d
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_9a

    .line 193
    add-int/lit8 v11, v10, 0x1

    .end local v10           #count:I
    .local v11, count:I
    aput v14, v15, v10

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    goto :goto_9a
.end method

.method public static createDummyProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 65
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(IIIIIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V

    return-object v0
.end method

.method public static createSpellCheckerProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .registers 16

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-static {}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createDummyProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v0

    .line 72
    .local v0, spellCheckerProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;
    const/16 v1, 0x10

    .line 73
    const/16 v2, 0x1e0

    const/16 v3, 0x12c

    const/16 v4, 0xa

    const/4 v5, 0x3

    sget-object v6, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->PROXIMITY:[I

    .line 74
    const/4 v7, 0x0

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    move-object v14, v8

    move-object v15, v8

    .line 71
    invoke-direct/range {v0 .. v15}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I

    move-result v1

    .line 70
    iput v1, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    .line 75
    return-object v0
.end method

.method private native releaseProximityInfoNative(I)V
.end method

.method private final setProximityInfo([[IIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V
    .registers 34
    .parameter "gridNeighborKeyIndexes"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter
    .parameter "touchPositionCorrection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[III",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;",
            "Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p4, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    mul-int/lit8 v2, v2, 0x10

    new-array v14, v2, [I

    .line 93
    .local v14, proximityCharsArray:[I
    const/4 v2, -0x1

    invoke-static {v14, v2}, Ljava/util/Arrays;->fill([II)V

    .line 94
    const/16 v24, 0x0

    .local v24, i:I
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    move/from16 v0, v24

    if-lt v0, v2, :cond_73

    .line 101
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 102
    .local v15, keyCount:I
    new-array v0, v15, [I

    move-object/from16 v16, v0

    .line 103
    .local v16, keyXCoordinates:[I
    new-array v0, v15, [I

    move-object/from16 v17, v0

    .line 104
    .local v17, keyYCoordinates:[I
    new-array v0, v15, [I

    move-object/from16 v18, v0

    .line 105
    .local v18, keyWidths:[I
    new-array v0, v15, [I

    move-object/from16 v19, v0

    .line 106
    .local v19, keyHeights:[I
    new-array v0, v15, [I

    move-object/from16 v20, v0

    .line 107
    .local v20, keyCharCodes:[I
    const/16 v24, 0x0

    :goto_30
    move/from16 v0, v24

    if-lt v0, v15, :cond_9a

    .line 116
    const/4 v5, 0x0

    check-cast v5, [F

    .line 117
    .local v5, sweetSpotCenterXs:[F
    const/4 v6, 0x0

    check-cast v6, [F

    .line 118
    .local v6, sweetSpotCenterYs:[F
    const/4 v7, 0x0

    check-cast v7, [F

    .line 120
    .local v7, sweetSpotRadii:[F
    if-eqz p5, :cond_54

    invoke-virtual/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->isValid()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 121
    new-array v5, v15, [F

    .line 122
    new-array v6, v15, [F

    .line 123
    new-array v7, v15, [F

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/ProximityInfo;->calculateSweetSpot(Ljava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;[F[F[F)V

    .line 128
    :cond_54
    const/16 v9, 0x10

    .line 129
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridHeight:I

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 128
    invoke-direct/range {v8 .. v23}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    .line 132
    return-void

    .line 95
    .end local v5           #sweetSpotCenterXs:[F
    .end local v6           #sweetSpotCenterYs:[F
    .end local v7           #sweetSpotRadii:[F
    .end local v15           #keyCount:I
    .end local v16           #keyXCoordinates:[I
    .end local v17           #keyYCoordinates:[I
    .end local v18           #keyWidths:[I
    .end local v19           #keyHeights:[I
    .end local v20           #keyCharCodes:[I
    :cond_73
    aget-object v2, p1, v24

    array-length v0, v2

    move/from16 v27, v0

    .line 96
    .local v27, proximityCharsLength:I
    const/16 v25, 0x0

    .local v25, j:I
    :goto_7a
    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_83

    .line 94
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 97
    :cond_83
    mul-int/lit8 v2, v24, 0x10

    add-int v3, v2, v25

    .line 98
    aget-object v2, p1, v24

    aget v2, v2, v25

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 97
    aput v2, v14, v3

    .line 96
    add-int/lit8 v25, v25, 0x1

    goto :goto_7a

    .line 108
    .end local v25           #j:I
    .end local v27           #proximityCharsLength:I
    .restart local v15       #keyCount:I
    .restart local v16       #keyXCoordinates:[I
    .restart local v17       #keyYCoordinates:[I
    .restart local v18       #keyWidths:[I
    .restart local v19       #keyHeights:[I
    .restart local v20       #keyCharCodes:[I
    :cond_9a
    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/inputmethod/keyboard/Key;

    .line 109
    .local v26, key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    aput v2, v16, v24

    .line 110
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    aput v2, v17, v24

    .line 111
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    aput v2, v18, v24

    .line 112
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    aput v2, v19, v24

    .line 113
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    aput v2, v20, v24

    .line 107
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_30
.end method

.method private native setProximityInfoNative(IIIII[II[I[I[I[I[I[F[F[F)I
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    if-eqz v0, :cond_c

    .line 168
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/ProximityInfo;->releaseProximityInfoNative(I)V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 172
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    return-void

    .line 171
    :catchall_10
    move-exception v0

    .line 172
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    throw v0
.end method

.method public getNativeProximityInfo()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mNativeProximityInfo:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[I

    if-nez v1, :cond_7

    .line 206
    sget-object v1, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    .line 214
    :goto_6
    return-object v1

    .line 208
    :cond_7
    if-ltz p1, :cond_29

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardMinWidth:I

    if-ge p1, v1, :cond_29

    if-ltz p2, :cond_29

    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mKeyboardHeight:I

    if-ge p2, v1, :cond_29

    .line 209
    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 210
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridSize:I

    if-ge v0, v1, :cond_29

    .line 211
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/ProximityInfo;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    goto :goto_6

    .line 214
    .end local v0           #index:I
    :cond_29
    sget-object v1, Lcom/android/inputmethod/keyboard/ProximityInfo;->EMPTY_INT_ARRAY:[I

    goto :goto_6
.end method
