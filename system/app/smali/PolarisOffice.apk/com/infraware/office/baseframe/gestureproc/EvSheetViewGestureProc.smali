.class public Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;
.source "EvSheetViewGestureProc.java"


# instance fields
.field private final LOG_CAT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 7
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 17
    const-string v1, "EvSheetViewGestureProc"

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->LOG_CAT:Ljava/lang/String;

    .line 22
    const/high16 v1, 0x4220

    invoke-static {p1}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4370

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 23
    .local v0, offset:I
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;

    invoke-direct {v1, p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getPageInfoType(I)I
    .registers 4
    .parameter "nCallBackID"

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, infoId:I
    sparse-switch p1, :sswitch_data_10

    .line 183
    :cond_4
    :goto_4
    return v0

    .line 172
    :sswitch_5
    const/4 v0, 0x2

    .line 173
    goto :goto_4

    .line 177
    :sswitch_7
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    const/4 v0, 0x2

    goto :goto_4

    .line 166
    nop

    :sswitch_data_10
    .sparse-switch
        0xe -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x1b -> :sswitch_7
        0x3d -> :sswitch_7
        0x11c -> :sswitch_7
    .end sparse-switch
.end method

.method public onMotionTilt(I)V
    .registers 19
    .parameter "tilt"

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 137
    const-string v1, "EvSheetViewGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 140
    .local v13, gyroCurrentTime:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mGyroPreviousTime:J

    sub-long v1, v13, v1

    const-wide/16 v4, 0xf

    cmp-long v1, v1, v4

    if-gez v1, :cond_2e

    .line 160
    .end local v13           #gyroCurrentTime:J
    :cond_2d
    :goto_2d
    return-void

    .line 143
    .restart local v13       #gyroCurrentTime:J
    :cond_2e
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2d

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v15

    .line 145
    .local v15, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    move/from16 v0, p1

    int-to-float v1, v0

    const v2, 0x3fb66666

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 146
    .local v16, newTilt:I
    iget v1, v15, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    add-int v3, v1, v16

    .line 147
    .local v3, nScale:I
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->minMax(III)I

    move-result v3

    .line 149
    const-string v1, "EvBaseGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nScale = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v1, v3, :cond_9e

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    invoke-virtual/range {v1 .. v12}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 154
    :cond_9e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mGyroPreviousTime:J

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreSpace:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginSpace:F

    .line 157
    move-object/from16 v0, p0

    iput v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginScale:I

    goto/16 :goto_2d
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    if-ne v1, v0, :cond_1f

    .line 80
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    .line 81
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginSpace:F

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreSpace:F

    .line 82
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginScale:I

    .line 83
    const/4 v1, 0x2

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    .line 86
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onMultiTouchDrag(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 112
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_62

    .line 113
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v13

    .line 114
    .local v13, newDist:F
    const/high16 v0, 0x4120

    cmpl-float v0, v13, v0

    if-lez v0, :cond_61

    .line 115
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v12

    .line 116
    .local v12, center:Landroid/graphics/PointF;
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginScale:I

    int-to-float v0, v0

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginSpace:F

    div-float v3, v13, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 117
    .local v2, nScale:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->minMax(III)I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_47

    .line 120
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    float-to-int v10, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v7

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 122
    :cond_47
    const-string v0, "EvSheetViewGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMultiTouchDrag nScale = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput v13, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreSpace:F

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mGyroPreviousTime:J

    .line 131
    .end local v2           #nScale:I
    .end local v12           #center:Landroid/graphics/PointF;
    .end local v13           #newDist:F
    :cond_61
    :goto_61
    return v7

    :cond_62
    move v7, v1

    goto :goto_61
.end method

.method public onMultiTouchUp(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_38

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    if-ne v0, v7, :cond_38

    .line 92
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchPreSpace:F

    .line 93
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mMultiTouchBeginScale:I

    .line 95
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mGyroPreviousTime:J

    .line 97
    iput v12, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    .line 98
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 104
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    move v1, v12

    .line 107
    :cond_38
    return v1
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x2

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 52
    iput v7, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    .line 53
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1, v3, v2}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 54
    return v7
.end method

.method public onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 60
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    .line 61
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1b

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 65
    :goto_1a
    return v4

    .line 64
    :cond_1b
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_1a
.end method

.method public onSingleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    if-ne v0, v5, :cond_18

    .line 72
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 73
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;->mTouchStatus:I

    .line 75
    :cond_18
    return v5
.end method
