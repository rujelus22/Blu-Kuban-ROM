.class public Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
.super Landroid/widget/RelativeLayout;
.source "VideoLockCtrl.java"


# static fields
.field private static final HIDE_LOCK_ICON:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLockImage:Landroid/widget/ImageView;

.field private mLockLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    .line 72
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->initView()V

    .line 31
    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    const/4 v2, -0x2

    .line 34
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->removeAllViews()V

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    .line 43
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method


# virtual methods
.method public hideLockIcon()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public showLockIcon()V
    .registers 7

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 54
    .local v1, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 55
    const/16 v2, 0x46

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    :goto_1a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    return-void

    .line 57
    :cond_36
    const/16 v2, 0x8

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1a
.end method
