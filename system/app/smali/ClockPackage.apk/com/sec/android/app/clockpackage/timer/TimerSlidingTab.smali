.class public Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;
.super Landroid/widget/RelativeLayout;
.source "TimerSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;,
        Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field private mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

.field private mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "TimerSlidingTab"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->LOG_TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->VIBRATE_SHORT:J

    .line 76
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->VIBRATE_LONG:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mGrabbedState:I

    .line 100
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->init()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-string v0, "TimerSlidingTab"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->LOG_TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->VIBRATE_SHORT:J

    .line 76
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->VIBRATE_LONG:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mGrabbedState:I

    .line 112
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->init()V

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;)Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setGrabbedState(I)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 289
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->vibrate(J)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 297
    :cond_e
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 122
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    .line 129
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 311
    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 313
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mGrabbedState:I

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 323
    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 508
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 510
    monitor-exit p0

    return-void

    .line 500
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public inactiveHandle()V
    .registers 3

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setState(I)V

    .line 1566
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 1575
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 359
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 361
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 364
    .local v3, y:F
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v5, v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 371
    .local v1, leftHit:Z
    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    if-nez v5, :cond_1b

    if-nez v1, :cond_1b

    .line 373
    const/4 v4, 0x0

    .line 418
    :cond_1a
    :goto_1a
    return v4

    .line 379
    :cond_1b
    packed-switch v0, :pswitch_data_32

    goto :goto_1a

    .line 383
    :pswitch_1f
    const-wide/16 v5, 0x1e

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->vibrate(J)V

    .line 385
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    .line 387
    if-eqz v1, :cond_1a

    .line 389
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setState(I)V

    .line 393
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setGrabbedState(I)V

    goto :goto_1a

    .line 379
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 331
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->makeLayout()V

    .line 337
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 436
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    if-eqz v3, :cond_d

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 442
    .local v0, action:I
    packed-switch v0, :pswitch_data_34

    .line 486
    .end local v0           #action:I
    :cond_d
    :pswitch_d
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    if-nez v3, :cond_17

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    move v2, v1

    :cond_19
    :goto_19
    return v2

    .line 446
    .restart local v0       #action:I
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 468
    :pswitch_28
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mIsTracking:Z

    .line 470
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$Handle;->setState(I)V

    .line 474
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setGrabbedState(I)V

    goto :goto_19

    .line 442
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1a
        :pswitch_28
        :pswitch_d
        :pswitch_d
        :pswitch_28
    .end packed-switch
.end method

.method public setLeftHintText(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 251
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .registers 5
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 243
    return-void
.end method

.method public setOnTriggerListener(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;

    .line 275
    return-void
.end method

.method public setRightTabResources(IIII)V
    .registers 5
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 235
    return-void
.end method
