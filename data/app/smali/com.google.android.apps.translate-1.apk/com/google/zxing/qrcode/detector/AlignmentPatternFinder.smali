.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/Vector;

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .registers 10
    .parameter "image"
    .parameter "startX"
    .parameter "startY"
    .parameter "width"
    .parameter "height"
    .parameter "moduleSize"
    .parameter "resultPointCallback"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 70
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 5
    .parameter "stateCount"
    .parameter "end"

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckVertical(IIII)F
    .registers 15
    .parameter "startI"
    .parameter "centerJ"
    .parameter "maxCount"
    .parameter "originalStateCountTotal"

    .prologue
    const/4 v9, 0x2

    const/high16 v5, 0x7fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 204
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 206
    .local v1, image:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 207
    .local v2, maxI:I
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 208
    .local v3, stateCount:[I
    aput v7, v3, v7

    .line 209
    aput v7, v3, v8

    .line 210
    aput v7, v3, v9

    .line 213
    move v0, p1

    .line 214
    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_29

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_29

    aget v6, v3, v8

    if-gt v6, p3, :cond_29

    .line 215
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 216
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 219
    :cond_29
    if-ltz v0, :cond_2f

    aget v6, v3, v8

    if-le v6, p3, :cond_30

    .line 252
    :cond_2f
    :goto_2f
    return v5

    .line 222
    :cond_30
    :goto_30
    if-ltz v0, :cond_45

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_45

    aget v6, v3, v7

    if-gt v6, p3, :cond_45

    .line 223
    aget v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v7

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 226
    :cond_45
    aget v6, v3, v7

    if-gt v6, p3, :cond_2f

    .line 231
    add-int/lit8 v0, p1, 0x1

    .line 232
    :goto_4b
    if-ge v0, v2, :cond_60

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_60

    aget v6, v3, v8

    if-gt v6, p3, :cond_60

    .line 233
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 236
    :cond_60
    if-eq v0, v2, :cond_2f

    aget v6, v3, v8

    if-gt v6, p3, :cond_2f

    .line 239
    :goto_66
    if-ge v0, v2, :cond_7b

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_7b

    aget v6, v3, v9

    if-gt v6, p3, :cond_7b

    .line 240
    aget v6, v3, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v9

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 243
    :cond_7b
    aget v6, v3, v9

    if-gt v6, p3, :cond_2f

    .line 247
    aget v6, v3, v7

    aget v7, v3, v8

    add-int/2addr v6, v7

    aget v7, v3, v9

    add-int v4, v6, v7

    .line 248
    .local v4, stateCountTotal:I
    sub-int v6, v4, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v7, p4, 0x2

    if-ge v6, v7, :cond_2f

    .line 252
    invoke-direct {p0, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_2f
.end method

.method private foundPatternCross([I)Z
    .registers 12
    .parameter "stateCount"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 171
    .local v2, moduleSize:F
    const/high16 v7, 0x3f00

    mul-float v1, v2, v7

    .line 175
    .local v1, maxVariance:F
    const/4 v3, 0x1

    .line 176
    .local v3, passA:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    const/4 v7, 0x3

    if-ge v0, v7, :cond_1c

    .line 177
    aget v7, p1, v0

    int-to-float v7, v7

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v1

    if-ltz v7, :cond_48

    .line 178
    const/4 v3, 0x0

    .line 185
    :cond_1c
    const/high16 v7, 0x4040

    mul-float/2addr v7, v2

    aget v8, p1, v5

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aget v8, p1, v6

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aget v8, p1, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v1

    if-gez v7, :cond_4b

    aget v7, p1, v5

    aget v8, p1, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v7, v1

    if-gez v7, :cond_4b

    move v4, v6

    .line 188
    .local v4, passB:Z
    :goto_42
    if-nez v3, :cond_46

    if-eqz v4, :cond_47

    :cond_46
    move v5, v6

    :cond_47
    return v5

    .line 176
    .end local v4           #passB:Z
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4b
    move v4, v5

    .line 185
    goto :goto_42
.end method

.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 14
    .parameter "stateCount"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 267
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 268
    .local v7, stateCountTotal:I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 269
    .local v2, centerJ:F
    float-to-int v8, v2

    shl-int/lit8 v9, v7, 0x1

    div-int/lit8 v9, v9, 0x3

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 270
    .local v1, centerI:F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_62

    .line 271
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4040

    div-float v3, v8, v9

    .line 272
    .local v3, estimatedModuleSize:F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    .line 273
    .local v5, max:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_36
    if-ge v4, v5, :cond_4f

    .line 274
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 276
    .local v0, center:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 277
    new-instance v8, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v8, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 287
    .end local v0           #center:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v3           #estimatedModuleSize:F
    .end local v4           #index:I
    .end local v5           #max:I
    :goto_4b
    return-object v8

    .line 273
    .restart local v0       #center:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .restart local v3       #estimatedModuleSize:F
    .restart local v4       #index:I
    .restart local v5       #max:I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 281
    .end local v0           #center:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_4f
    new-instance v6, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 282
    .local v6, point:Lcom/google/zxing/ResultPoint;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 283
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_62

    .line 284
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 287
    .end local v3           #estimatedModuleSize:F
    .end local v4           #index:I
    .end local v5           #max:I
    .end local v6           #point:Lcom/google/zxing/ResultPoint;
    :cond_62
    const/4 v8, 0x0

    goto :goto_4b
.end method


# virtual methods
.method find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 88
    iget v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 89
    .local v8, startX:I
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 90
    .local v2, height:I
    iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int v6, v8, v10

    .line 91
    .local v6, maxJ:I
    iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    shr-int/lit8 v11, v2, 0x1

    add-int v7, v10, v11

    .line 94
    .local v7, middleI:I
    const/4 v10, 0x3

    new-array v9, v10, [I

    .line 95
    .local v9, stateCount:[I
    const/4 v4, 0x0

    .local v4, iGen:I
    :goto_15
    if-ge v4, v2, :cond_8d

    .line 97
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_35

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v10, v10, 0x1

    :goto_1f
    add-int v3, v7, v10

    .line 98
    .local v3, i:I
    aput v12, v9, v12

    .line 99
    aput v12, v9, v13

    .line 100
    aput v12, v9, v14

    .line 101
    move v5, v8

    .line 105
    .local v5, j:I
    :goto_28
    if-ge v5, v6, :cond_3b

    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 97
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_35
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v10, v10, 0x1

    neg-int v10, v10

    goto :goto_1f

    .line 108
    .restart local v3       #i:I
    .restart local v5       #j:I
    :cond_3b
    const/4 v1, 0x0

    .line 109
    .local v1, currentState:I
    :goto_3c
    if-ge v5, v6, :cond_7e

    .line 110
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 112
    if-ne v1, v13, :cond_51

    .line 113
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    .line 136
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 115
    :cond_51
    if-ne v1, v14, :cond_6a

    .line 116
    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 117
    invoke-direct {p0, v9, v3, v5}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 118
    .local v0, confirmed:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    if-eqz v0, :cond_60

    .line 150
    .end local v0           #confirmed:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v1           #currentState:I
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_5f
    :goto_5f
    return-object v0

    .line 122
    .restart local v1       #currentState:I
    .restart local v3       #i:I
    .restart local v5       #j:I
    :cond_60
    aget v10, v9, v14

    aput v10, v9, v12

    .line 123
    aput v13, v9, v13

    .line 124
    aput v12, v9, v14

    .line 125
    const/4 v1, 0x1

    goto :goto_4e

    .line 127
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4e

    .line 131
    :cond_73
    if-ne v1, v13, :cond_77

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_77
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4e

    .line 138
    :cond_7e
    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 139
    invoke-direct {p0, v9, v3, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 140
    .restart local v0       #confirmed:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    if-nez v0, :cond_5f

    .line 95
    .end local v0           #confirmed:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 149
    .end local v1           #currentState:I
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_8d
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9f

    .line 150
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object v0, v10

    goto :goto_5f

    .line 153
    :cond_9f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method
