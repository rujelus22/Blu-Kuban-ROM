.class public Lcom/google/android/apps/plus/views/PhotoViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;,
        Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    }
.end annotation


# instance fields
.field private mActivatedX:F

.field private mActivatedY:F

.field private mActivePointerId:I

.field private mLastMotionX:F

.field private mListener:Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    .line 67
    iget-object v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mListener:Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;

    if-eqz v9, :cond_37

    iget-object v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mListener:Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;

    iget v10, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivatedX:F

    iget v11, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivatedY:F

    invoke-interface {v9, v10, v11}, Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;->onTouchIntercept(FF)Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    move-result-object v4

    .line 70
    .local v4, intercept:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    :goto_e
    sget-object v9, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    if-eq v4, v9, :cond_16

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->LEFT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    if-ne v4, v9, :cond_3a

    :cond_16
    const/4 v2, 0x1

    .line 72
    .local v2, ignoreScrollLeft:Z
    :goto_17
    sget-object v9, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->BOTH:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    if-eq v4, v9, :cond_1f

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->RIGHT:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    if-ne v4, v9, :cond_3c

    :cond_1f
    const/4 v3, 0x1

    .line 76
    .local v3, ignoreScrollRight:Z
    :goto_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 78
    .local v0, action:I
    const/4 v9, 0x3

    if-eq v0, v9, :cond_2c

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2f

    .line 79
    :cond_2c
    const/4 v9, -0x1

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivePointerId:I

    .line 82
    :cond_2f
    sparse-switch v0, :sswitch_data_a8

    .line 132
    :cond_32
    :goto_32
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_36
    return v9

    .line 67
    .end local v0           #action:I
    .end local v2           #ignoreScrollLeft:Z
    .end local v3           #ignoreScrollRight:Z
    .end local v4           #intercept:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    :cond_37
    sget-object v4, Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;->NONE:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;

    goto :goto_e

    .line 70
    .restart local v4       #intercept:Lcom/google/android/apps/plus/views/PhotoViewPager$InterceptType;
    :cond_3a
    const/4 v2, 0x0

    goto :goto_17

    .line 72
    .restart local v2       #ignoreScrollLeft:Z
    :cond_3c
    const/4 v3, 0x0

    goto :goto_20

    .line 84
    .restart local v0       #action:I
    .restart local v3       #ignoreScrollRight:Z
    :sswitch_3e
    if-nez v2, :cond_42

    if-eqz v3, :cond_32

    .line 85
    :cond_42
    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivePointerId:I

    .line 86
    .local v1, activePointerId:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_32

    .line 91
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 93
    .local v7, pointerIndex:I
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 95
    .local v8, x:F
    if-eqz v2, :cond_57

    if-eqz v3, :cond_57

    .line 96
    iput v8, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    .line 97
    const/4 v9, 0x0

    goto :goto_36

    .line 98
    :cond_57
    if-eqz v2, :cond_63

    iget v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_63

    .line 99
    iput v8, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    .line 100
    const/4 v9, 0x0

    goto :goto_36

    .line 101
    :cond_63
    if-eqz v3, :cond_32

    iget v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_32

    .line 102
    iput v8, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    .line 103
    const/4 v9, 0x0

    goto :goto_36

    .line 110
    .end local v1           #activePointerId:I
    .end local v7           #pointerIndex:I
    .end local v8           #x:F
    :sswitch_6f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivatedX:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivatedY:F

    .line 115
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivePointerId:I

    goto :goto_32

    .line 120
    :sswitch_89
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 121
    .restart local v7       #pointerIndex:I
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 122
    .local v6, pointerId:I
    iget v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivePointerId:I

    if-ne v6, v9, :cond_32

    .line 124
    if-nez v7, :cond_a5

    const/4 v5, 0x1

    .line 125
    .local v5, newPointerIndex:I
    :goto_98
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mLastMotionX:F

    .line 126
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    iput v9, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mActivePointerId:I

    goto :goto_32

    .line 124
    .end local v5           #newPointerIndex:I
    :cond_a5
    const/4 v5, 0x0

    goto :goto_98

    .line 82
    nop

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_6f
        0x2 -> :sswitch_3e
        0x6 -> :sswitch_89
    .end sparse-switch
.end method

.method public setOnInterceptTouchListener(Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoViewPager;->mListener:Lcom/google/android/apps/plus/views/PhotoViewPager$OnInterceptTouchListener;

    .line 140
    return-void
.end method
