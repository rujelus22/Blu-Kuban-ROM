.class public Lcom/android/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    return-void
.end method


# virtual methods
.method public computeEventRect(IIIILcom/android/calendar/Event;)Z
    .registers 20
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"

    .prologue
    .line 49
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 50
    const/4 v11, 0x0

    .line 103
    :goto_7
    return v11

    .line 53
    :cond_8
    iget v1, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 54
    .local v1, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v8, v0, Lcom/android/calendar/Event;->startDay:I

    .line 55
    .local v8, startDay:I
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    .line 57
    .local v4, endDay:I
    if-gt v8, p1, :cond_16

    if-ge v4, p1, :cond_18

    .line 58
    :cond_16
    const/4 v11, 0x0

    goto :goto_7

    .line 61
    :cond_18
    move-object/from16 v0, p5

    iget v10, v0, Lcom/android/calendar/Event;->startTime:I

    .line 62
    .local v10, startTime:I
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/calendar/Event;->endTime:I

    .line 66
    .local v6, endTime:I
    if-ge v8, p1, :cond_23

    .line 67
    const/4 v10, 0x0

    .line 72
    :cond_23
    if-le v4, p1, :cond_27

    .line 73
    const/16 v6, 0x5a0

    .line 76
    :cond_27
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v2

    .line 77
    .local v2, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v7

    .line 78
    .local v7, maxCols:I
    div-int/lit8 v9, v10, 0x3c

    .line 79
    .local v9, startHour:I
    div-int/lit8 v5, v6, 0x3c

    .line 84
    .local v5, endHour:I
    mul-int/lit8 v11, v5, 0x3c

    if-ne v11, v6, :cond_39

    .line 85
    add-int/lit8 v5, v5, -0x1

    .line 87
    :cond_39
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->top:F

    .line 88
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v12, v10

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->top:F

    .line 89
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v12, v9

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->top:F

    .line 91
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->bottom:F

    .line 92
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v12, v6

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->bottom:F

    .line 93
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v12, v5

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->bottom:F

    .line 96
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_98

    .line 97
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->top:F

    iget v12, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->bottom:F

    .line 100
    :cond_98
    add-int/lit8 v11, v7, 0x1

    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    mul-int/2addr v11, v12

    sub-int v11, p4, v11

    int-to-float v11, v11

    int-to-float v12, v7

    div-float v3, v11, v12

    .line 101
    .local v3, colWidth:F
    move/from16 v0, p2

    int-to-float v11, v0

    int-to-float v12, v2

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v3

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->left:F

    .line 102
    move-object/from16 v0, p5

    iget v11, v0, Lcom/android/calendar/Event;->left:F

    add-float/2addr v11, v3

    move-object/from16 v0, p5

    iput v11, v0, Lcom/android/calendar/Event;->right:F

    .line 103
    const/4 v11, 0x1

    goto/16 :goto_7
.end method

.method eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 110
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

    .line 112
    const/4 v0, 0x1

    .line 114
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
    .line 121
    iget v3, p3, Lcom/android/calendar/Event;->left:F

    .line 122
    .local v3, left:F
    iget v4, p3, Lcom/android/calendar/Event;->right:F

    .line 123
    .local v4, right:F
    iget v5, p3, Lcom/android/calendar/Event;->top:F

    .line 124
    .local v5, top:F
    iget v0, p3, Lcom/android/calendar/Event;->bottom:F

    .line 126
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_46

    .line 127
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_20

    .line 128
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_1d

    .line 129
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1a

    .line 131
    const/4 v1, 0x0

    .line 168
    :cond_19
    :goto_19
    return v1

    .line 134
    :cond_1a
    sub-float v1, p2, v0

    goto :goto_19

    .line 137
    :cond_1d
    sub-float v1, v5, p2

    goto :goto_19

    .line 141
    :cond_20
    sub-float v1, p1, v4

    .line 142
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_34

    .line 144
    sub-float v2, v5, p2

    .line 145
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 147
    .end local v2           #dy:F
    :cond_34
    cmpl-float v6, p2, v0

    if-lez v6, :cond_19

    .line 149
    sub-float v2, p2, v0

    .line 150
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 156
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_46
    sub-float v1, v3, p1

    .line 157
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_5a

    .line 159
    sub-float v2, v5, p2

    .line 160
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_19

    .line 162
    .end local v2           #dy:F
    :cond_5a
    cmpl-float v6, p2, v0

    if-lez v6, :cond_19

    .line 164
    sub-float v2, p2, v0

    .line 165
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

.method setCellMargin(I)V
    .registers 2
    .parameter "cellMargin"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    .line 32
    return-void
.end method

.method public setHourGap(F)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    .line 36
    return-void
.end method

.method public setHourHeight(F)V
    .registers 3
    .parameter "height"

    .prologue
    .line 43
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 44
    return-void
.end method

.method public setMinEventHeight(F)V
    .registers 2
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    .line 40
    return-void
.end method
