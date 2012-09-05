.class public Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TimeLineHorizontalScrollView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final START_SCROLL:I = 0x64

.field private static _instance:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;


# instance fields
.field private mAllowScrolling:Z

.field private mAutoScroll:Z

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;

.field private mNeedToNotify:Z

.field private mShouldAllowScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mShouldAllowScroll:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAllowScrolling:Z

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mNeedToNotify:Z

    .line 39
    new-instance v0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;-><init>(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mShouldAllowScroll:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAllowScrolling:Z

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mNeedToNotify:Z

    .line 39
    new-instance v0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$1;-><init>(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAutoScroll:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->_instance:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 92
    sput-object p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->_instance:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    .line 93
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    return-void
.end method


# virtual methods
.method public freeze(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeLineHorizontalScroll freeze:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_18

    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mShouldAllowScroll:Z

    .line 89
    return-void

    .line 88
    :cond_18
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    if-eq v1, v0, :cond_36

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    .line 164
    iget-boolean v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mShouldAllowScroll:Z

    if-eqz v1, :cond_36

    .line 165
    const/high16 v1, 0x442f

    cmpl-float v1, p4, v1

    if-lez v1, :cond_28

    .line 166
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showCaptionBar()V

    .line 184
    :goto_27
    return v0

    .line 168
    :cond_28
    const/high16 v1, -0x3bd1

    cmpg-float v1, p4, v1

    if-gez v1, :cond_6d

    .line 169
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    goto :goto_27

    .line 172
    :cond_36
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isKenburnsOn()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 173
    const/high16 v1, 0x4396

    cmpl-float v1, p3, v1

    if-lez v1, :cond_53

    .line 174
    const-string v1, "kenburns : go to right"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->gotoRight()V

    goto :goto_27

    .line 177
    :cond_53
    const/high16 v1, -0x3c6a

    cmpg-float v1, p3, v1

    if-gez v1, :cond_6d

    .line 178
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 179
    const-string v1, "kenburns : go to left"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->gotoLeft()V

    goto :goto_27

    .line 184
    :cond_6d
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 144
    .local v0, ret:Z
    iget-boolean v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mShouldAllowScroll:Z

    if-nez v1, :cond_c

    .line 145
    const/4 v1, 0x0

    .line 151
    :goto_b
    return v1

    .line 148
    :cond_c
    if-eqz v0, :cond_10

    .line 149
    const/4 v1, 0x1

    goto :goto_b

    .line 151
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_b
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 191
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized onScrollChanged(IIII)V
    .registers 8
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mListener:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mNeedToNotify:Z

    if-eqz v0, :cond_1b

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mListener:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;->onScrollChanged(I)V

    .line 102
    if-gez p1, :cond_1b

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(IIZ)V

    .line 105
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mNeedToNotify:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 106
    monitor-exit p0

    return-void

    .line 100
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 203
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 126
    .local v0, ret:Z
    iget-boolean v2, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAllowScrolling:Z

    if-nez v2, :cond_11

    .line 127
    const-string v2, "TimeLinHorizontalScrollView mAllowScroll is false"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 136
    :cond_10
    :goto_10
    return v1

    .line 134
    :cond_11
    if-nez v0, :cond_10

    .line 136
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_10
.end method

.method public removeTimeLineHorizontalScrollViewListener()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mListener:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;

    .line 84
    return-void
.end method

.method public scrollTo(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(IIZ)V

    .line 110
    return-void
.end method

.method public declared-synchronized scrollTo(IIZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "needToNotify"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iput-boolean p3, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mNeedToNotify:Z

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 115
    monitor-exit p0

    return-void

    .line 113
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowScrolling(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAllowScrolling:Z

    .line 119
    return-void
.end method

.method public setOnTimeLineHorizontalScrollViewListener(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mListener:Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;

    .line 80
    return-void
.end method

.method public declared-synchronized startAutoScroll(I)V
    .registers 6
    .parameter "direction"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start scroll :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 214
    iget-boolean v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAutoScroll:Z

    if-nez v1, :cond_2f

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAutoScroll:Z

    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 221
    .end local v0           #msg:Landroid/os/Message;
    :cond_2f
    monitor-exit p0

    return-void

    .line 213
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopAutoScoll()V
    .registers 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    const-string v0, "stop scroll"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->mAutoScroll:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 226
    monitor-exit p0

    return-void

    .line 224
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
