.class public Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.super Landroid/widget/RelativeLayout;
.source "VideoTitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIME_OUT:I = 0xbb8

.field private static final FADE_OUT_TIME:I = 0x36ee80

.field private static final TAG:Ljava/lang/String; = "VideoTitleController"


# instance fields
.field private mAllShareBtn:Landroid/widget/ImageButton;

.field private mAllShareKeyListener:Landroid/view/View$OnKeyListener;

.field private mAllShareTouchListener:Landroid/view/View$OnTouchListener;

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFadeOutBtn:Landroid/view/animation/Animation;

.field private mMultiWindowBtn:Landroid/widget/ImageButton;

.field private mMultiWindowKeyListener:Landroid/view/View$OnKeyListener;

.field private mMultiWindowTouchListener:Landroid/view/View$OnTouchListener;

.field private mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

.field private mRoot:Landroid/view/View;

.field private mScnCtrlBtn:Landroid/widget/ImageButton;

.field private mScnCtrlKeyListener:Landroid/view/View$OnKeyListener;

.field private mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

.field private mShowing:Z

.field private mTimeText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3cb8

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 60
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    .line 62
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mMultiWindowBtn:Landroid/widget/ImageButton;

    .line 63
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    .line 64
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    .line 70
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    .line 177
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

    .line 205
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlKeyListener:Landroid/view/View$OnKeyListener;

    .line 241
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareTouchListener:Landroid/view/View$OnTouchListener;

    .line 283
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareKeyListener:Landroid/view/View$OnKeyListener;

    .line 319
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mMultiWindowTouchListener:Landroid/view/View$OnTouchListener;

    .line 344
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$6;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mMultiWindowKeyListener:Landroid/view/View$OnKeyListener;

    .line 77
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mCalendar:Ljava/util/Calendar;

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initFloatingWindow()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->startMultiWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 645
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 646
    .local v1, b24:Z
    const/4 v0, 0x0

    .line 647
    .local v0, Dateformat:Ljava/lang/String;
    const/4 v2, 0x0

    .line 648
    .local v2, currentTime:Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 649
    const-string v0, "HH:mm"

    .line 654
    :goto_c
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 656
    return-object v2

    .line 651
    :cond_1e
    const-string v0, "h:mm a"

    goto :goto_c
.end method

.method private initFloatingWindow()V
    .registers 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, mDecor:Landroid/view/View;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v1

    .line 99
    .local v1, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v1, :cond_1b

    .line 100
    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 101
    :cond_1b
    return-void
.end method

.method private showAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateLockIcon()V

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateClock()V

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateAllshareBtn()V

    .line 482
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 483
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    .line 495
    return-void
.end method

.method private startMultiWindow()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->setMultiWindowMode()V

    .line 381
    return-void
.end method


# virtual methods
.method public allshareCurrentUri()V
    .registers 6

    .prologue
    .line 384
    const-string v1, "com.sec.android.app.dlna"

    .line 385
    .local v1, allshare_pkg:Ljava/lang/String;
    const-string v0, "com.sec.android.app.dlna.ui.AddinActivity"

    .line 386
    .local v0, allshare_activity:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method public forceBtnRelease()V
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 619
    return-void
.end method

.method public forceHide()V
    .registers 4

    .prologue
    .line 548
    const-string v1, "VideoTitleController"

    const-string v2, "forceHide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 551
    .local v0, Btn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 552
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 553
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 555
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    .line 557
    return-void
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    if-eqz v1, :cond_20

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 506
    .local v0, Btn:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    .line 508
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 510
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 512
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 514
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 516
    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$7;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 545
    .end local v0           #Btn:Landroid/view/animation/Animation;
    :cond_20
    return-void
.end method

.method public initTitle(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 137
    const v0, 0x7f0a006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 142
    const v0, 0x7f0a006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    const v0, 0x7f0a0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    .line 146
    const v0, 0x7f0a006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    .line 156
    const v0, 0x7f0a006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5f

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 164
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_71

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mAllShareKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    :cond_71
    const v0, 0x7f0a006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_88

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 175
    :cond_88
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    return v0
.end method

.method protected makeTitleView()Landroid/view/View;
    .registers 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initTitle(Landroid/view/View;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initTitle(Landroid/view/View;)V

    .line 88
    :cond_9
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    return-void
.end method

.method public setAnchorView()V
    .registers 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->removeAllViews()V

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->makeTitleView()Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, v:Landroid/view/View;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public setButtonArrange()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 562
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 563
    return-void
.end method

.method public setPlayer(Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;)V
    .registers 2
    .parameter "player"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    .line 105
    return-void
.end method

.method public setTimeZone(Ljava/util/Calendar;)V
    .registers 4
    .parameter "cal"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_d

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mClockFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 633
    :cond_d
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->showAll()V

    .line 472
    :cond_7
    return-void
.end method

.method public updateAllshareBtn()V
    .registers 6

    .prologue
    .line 395
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    if-eqz v3, :cond_58

    .line 396
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    const v4, 0x7f0a006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 398
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_58

    .line 400
    const/4 v2, 0x0

    .line 402
    .local v2, isDrm:Z
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 405
    const/4 v3, -0x1

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_22

    .line 406
    const/4 v2, 0x1

    .line 409
    :cond_22
    if-nez v2, :cond_59

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x14

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x19

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x16

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_4e

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x18

    if-ne v3, v4, :cond_59

    .line 417
    :cond_4e
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 418
    const v3, 0x7f020004

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 426
    .end local v0           #button:Landroid/widget/ImageButton;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #isDrm:Z
    :cond_58
    :goto_58
    return-void

    .line 420
    .restart local v0       #button:Landroid/widget/ImageButton;
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v2       #isDrm:Z
    :cond_59
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 421
    const v3, 0x7f0200b9

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_58
.end method

.method public updateBatteryImg()V
    .registers 8

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x22

    const/16 v3, 0x13

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    if-nez v1, :cond_d

    .line 602
    :goto_c
    return-void

    .line 573
    :cond_d
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getBatteryLevel()I

    move-result v0

    .line 576
    .local v0, level:I
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryChargingStatus:Z

    if-eqz v1, :cond_3c

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 597
    if-ltz v0, :cond_97

    .line 598
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 579
    :cond_3c
    if-gt v0, v2, :cond_47

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 581
    :cond_47
    if-le v0, v2, :cond_54

    if-gt v0, v3, :cond_54

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 583
    :cond_54
    if-le v0, v3, :cond_61

    if-gt v0, v5, :cond_61

    .line 584
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 585
    :cond_61
    if-le v0, v5, :cond_6e

    if-gt v0, v6, :cond_6e

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 587
    :cond_6e
    if-le v0, v6, :cond_7d

    const/16 v1, 0x40

    if-gt v0, v1, :cond_7d

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 589
    :cond_7d
    const/16 v1, 0x40

    if-le v0, v1, :cond_8e

    const/16 v1, 0x4f

    if-gt v0, v1, :cond_8e

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 592
    :cond_8e
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 600
    :cond_97
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c
.end method

.method public updateClock()V
    .registers 7

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    const-string v0, "VideoTitleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock() - mTimeText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_4e

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 642
    :cond_4e
    return-void
.end method

.method public updateLockIcon()V
    .registers 3

    .prologue
    .line 605
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v0

    .line 607
    .local v0, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    if-nez v0, :cond_9

    .line 615
    :goto_8
    return-void

    .line 610
    :cond_9
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 611
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    goto :goto_8

    .line 613
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->hideLockIcon()V

    goto :goto_8
.end method

.method public updateScnCtrlBtn()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    if-eqz v2, :cond_3c

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 432
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_3c

    .line 433
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v1

    .line 435
    .local v1, mode:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 436
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 438
    if-ne v1, v6, :cond_3d

    .line 439
    const v2, 0x7f02000f

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 460
    :goto_37
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 463
    .end local v0           #button:Landroid/widget/ImageButton;
    .end local v1           #mode:I
    :cond_3c
    return-void

    .line 441
    .restart local v0       #button:Landroid/widget/ImageButton;
    .restart local v1       #mode:I
    :cond_3d
    if-ne v1, v4, :cond_52

    .line 442
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 443
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 445
    :cond_52
    const v2, 0x7f02000a

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 449
    :cond_65
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 451
    if-ne v1, v6, :cond_71

    .line 452
    const v2, 0x7f020140

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_37

    .line 453
    :cond_71
    if-ne v1, v4, :cond_7a

    .line 454
    const v2, 0x7f020144

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_37

    .line 456
    :cond_7a
    const v2, 0x7f02013c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_37
.end method

.method public updateTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 125
    :goto_4
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
