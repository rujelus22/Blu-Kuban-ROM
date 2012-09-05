.class public Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;
.super Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;
.source "EvFreeDrawAdvanceGestureDetector.java"


# static fields
.field protected static final LOG_CAT:Ljava/lang/String; = "EvFreeDrawAdvanceGestureDetector"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V
    .registers 4
    .parameter "context"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "e"

    .prologue
    .line 18
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mView:Landroid/view/View;

    if-ne p1, v5, :cond_19

    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_19

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 24
    .local v4, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 25
    .local v3, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 28
    .local v0, action:I
    packed-switch v0, :pswitch_data_6c

    .line 66
    .end local v0           #action:I
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_19
    const/4 v5, 0x0

    :goto_1a
    return v5

    .line 31
    .restart local v0       #action:I
    .restart local v3       #x:F
    .restart local v4       #y:F
    :pswitch_1b
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionX:F

    .line 32
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionY:F

    .line 34
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_28

    .line 35
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 37
    :cond_28
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 39
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v5, :cond_39

    .line 40
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v5, p2}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1a

    .line 44
    :cond_39
    :pswitch_39
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v5, :cond_44

    .line 45
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    invoke-interface {v5, p2}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchUp(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1a

    .line 49
    :cond_44
    :pswitch_44
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionX:F

    sub-float v1, v5, v3

    .line 50
    .local v1, scrollX:F
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionY:F

    sub-float v2, v5, v4

    .line 52
    .local v2, scrollY:F
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_55

    .line 53
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 55
    :cond_55
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 57
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionX:F

    .line 58
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mLastMotionY:F

    .line 60
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    if-eqz v5, :cond_19

    .line 61
    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;

    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawAdvanceGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, p2, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;->onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v5

    goto :goto_1a

    .line 28
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_39
        :pswitch_44
    .end packed-switch
.end method
