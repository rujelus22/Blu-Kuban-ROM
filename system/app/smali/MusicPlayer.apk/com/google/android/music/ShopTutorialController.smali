.class public Lcom/google/android/music/ShopTutorialController;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"


# static fields
.field private static RESET_ON_RELAUNCH:Z


# instance fields
.field private mCheckStoreAvailable:Ljava/lang/Runnable;

.field private mContext:Landroid/app/Activity;

.field private mDisableShopTutorial:Z

.field private final mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

.field private mHasStoreContent:Z

.field private mLayoutConfigAllowShopTutorial:Z

.field private mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

.field private mLoadedFromPreferences:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSaveViewedRunnable:Ljava/lang/Runnable;

.field private mShopIcon:Landroid/view/View;

.field private mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

.field private mShopTutorialViewed:Z

.field private mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

.field private mStaticConfigAllowShopTutorial:Z

.field private mUIControllerAllowTutorial:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/android/music/ShopTutorialController;->mUIControllerAllowTutorial:Z

    .line 87
    new-instance v0, Lcom/google/android/music/ShopTutorialController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$1;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    .line 101
    new-instance v0, Lcom/google/android/music/ShopTutorialController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$2;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mCheckStoreAvailable:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/google/android/music/ShopTutorialController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$3;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/google/android/music/ShopTutorialController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$4;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/google/android/music/ShopTutorialController$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$5;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mDisableShopTutorial:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mUIControllerAllowTutorial:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/music/ShopTutorialController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialController;->hasAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialController;->hasStoreContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    sput-boolean p0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return p0
.end method

.method private hasAudio()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasAudio(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private hasStoreContent()Z
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasStoreAudio(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .registers 5
    .parameter "context"
    .parameter "rootView"

    .prologue
    .line 57
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 63
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mDisableShopTutorial:Z

    .line 65
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mDisableShopTutorial:Z

    if-nez v0, :cond_29

    .line 66
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mCheckStoreAvailable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 69
    :cond_29
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    if-eqz v0, :cond_13

    .line 73
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 75
    iput-object v2, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    .line 77
    :cond_13
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isAllowShopTutorial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z

    .line 82
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    if-nez v0, :cond_11

    .line 83
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_11
    return-void
.end method

.method public setShopIcon(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ClingTutorialView;->setIconToClingAround(Landroid/view/View;)V

    .line 219
    :cond_b
    return-void
.end method

.method public setShopTutorialAllowed(Z)V
    .registers 4
    .parameter "allowed"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mUIControllerAllowTutorial:Z

    .line 223
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method
