.class public Lcom/google/android/music/ringtone/MarkerView;
.super Landroid/widget/ImageView;
.source "MarkerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ringtone/MarkerView$MarkerListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

.field private mVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/MarkerView;->setFocusable(Z)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mVelocity:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    .line 69
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerDraw()V

    .line 112
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 101
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v0, p0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerFocus(Lcom/google/android/music/ringtone/MarkerView;)V

    .line 103
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 116
    iget v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mVelocity:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mVelocity:I

    .line 117
    iget v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mVelocity:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 118
    .local v0, v:I
    iget-object v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    if-eqz v2, :cond_35

    .line 119
    const/16 v2, 0x15

    if-ne p1, v2, :cond_21

    .line 120
    iget-object v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v2, p0, v0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerLeft(Lcom/google/android/music/ringtone/MarkerView;I)V

    .line 131
    :goto_20
    return v1

    .line 122
    :cond_21
    const/16 v2, 0x16

    if-ne p1, v2, :cond_2b

    .line 123
    iget-object v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v2, p0, v0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerRight(Lcom/google/android/music/ringtone/MarkerView;I)V

    goto :goto_20

    .line 125
    :cond_2b
    const/16 v2, 0x17

    if-ne p1, v2, :cond_35

    .line 126
    iget-object v2, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v2, p0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerEnter(Lcom/google/android/music/ringtone/MarkerView;)V

    goto :goto_20

    .line 131
    :cond_35
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_20
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mVelocity:I

    .line 137
    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-interface {v0}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerKeyUp()V

    .line 139
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 77
    const/4 v0, 0x1

    .line 79
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 95
    :goto_8
    return v0

    .line 81
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/MarkerView;->requestFocus()Z

    .line 84
    iget-object v1, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerTouchStart(Lcom/google/android/music/ringtone/MarkerView;FF)Z

    move-result v0

    .line 85
    goto :goto_8

    .line 89
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerTouchMove(Lcom/google/android/music/ringtone/MarkerView;FF)Z

    move-result v0

    .line 90
    goto :goto_8

    .line 92
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/google/android/music/ringtone/MarkerView$MarkerListener;->markerTouchEnd(Lcom/google/android/music/ringtone/MarkerView;F)Z

    move-result v0

    goto :goto_8

    .line 79
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2a
        :pswitch_1b
    .end packed-switch
.end method

.method public setListener(Lcom/google/android/music/ringtone/MarkerView$MarkerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/ringtone/MarkerView;->mListener:Lcom/google/android/music/ringtone/MarkerView$MarkerListener;

    .line 73
    return-void
.end method
