.class public abstract Lcom/android/inputmethod/accessibility/FlickGestureDetector;
.super Ljava/lang/Object;
.source "FlickGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;
    }
.end annotation


# static fields
.field public static final FLICK_DOWN:I = 0x3

.field public static final FLICK_LEFT:I = 0x2

.field public static final FLICK_RIGHT:I = 0x1

.field public static final FLICK_UP:I


# instance fields
.field private mCachedHoverEnter:Landroid/view/MotionEvent;

.field private mCachedTracker:Lcom/android/inputmethod/keyboard/PointerTracker;

.field private mCachedView:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

.field private final mFlickHandler:Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;

.field private final mFlickRadiusSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    .line 100
    .local v0, doubleTapSlop:I
    new-instance v1, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;-><init>(Lcom/android/inputmethod/accessibility/FlickGestureDetector;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mFlickHandler:Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;

    .line 101
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mFlickRadiusSquare:I

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/accessibility/FlickGestureDetector;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->clearFlick(Z)V

    return-void
.end method

.method private calculateDistanceSquare(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .registers 7
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 206
    .local v0, dX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 207
    .local v1, dY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private clearFlick(Z)V
    .registers 6
    .parameter "sendCachedEvent"

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mFlickHandler:Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->cancelFlickTimeout()V

    .line 158
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    .line 159
    if-eqz p1, :cond_15

    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedView:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    iget-object v1, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedTracker:Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverEventInternal(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    .line 162
    :cond_15
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 163
    iput-object v3, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    .line 166
    :cond_1c
    iput-object v3, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedTracker:Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 167
    iput-object v3, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedView:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .line 168
    return-void
.end method

.method private dispatchFlick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 181
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->clearFlick(Z)V

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 184
    .local v0, dX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 187
    .local v1, dY:F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_29

    .line 188
    neg-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_27

    .line 189
    const/4 v2, 0x3

    .line 201
    .local v2, direction:I
    :goto_22
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->onFlick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    return v3

    .line 191
    .end local v2           #direction:I
    :cond_27
    const/4 v2, 0x2

    .restart local v2       #direction:I
    goto :goto_22

    .line 194
    .end local v2           #direction:I
    :cond_29
    neg-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_30

    .line 195
    const/4 v2, 0x1

    .restart local v2       #direction:I
    goto :goto_22

    .line 197
    .end local v2           #direction:I
    :cond_30
    const/4 v2, 0x0

    .restart local v2       #direction:I
    goto :goto_22
.end method


# virtual methods
.method public abstract onFlick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 13
    .parameter "event"
    .parameter "view"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1a

    .line 116
    iput-object p2, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedView:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .line 117
    iput-object p3, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedTracker:Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 118
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    .line 119
    iget-object v4, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mFlickHandler:Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->startFlickTimeout()V

    .line 144
    :goto_19
    :pswitch_19
    return v3

    .line 124
    :cond_1a
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    if-nez v5, :cond_20

    move v3, v4

    .line 125
    goto :goto_19

    .line 128
    :cond_20
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, p1}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->calculateDistanceSquare(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    .line 129
    .local v0, distanceSquare:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 131
    .local v1, timeout:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_4e

    :pswitch_39
    move v3, v4

    .line 144
    goto :goto_19

    .line 137
    :pswitch_3b
    iget v5, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mFlickRadiusSquare:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_47

    .line 138
    invoke-direct {p0, v3}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->clearFlick(Z)V

    move v3, v4

    .line 139
    goto :goto_19

    .line 141
    :cond_47
    iget-object v3, p0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->mCachedHoverEnter:Landroid/view/MotionEvent;

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->dispatchFlick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_19

    .line 131
    :pswitch_data_4e
    .packed-switch 0x7
        :pswitch_19
        :pswitch_39
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method
