.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;
.super Landroid/widget/RelativeLayout;
.source "AlarmSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private bMakeAlarmArrowView:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsSnooze:Z

.field private mIsTracking:Z

.field private mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

.field private mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

.field private mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const-string v0, "AlarmSlidingTab"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->LOG_TAG:Ljava/lang/String;

    .line 96
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->VIBRATE_SHORT:J

    .line 98
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->VIBRATE_LONG:J

    .line 110
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mGrabbedState:I

    .line 118
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 123
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->init()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const-string v0, "AlarmSlidingTab"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->LOG_TAG:Ljava/lang/String;

    .line 96
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->VIBRATE_SHORT:J

    .line 98
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->VIBRATE_LONG:J

    .line 110
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mGrabbedState:I

    .line 118
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 134
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->init()V

    .line 138
    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsSnooze:Z

    return v0
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 309
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->vibrate(J)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 317
    :cond_e
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    .line 148
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    .line 150
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 330
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 332
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mGrabbedState:I

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_11

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 342
    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 490
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 498
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 500
    monitor-exit p0

    return-void

    .line 490
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activeHandle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1596
    return-void
.end method

.method public inactiveHandle()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1587
    const-string v0, "DUCHA"

    const-string v1, "inactiveHandle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 1590
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 1602
    const-string v0, "AlarmSlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 377
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 379
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 381
    .local v4, y:F
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 382
    .local v1, leftHit:Z
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 384
    .local v2, rightHit:Z
    iget-boolean v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

    if-nez v6, :cond_24

    if-nez v1, :cond_24

    if-nez v2, :cond_24

    .line 385
    const/4 v5, 0x0

    .line 422
    :cond_23
    :goto_23
    return v5

    .line 389
    :cond_24
    packed-switch v0, :pswitch_data_50

    goto :goto_23

    .line 393
    :pswitch_28
    const-wide/16 v6, 0x1e

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->vibrate(J)V

    .line 395
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

    .line 397
    if-eqz v1, :cond_3f

    .line 399
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 401
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 403
    invoke-direct {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_23

    .line 405
    :cond_3f
    if-eqz v2, :cond_23

    .line 407
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 409
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 411
    invoke-direct {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_23

    .line 389
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_28
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
    .line 349
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeLayout()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->makeLayout()V

    .line 355
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 435
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

    if-eqz v3, :cond_d

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 439
    .local v0, action:I
    packed-switch v0, :pswitch_data_46

    .line 479
    .end local v0           #action:I
    :cond_d
    :pswitch_d
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

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

    .line 443
    .restart local v0       #action:I
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_28

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 447
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->getState()I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    .line 461
    :pswitch_36
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsTracking:Z

    .line 463
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 465
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->setState(I)V

    .line 467
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setGrabbedState(I)V

    goto :goto_19

    .line 439
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1a
        :pswitch_36
        :pswitch_d
        :pswitch_d
        :pswitch_36
    .end packed-switch
.end method

.method public setLeftHintText(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 272
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .registers 5
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 264
    return-void
.end method

.method public setOnTriggerListener(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mOnTriggerListener:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;

    .line 296
    return-void
.end method

.method public setRightHintText(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 280
    return-void
.end method

.method public setRightTabResources(IIII)V
    .registers 5
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 256
    return-void
.end method

.method public setSnooze(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 1570
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsSnooze:Z

    .line 1572
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsSnooze:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    .line 1574
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->bMakeAlarmArrowView:Z

    if-eqz v0, :cond_12

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mLeftHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->reInit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)V

    .line 1578
    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mIsSnooze:Z

    if-nez v0, :cond_21

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->mRightHandle:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->mContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$Handle;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1583
    :cond_21
    return-void

    .line 1572
    :cond_22
    const/4 v0, 0x0

    goto :goto_7
.end method
