.class public Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.source "EvFreeDrawGestureProc.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_HTC_PEN_MODE;


# instance fields
.field protected AMETA_ERASER_ON:I

.field protected AMETA_PEN_ON:I

.field protected AMETA_SIDE_SWITCH_ON:I

.field final LOGCAT:Ljava/lang/String;

.field protected mCurrentPenMode:I

.field protected mDefaultPenMode:I

.field private mX:[I

.field private mY:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;I)V
    .registers 9
    .parameter "activity"
    .parameter "view"
    .parameter "listener"
    .parameter "defaultPenMode"

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 15
    const-string v1, "EvFreeDrawGestureProc"

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->LOGCAT:Ljava/lang/String;

    .line 16
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    .line 17
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    .line 19
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_PEN_ON:I

    .line 20
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_ERASER_ON:I

    .line 21
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_SIDE_SWITCH_ON:I

    .line 23
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    .line 24
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    .line 29
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->AdvanceGesturefinalize()V

    .line 30
    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;

    invoke-direct {v1, p1, p2, p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 31
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    iput p4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    iput p4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 36
    .local v0, osVer:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 37
    const/16 v1, 0x200

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_PEN_ON:I

    .line 38
    const/16 v1, 0x400

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_ERASER_ON:I

    .line 39
    const/16 v1, 0x800

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_SIDE_SWITCH_ON:I

    .line 46
    :cond_47
    :goto_47
    return-void

    .line 41
    :cond_48
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 42
    const/high16 v1, 0x200

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_PEN_ON:I

    .line 43
    const/high16 v1, 0x400

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_ERASER_ON:I

    .line 44
    const/high16 v1, 0x800

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_SIDE_SWITCH_ON:I

    goto :goto_47
.end method


# virtual methods
.method protected getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 11
    .parameter "hor"
    .parameter "ver"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v7

    .line 87
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

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 88
    return-void
.end method

.method protected isEraser(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, ret:Z
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_14

    .line 52
    const/4 v0, 0x1

    .line 57
    :cond_14
    :goto_14
    return v0

    .line 54
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->AMETA_ERASER_ON:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 55
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public onMotionPanningGyro(II)V
    .registers 3
    .parameter "dx"
    .parameter "dy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public onMotionTilt(I)V
    .registers 2
    .parameter "tilt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public onMotionTwoTapping()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchDrag(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v0, "EvFreeDrawGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPenEvent : action down x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->setPenMode(Landroid/view/MotionEvent;)V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mTouchStatus:I

    .line 97
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 98
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 117
    const-string v2, "EvFreeDrawGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPenEvent : pen move : x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->setPenMode(Landroid/view/MotionEvent;)V

    .line 121
    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    if-ne v2, v5, :cond_9f

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 123
    .local v0, N:I
    if-lez v0, :cond_81

    const/16 v2, 0x64

    if-ge v0, v2, :cond_81

    .line 124
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3a
    if-lt v1, v0, :cond_46

    .line 130
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    invoke-virtual {v2, v3, v4, v0}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenPosition([I[II)V

    .line 140
    .end local v0           #N:I
    .end local v1           #j:I
    :cond_45
    :goto_45
    return v5

    .line 125
    .restart local v0       #N:I
    .restart local v1       #j:I
    :cond_46
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 126
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 127
    const-string v2, "EvFreeDrawGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPenEvent : pen hist_move x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 131
    .end local v1           #j:I
    :cond_81
    if-nez v0, :cond_45

    .line 132
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    .line 133
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    .line 134
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mX:[I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mY:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenPosition([I[II)V

    goto :goto_45

    .line 136
    .end local v0           #N:I
    :cond_9f
    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    .line 137
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_45
.end method

.method public onSingleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 103
    const-string v0, "EvFreeDrawGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPenEvent : action up x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 106
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mTouchStatus:I

    .line 108
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    if-eq v0, v1, :cond_4a

    .line 109
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    .line 110
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 112
    :cond_4a
    const/4 v0, 0x1

    return v0
.end method

.method protected setPenMode(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 61
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    .line 63
    .local v0, toPenMode:I
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->isEraser(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 64
    const/4 v0, 0x2

    .line 68
    :goto_a
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    if-eq v1, v0, :cond_15

    .line 69
    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mCurrentPenMode:I

    .line 70
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mTouchStatus:I

    packed-switch v1, :pswitch_data_44

    .line 82
    :cond_15
    :goto_15
    return-void

    .line 66
    :cond_16
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mDefaultPenMode:I

    goto :goto_a

    .line 72
    :pswitch_19
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 74
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 75
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v5, v2, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_15

    .line 78
    :pswitch_3e
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    goto :goto_15

    .line 70
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_19
    .end packed-switch
.end method
