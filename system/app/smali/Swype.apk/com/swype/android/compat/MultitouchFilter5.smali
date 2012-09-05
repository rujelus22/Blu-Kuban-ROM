.class public Lcom/swype/android/compat/MultitouchFilter5;
.super Ljava/lang/Object;
.source "MultitouchFilter5.java"

# interfaces
.implements Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/compat/MultitouchFilter5$1;,
        Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    }
.end annotation


# static fields
.field private static FILTER_ENABLED:Z = false

.field private static final MAX_BUFFER_TIME:J = 0xfaL

.field private static final MAX_MOVE_COUNT:I = 0x28


# instance fields
.field private badMultitouchIndex:I

.field private badMultitouchTime:J

.field private currentId:I

.field private downTouchSize:F

.field private moveCount:I

.field private final touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/swype/android/compat/MultitouchFilter5;->FILTER_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x28

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-boolean v0, Lcom/swype/android/compat/MultitouchFilter5;->FILTER_ENABLED:Z

    if-eqz v0, :cond_1d

    .line 77
    new-array v0, v3, [Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    iput-object v0, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    .line 78
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1f

    .line 79
    iget-object v1, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    new-instance v2, Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    invoke-direct {v2, v4}, Lcom/swype/android/compat/MultitouchFilter5$TouchData;-><init>(Lcom/swype/android/compat/MultitouchFilter5$1;)V

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 83
    :cond_1d
    iput-object v4, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    .line 85
    :cond_1f
    return-void
.end method

.method private filter(Lcom/swype/android/widget/TouchEventType;IIIJFILcom/swype/android/widget/MultitouchEventReceiver;)V
    .registers 25
    .parameter "type"
    .parameter "x"
    .parameter "y"
    .parameter "pointerIndex"
    .parameter "timestamp"
    .parameter "touchSize"
    .parameter "windowType"
    .parameter "receiver"

    .prologue
    .line 101
    if-nez p1, :cond_3

    .line 200
    :goto_2
    return-void

    .line 106
    :cond_3
    if-nez p8, :cond_7e

    sget-boolean v3, Lcom/swype/android/compat/MultitouchFilter5;->FILTER_ENABLED:Z

    if-eqz v3, :cond_7e

    .line 109
    sget-object v3, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_8f

    .line 112
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    if-eqz v3, :cond_52

    .line 115
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 116
    .local v13, touchDown:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    iget v5, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    iget v6, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    iget v7, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    iget-wide v8, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    move-object/from16 v3, p9

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 119
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    const/16 v4, 0x28

    if-ge v3, v4, :cond_52

    .line 120
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    iget v4, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    aget-object v14, v3, v4

    .line 121
    .local v14, touchLast:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    iget v5, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    iget v6, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    iget v7, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    iget-wide v8, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    move-object/from16 v3, p9

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 122
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    iget v5, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    iget v6, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    iget v7, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    iget-wide v8, v14, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    move-object/from16 v3, p9

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 126
    .end local v13           #touchDown:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    .end local v14           #touchLast:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    :cond_52
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lcom/swype/android/compat/MultitouchFilter5;->currentId:I

    .line 127
    const/4 v3, 0x0

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    .line 128
    const/4 v3, 0x0

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    .line 129
    move-wide/from16 v0, p5

    move-object v2, p0

    iput-wide v0, v2, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchTime:J

    .line 132
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->setData(IIIJ)V

    .line 133
    const v3, 0x3dcccccd

    move/from16 v0, p7

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->downTouchSize:F

    :cond_7e
    :goto_7e
    move-object/from16 v3, p9

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    .line 199
    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    goto/16 :goto_2

    .line 135
    :cond_8f
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->currentId:I

    move v0, v3

    move/from16 v1, p4

    if-ne v0, v1, :cond_7e

    .line 138
    sget-object v3, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_10b

    .line 139
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    .line 142
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    const/16 v4, 0x28

    if-ge v3, v4, :cond_e0

    iget-wide v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchTime:J

    sub-long v3, p5, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gez v3, :cond_e0

    .line 146
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->downTouchSize:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    cmpl-float v3, p7, v3

    if-ltz v3, :cond_c9

    .line 149
    move-wide/from16 v0, p5

    move-object v2, p0

    iput-wide v0, v2, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchTime:J

    .line 152
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    if-nez v3, :cond_c9

    .line 153
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    .line 159
    :cond_c9
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    if-eqz v3, :cond_7e

    .line 160
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    iget v4, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    aget-object v3, v3, v4

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->setData(IIIJ)V

    goto/16 :goto_2

    .line 164
    :cond_e0
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    if-lez v3, :cond_7e

    .line 170
    const/16 v3, 0x28

    iget v4, p0, Lcom/swype/android/compat/MultitouchFilter5;->moveCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 171
    .local v10, count:I
    iget v12, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    .local v12, i:I
    :goto_ee
    if-ge v12, v10, :cond_106

    .line 172
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    aget-object v11, v3, v12

    .line 173
    .local v11, data:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    iget v5, v11, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    iget v6, v11, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    iget v7, v11, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    iget-wide v8, v11, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    move-object/from16 v3, p9

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 171
    add-int/lit8 v12, v12, 0x1

    goto :goto_ee

    .line 176
    .end local v11           #data:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    :cond_106
    const/4 v3, 0x0

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    goto/16 :goto_7e

    .line 179
    .end local v10           #count:I
    .end local v12           #i:I
    :cond_10b
    sget-object v3, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_7e

    .line 182
    iget v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    if-lez v3, :cond_7e

    .line 185
    iget-object v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->touchBuffer:[Lcom/swype/android/compat/MultitouchFilter5$TouchData;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 186
    .restart local v13       #touchDown:Lcom/swype/android/compat/MultitouchFilter5$TouchData;
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    iget v5, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    iget v6, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    iget v7, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    iget-wide v8, v13, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    move-object/from16 v3, p9

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 189
    sget-object v4, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    move-object/from16 v3, p9

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 192
    const/4 v3, 0x0

    iput v3, p0, Lcom/swype/android/compat/MultitouchFilter5;->badMultitouchIndex:I

    goto/16 :goto_7e
.end method


# virtual methods
.method public filterCurrentMT(Landroid/view/MotionEvent;IILcom/swype/android/widget/MultitouchEventReceiver;)V
    .registers 15
    .parameter "event"
    .parameter "pointerIndex"
    .parameter "windowType"
    .parameter "receiver"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v7

    move-object v0, p0

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/swype/android/compat/MultitouchFilter5;->filter(Lcom/swype/android/widget/TouchEventType;IIIJFILcom/swype/android/widget/MultitouchEventReceiver;)V

    .line 212
    return-void
.end method

.method public filterHistoricalMT(Landroid/view/MotionEvent;IIILcom/swype/android/widget/MultitouchEventReceiver;)V
    .registers 16
    .parameter "event"
    .parameter "pointerIndex"
    .parameter "pos"
    .parameter "windowType"
    .parameter "receiver"

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v1

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v7

    move-object v0, p0

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/swype/android/compat/MultitouchFilter5;->filter(Lcom/swype/android/widget/TouchEventType;IIIJFILcom/swype/android/widget/MultitouchEventReceiver;)V

    .line 224
    return-void
.end method
