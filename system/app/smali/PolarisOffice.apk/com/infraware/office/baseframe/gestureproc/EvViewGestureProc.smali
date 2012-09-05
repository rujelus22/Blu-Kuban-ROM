.class public Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.source "EvViewGestureProc.java"


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private mHyperLinkMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 7
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 19
    const-string v1, "EvViewGestureProc"

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->LOG_CAT:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mHyperLinkMode:Z

    .line 25
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->setIsLongpressEnabled(Z)V

    .line 27
    const/high16 v1, 0x4220

    invoke-static {p1}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4370

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 28
    .local v0, offset:I
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;

    invoke-direct {v1, p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 11
    .parameter "hor"
    .parameter "ver"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetScreenPos()Lcom/infraware/office/evengine/EV$SCREEN_INFO;

    move-result-object v7

    .line 192
    .local v7, screenInfo:Lcom/infraware/office/evengine/EV$SCREEN_INFO;
    iget v0, v7, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 193
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v12

    .line 161
    .local v12, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v3, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nFitToWidthZoomValue:I

    if-le v0, v3, :cond_3c

    .line 162
    iget v2, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nFitToWidthZoomValue:I

    .line 166
    .local v2, nZoomRatio:I
    :goto_e
    const-string v0, "EvViewGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDoubleTap ScreenZoomRatio ZoomRatio = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_3b

    .line 168
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v10, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v8

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 170
    :cond_3b
    return v8

    .line 164
    .end local v2           #nZoomRatio:I
    :cond_3c
    iget v0, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nFitToWidthZoomValue:I

    mul-int/lit8 v2, v0, 0x3

    .restart local v2       #nZoomRatio:I
    goto :goto_e
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "e"

    .prologue
    const/4 v1, 0x6

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 181
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-ne v0, v8, :cond_f

    .line 182
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, -0x1

    const/4 v5, 0x2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    .line 185
    :cond_f
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    .line 186
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v5, 0x7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    const/4 v10, 0x0

    move v9, v3

    invoke-interface/range {v4 .. v10}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 187
    return-void
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 99
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-ne v0, v6, :cond_28

    .line 100
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    .line 101
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchPreSpace:F

    .line 102
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    .line 103
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginScale:I

    .line 104
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v3, v6

    .line 107
    :cond_28
    return v3
.end method

.method public onMultiTouchDrag(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "e"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 130
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_62

    .line 131
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v13

    .line 132
    .local v13, newDist:F
    const/high16 v0, 0x4170

    cmpl-float v0, v13, v0

    if-lez v0, :cond_61

    .line 133
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v12

    .line 134
    .local v12, center:Landroid/graphics/PointF;
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginScale:I

    int-to-float v0, v0

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginSpace:F

    div-float v3, v13, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 135
    .local v2, nScale:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->minMax(III)I

    move-result v2

    .line 137
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_47

    .line 138
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    float-to-int v10, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 140
    :cond_47
    const-string v0, "EvViewGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMultiTouchDrag nScale = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput v13, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchPreSpace:F

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mGyroPreviousTime:J

    .line 149
    .end local v2           #nScale:I
    .end local v12           #center:Landroid/graphics/PointF;
    .end local v13           #newDist:F
    :cond_61
    :goto_61
    return v9

    :cond_62
    move v9, v1

    goto :goto_61
.end method

.method public onMultiTouchUp(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_3c

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-ne v0, v7, :cond_3c

    .line 114
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchPreSpace:F

    .line 115
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mMultiTouchBeginScale:I

    .line 117
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mGyroPreviousTime:J

    .line 119
    const-string v0, "EvViewGestureProc"

    const-string v2, "onMultiTouchUp"

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput v12, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    .line 122
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

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

    move v1, v12

    .line 125
    :cond_3c
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v6, 0x0

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    .line 56
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    .line 57
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    .line 59
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v6

    .line 60
    .local v6, hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    iget v0, v6, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    if-ne v0, v5, :cond_25

    .line 61
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mHyperLinkMode:Z

    .line 63
    :cond_25
    return v5
.end method

.method public onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    const-string v0, "EvViewGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSingleTouchDrag mTouchState ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-ne v0, v6, :cond_26

    .line 90
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x6

    const/4 v2, -0x1

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    move v5, v6

    .line 94
    :cond_26
    return v5
.end method

.method public onSingleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "e"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 69
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-ne v0, v8, :cond_f

    .line 70
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, -0x1

    const/4 v5, 0x2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->IScroll(IIIII)V

    .line 73
    :cond_f
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mHyperLinkMode:Z

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    if-eq v0, v1, :cond_5d

    .line 75
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfoEx(II)Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v7

    .line 76
    .local v7, hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    const-string v0, "EvViewGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "hyperlinkInfo.szHyperLink = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "EvViewGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "hyperlinkInfo.szHyperText = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    iget-object v6, v7, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    move v2, v3

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 80
    .end local v7           #hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    :cond_5d
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mHyperLinkMode:Z

    .line 82
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;->mTouchStatus:I

    .line 83
    return v8
.end method
