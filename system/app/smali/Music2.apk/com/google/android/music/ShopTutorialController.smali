.class public Lcom/google/android/music/ShopTutorialController;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;
    }
.end annotation


# static fields
.field private static RESET_ON_RELAUNCH:Z


# instance fields
.field private mCheckStoreAvailable:Ljava/lang/Runnable;

.field private mContext:Landroid/app/Activity;

.field private final mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

.field private mHasStoreContent:Z

.field private mLayoutConfigAllowShopTutorial:Z

.field private mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

.field private mLoadedFromPreferences:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mSaveViewedRunnable:Ljava/lang/Runnable;

.field private mShopIcon:Landroid/view/View;

.field private mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

.field private mShopTutorialViewed:Z

.field private mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

.field private mStaticConfigAllowShopTutorial:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    .line 79
    new-instance v0, Lcom/google/android/music/ShopTutorialController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$1;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

    .line 93
    new-instance v0, Lcom/google/android/music/ShopTutorialController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$2;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mCheckStoreAvailable:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/google/android/music/ShopTutorialController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$3;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/google/android/music/ShopTutorialController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$4;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/google/android/music/ShopTutorialController$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/ShopTutorialController$5;-><init>(Lcom/google/android/music/ShopTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ShopTutorialView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialController;->hasAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/ShopTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/ShopTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialController;->hasStoreContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ShopTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mLoadSavedTipFlagsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    sput-boolean p0, Lcom/google/android/music/ShopTutorialController;->RESET_ON_RELAUNCH:Z

    return p0
.end method

.method private hasAudio()Z
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasAudio(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private hasStoreContent()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasStoreAudio(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Lcom/google/android/music/ShopTutorialView;)V
    .registers 5
    .parameter "context"
    .parameter "shopTutorialView"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    .line 54
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ShopTutorialView;->setShopTutorialDismissListener(Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 59
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mCheckStoreAvailable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 61
    :cond_1e
    return-void
.end method

.method public setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    if-eqz v0, :cond_1f

    .line 72
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isAllowShopTutorial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z

    .line 73
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    invoke-virtual {v0}, Lcom/google/android/music/ShopTutorialView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    .line 74
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/ShopTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    :cond_1f
    return-void
.end method

.method public setShopIcon(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    if-eqz v0, :cond_b

    .line 189
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ShopTutorialView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ShopTutorialView;->setShopIcon(Landroid/view/View;)V

    .line 191
    :cond_b
    return-void
.end method
