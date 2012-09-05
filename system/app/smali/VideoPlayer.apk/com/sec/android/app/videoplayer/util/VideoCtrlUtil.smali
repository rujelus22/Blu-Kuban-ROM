.class public Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
.super Ljava/lang/Object;
.source "VideoCtrlUtil.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;


# instance fields
.field private mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

.field private mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

.field private mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

.field private mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

.field private mTitleViewLandscape:Landroid/view/View;

.field private mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

.field private mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mTitleViewLandscape:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    .line 25
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 30
    :cond_b
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-object v0
.end method

.method public static releaseInstance()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 91
    return-void
.end method


# virtual methods
.method public getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    return-object v0
.end method

.method public getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    return-object v0
.end method

.method public getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    return-object v0
.end method

.method public getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    return-object v0
.end method

.method public getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    return-object v0
.end method

.method public getTitleViewLandscape()Landroid/view/View;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mTitleViewLandscape:Landroid/view/View;

    return-object v0
.end method

.method public getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    return-object v0
.end method

.method public setLockCtrlView(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V
    .registers 2
    .parameter "lockView"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mLockCtrlView:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    .line 83
    return-void
.end method

.method public setMainView(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V
    .registers 2
    .parameter "mainView"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mMainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    .line 43
    return-void
.end method

.method public setStateView(Lcom/sec/android/app/videoplayer/view/VideoStateView;)V
    .registers 2
    .parameter "stateView"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoStateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;

    .line 59
    return-void
.end method

.method public setSubTitleSyncView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .registers 2
    .parameter "subTitleView"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleSyncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    .line 75
    return-void
.end method

.method public setSubTitleView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;)V
    .registers 2
    .parameter "subTitleView"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mSubtitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    .line 67
    return-void
.end method

.method public setTitleViewLandscape(Landroid/view/View;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mTitleViewLandscape:Landroid/view/View;

    .line 35
    return-void
.end method

.method public setVideoSurface(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V
    .registers 2
    .parameter "videoView"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->mVideoSurface:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    .line 51
    return-void
.end method
