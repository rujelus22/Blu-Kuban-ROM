.class public Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;
.source "EvSheetGestureProc.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 6
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 15
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->setIsLongpressEnabled(Z)V

    .line 17
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getPageInfoType(I)I
    .registers 4
    .parameter "nCallBackID"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, infoId:I
    sparse-switch p1, :sswitch_data_10

    .line 92
    :cond_4
    :goto_4
    return v0

    .line 81
    :sswitch_5
    const/4 v0, 0x2

    .line 82
    goto :goto_4

    .line 86
    :sswitch_7
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const/4 v0, 0x2

    goto :goto_4

    .line 75
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

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->mTouchStatus:I

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 62
    :cond_e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 63
    :cond_17
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_25

    .line 46
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlType()I

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->GetObjCtrlSelIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 47
    :cond_25
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v6, 0x0

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 50
    :goto_37
    return-void

    .line 49
    :cond_38
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_37
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
