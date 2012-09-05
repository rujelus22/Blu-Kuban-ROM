.class public Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.source "EvFreeDrawNormalGestureProc.java"


# instance fields
.field final LOGCAT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 5
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 14
    const-string v0, "EvFreeDrawNormalGestureProc"

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->LOGCAT:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 11
    .parameter "hor"
    .parameter "ver"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v7

    .line 23
    .local v7, screenInfo:Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nCurPosX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nCurPosY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 24
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 128
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 67
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    if-ne v1, v0, :cond_1f

    .line 68
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    .line 69
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginSpace:F

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchPreSpace:F

    .line 70
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginScale:I

    .line 71
    const/4 v1, 0x2

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 74
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

    .line 101
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_62

    .line 102
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v13

    .line 103
    .local v13, newDist:F
    const/high16 v0, 0x4120

    cmpl-float v0, v13, v0

    if-lez v0, :cond_61

    .line 104
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v12

    .line 105
    .local v12, center:Landroid/graphics/PointF;
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginScale:I

    int-to-float v0, v0

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginSpace:F

    div-float v3, v13, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 106
    .local v2, nScale:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->minMax(III)I

    move-result v2

    .line 108
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_47

    .line 109
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

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

    .line 111
    :cond_47
    const-string v0, "EvFreeDrawNormalGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMultiTouchDrag nScale = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput v13, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchPreSpace:F

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mGyroPreviousTime:J

    .line 120
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

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_38

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    if-ne v0, v7, :cond_38

    .line 81
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchPreSpace:F

    .line 82
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mMultiTouchBeginScale:I

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mGyroPreviousTime:J

    .line 86
    iput v12, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 87
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

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

    .line 93
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    move v1, v12

    .line 96
    :cond_38
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 37
    :cond_7
    :goto_7
    return v3

    .line 32
    :cond_8
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    .line 33
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    if-nez v0, :cond_7

    .line 34
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 35
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_7
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

    .line 55
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 56
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 57
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1b

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 62
    :cond_1a
    :goto_1a
    return v4

    .line 59
    :cond_1b
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    if-eq v0, v4, :cond_24

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 60
    :cond_24
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    if-ne v0, v4, :cond_19

    .line 44
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 49
    :cond_16
    :goto_16
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    .line 50
    return v4

    .line 45
    :cond_19
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 46
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_16
.end method
