.class public Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;
.super Ljava/lang/Object;
.source "MultiTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mIsTouched:[Z

.field private final mTouchX:[I

.field private final mTouchY:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x14

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mIsTouched:[Z

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchX:[I

    .line 21
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchY:[I

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getTouchX(I)I
    .registers 3
    .parameter "pointer"

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    if-ltz p1, :cond_7

    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    .line 110
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    monitor-exit p0

    .line 112
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchX:[I

    aget v0, v0, p1

    monitor-exit p0

    goto :goto_9

    .line 113
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getTouchY(I)I
    .registers 3
    .parameter "pointer"

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    if-ltz p1, :cond_7

    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    .line 126
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    monitor-exit p0

    .line 128
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchY:[I

    aget v0, v0, p1

    monitor-exit p0

    goto :goto_9

    .line 129
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isTouchDown(I)Z
    .registers 3
    .parameter "pointer"

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    if-ltz p1, :cond_7

    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    .line 94
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    monitor-exit p0

    .line 96
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mIsTouched:[Z

    aget-boolean v0, v0, p1

    monitor-exit p0

    goto :goto_9

    .line 97
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 41
    monitor-enter p0

    .line 43
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 44
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x8

    .line 47
    .local v4, pointerIndex:I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 51
    .local v3, pointerId:I
    packed-switch v0, :pswitch_data_70

    .line 80
    :cond_19
    :goto_19
    :pswitch_19
    monitor-exit p0

    return v7

    .line 54
    :pswitch_1b
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchX:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3

    .line 55
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchY:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3

    .line 56
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mIsTouched:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    goto :goto_19

    .line 81
    .end local v0           #action:I
    .end local v3           #pointerId:I
    .end local v4           #pointerIndex:I
    :catchall_33
    move-exception v5

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_33

    throw v5

    .line 62
    .restart local v0       #action:I
    .restart local v3       #pointerId:I
    .restart local v4       #pointerIndex:I
    :pswitch_36
    :try_start_36
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchX:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3

    .line 63
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchY:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3

    .line 64
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mIsTouched:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v3

    goto :goto_19

    .line 68
    :pswitch_4e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 69
    .local v2, pointerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_53
    if-ge v1, v2, :cond_19

    .line 70
    move v4, v1

    .line 71
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 73
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchX:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3

    .line 74
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->mTouchY:[I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v3
    :try_end_6c
    .catchall {:try_start_36 .. :try_end_6c} :catchall_33

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 51
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_36
        :pswitch_4e
        :pswitch_36
        :pswitch_19
        :pswitch_1b
        :pswitch_36
    .end packed-switch
.end method
