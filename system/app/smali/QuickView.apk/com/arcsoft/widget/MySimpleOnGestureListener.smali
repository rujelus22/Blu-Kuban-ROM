.class public Lcom/arcsoft/widget/MySimpleOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MySimpleOnGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;
    }
.end annotation


# static fields
.field public static final Double_Tap:I = 0x1

.field public static final Fling:I = 0x2

.field public static final Long_Press:I = 0x3

.field public static final Single_Tap_Confirmed:I = 0x4


# instance fields
.field private mPointerCount:I

.field private m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->mPointerCount:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;->onGestureCallback(IIII)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    const/4 v1, 0x2

    float-to-int v2, p3

    float-to-int v3, p4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;->onGestureCallback(IIII)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "e"

    .prologue
    .line 28
    iget v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->mPointerCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    .line 29
    iget-object v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;->onGestureCallback(IIII)Z

    .line 30
    :cond_16
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;->onGestureCallback(IIII)Z

    move-result v0

    return v0
.end method

.method public setGestureCallBack(Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;)V
    .registers 2
    .parameter "fnNotify"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->m_fnNotifyCallback:Lcom/arcsoft/widget/MySimpleOnGestureListener$Gesture_NotifyCallback;

    .line 38
    return-void
.end method

.method public setPointerCount(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/arcsoft/widget/MySimpleOnGestureListener;->mPointerCount:I

    .line 42
    return-void
.end method
