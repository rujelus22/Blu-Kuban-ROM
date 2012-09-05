.class public Lcom/android/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBottomGap:I

.field private mCellMargin:F

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "EventGeometry"

    iput-object v0, p0, Lcom/android/calendar/EventGeometry;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    return-void
.end method


# virtual methods
.method computeEventRect(IIIILcom/android/calendar/Event;I)Z
    .registers 22
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"
    .parameter "numDays"

    .prologue
    .line 65
    move-object/from16 v0, p5

    iget-boolean v12, v0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v12, :cond_8

    .line 66
    const/4 v12, 0x0

    .line 166
    :goto_7
    return v12

    .line 69
    :cond_8
    iget v1, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 70
    .local v1, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v9, v0, Lcom/android/calendar/Event;->startDay:I

    .line 71
    .local v9, startDay:I
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    .line 73
    .local v4, endDay:I
    move/from16 v0, p1

    if-gt v9, v0, :cond_1a

    move/from16 v0, p1

    if-ge v4, v0, :cond_1c

    .line 74
    :cond_1a
    const/4 v12, 0x0

    goto :goto_7

    .line 79
    :cond_1c
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getAdjustStartTime()I

    move-result v11

    .line 80
    .local v11, startTime:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getAdjustEndTime()I

    move-result v6

    .line 84
    .local v6, endTime:I
    move/from16 v0, p1

    if-ge v9, v0, :cond_29

    .line 85
    const/4 v11, 0x0

    .line 90
    :cond_29
    move/from16 v0, p1

    if-le v4, v0, :cond_2f

    .line 91
    const/16 v6, 0x5a0

    .line 94
    :cond_2f
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 95
    .local v2, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 96
    .local v7, maxCols:I
    div-int/lit8 v10, v11, 0x3c

    .line 97
    .local v10, startHour:I
    div-int/lit8 v5, v6, 0x3c

    .line 105
    .local v5, endHour:I
    mul-int/lit8 v12, v5, 0x3c

    if-ne v12, v6, :cond_4b

    .line 106
    add-int/lit8 v5, v5, -0x1

    .line 110
    :cond_4b
    move/from16 v0, p4

    int-to-float v12, v0

    int-to-float v13, v7

    div-float v3, v12, v13

    .line 111
    .local v3, colWidth:F
    const/4 v12, 0x7

    move/from16 v0, p6

    if-ne v0, v12, :cond_148

    .line 112
    move/from16 v0, p4

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    int-to-float v13, v7

    div-float v3, v12, v13

    .line 114
    const/4 v12, 0x1

    if-le v7, v12, :cond_12a

    .line 115
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    add-float/2addr v12, v13

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    .line 116
    if-lez v2, :cond_81

    const/4 v12, 0x4

    if-ge v7, v12, :cond_81

    .line 117
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    int-to-float v13, v2

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    .line 118
    :cond_81
    add-int v12, p2, p4

    int-to-float v12, v12

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->left:F

    add-float/2addr v13, v3

    const/high16 v14, 0x3f80

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    .line 125
    :goto_97
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->right:F

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->right:F

    float-to-int v13, v13

    int-to-float v13, v13

    sub-float v8, v12, v13

    .line 126
    .local v8, oneHalf:F
    const/high16 v12, 0x3f00

    cmpl-float v12, v8, v12

    if-nez v12, :cond_bf

    .line 127
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3e80

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    .line 128
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->right:F

    const/high16 v13, 0x3e80

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    .line 152
    .end local v8           #oneHalf:F
    :cond_bf
    :goto_bf
    move/from16 v0, p3

    int-to-float v12, v0

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    .line 153
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v13, v11

    mul-float/2addr v13, v1

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    .line 154
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v13, v10

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    .line 156
    move/from16 v0, p3

    int-to-float v12, v0

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    .line 157
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v13, v6

    mul-float/2addr v13, v1

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    .line 158
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v13, v5

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    .line 159
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    .line 162
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->top:F

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_127

    .line 163
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    .line 166
    :cond_127
    const/4 v12, 0x1

    goto/16 :goto_7

    .line 120
    :cond_12a
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    .line 121
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v0, p4

    int-to-float v13, v0

    add-float/2addr v12, v13

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_97

    .line 141
    :cond_148
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_153

    .line 142
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    int-to-float v12, v12

    sub-float/2addr v3, v12

    .line 144
    :cond_153
    move/from16 v0, p2

    int-to-float v12, v0

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    .line 145
    const/4 v12, 0x1

    if-le v7, v12, :cond_174

    .line 146
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v3

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_bf

    .line 148
    :cond_174
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v3

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_bf
.end method

.method computeNewStartTime(F)I
    .registers 5
    .parameter "eventTop"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    iget v1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 228
    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_26

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method pointToEvent(FFLcom/android/calendar/Event;)F
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 239
    iget v3, p3, Lcom/android/calendar/Event;->left:F

    .line 240
    .local v3, left:F
    iget v4, p3, Lcom/android/calendar/Event;->right:F

    .line 241
    .local v4, right:F
    iget v5, p3, Lcom/android/calendar/Event;->top:F

    .line 242
    .local v5, top:F
    iget v0, p3, Lcom/android/calendar/Event;->bottom:F

    .line 244
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_46

    .line 245
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_20

    .line 246
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_1d

    .line 247
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1a

    .line 249
    const/4 v1, 0x0

    .line 286
    :cond_19
    :goto_19
    return v1

    .line 252
    :cond_1a
    sub-float v1, p2, v0

    goto :goto_19

    .line 255
    :cond_1d
    sub-float v1, v5, p2

    goto :goto_19

    .line 259
    :cond_20
    sub-float v1, p1, v4

    .line 260
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_34

    .line 262
    sub-float v2, v5, p2

    .line 263
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 265
    .end local v2           #dy:F
    :cond_34
    cmpl-float v6, p2, v0

    if-lez v6, :cond_19

    .line 267
    sub-float v2, p2, v0

    .line 268
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 274
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_46
    sub-float v1, v3, p1

    .line 275
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_5a

    .line 277
    sub-float v2, v5, p2

    .line 278
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 280
    .end local v2           #dy:F
    :cond_5a
    cmpl-float v6, p2, v0

    if-lez v6, :cond_19

    .line 282
    sub-float v2, p2, v0

    .line 283
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19
.end method

.method setBottomGap(I)V
    .registers 2
    .parameter "bottomGap"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    .line 60
    return-void
.end method

.method setCellMargin(F)V
    .registers 2
    .parameter "cellMargin"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    .line 40
    return-void
.end method

.method setHourGap(F)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    .line 44
    return-void
.end method

.method setHourHeight(F)V
    .registers 3
    .parameter "height"

    .prologue
    .line 51
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 52
    return-void
.end method

.method setMinEventHeight(F)V
    .registers 2
    .parameter "height"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    .line 48
    return-void
.end method

.method setMoreEventOffset(I)V
    .registers 2
    .parameter "moreOffset"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    .line 56
    return-void
.end method
