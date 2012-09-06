.class public Lcom/google/android/music/athome/AtHomeTutorialController;
.super Ljava/lang/Object;
.source "AtHomeTutorialController.java"


# static fields
.field private static RESET_ON_RELAUNCH:Z


# instance fields
.field private mAtHomeIcon:Landroid/view/View;

.field private mAtHomeState:I

.field private mAtHomeTutorialViewed:Z

.field private mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

.field private mContext:Landroid/app/Activity;

.field private final mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

.field private mLoadSavedPreferencesRunnable:Ljava/lang/Runnable;

.field private mLoadedFromPreferences:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSaveViewedRunnable:Ljava/lang/Runnable;

.field private mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

.field private mTutorialDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeTutorialController;->RESET_ON_RELAUNCH:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z

    .line 38
    iput v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeState:I

    .line 44
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadedFromPreferences:Z

    .line 79
    new-instance v0, Lcom/google/android/music/athome/AtHomeTutorialController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeTutorialController$1;-><init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    .line 90
    new-instance v0, Lcom/google/android/music/athome/AtHomeTutorialController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeTutorialController$2;-><init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadSavedPreferencesRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/google/android/music/athome/AtHomeTutorialController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeTutorialController$3;-><init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/google/android/music/athome/AtHomeTutorialController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeTutorialController$4;-><init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/athome/AtHomeTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/athome/AtHomeTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mSaveViewedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeTutorialController;->RESET_ON_RELAUNCH:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    sput-boolean p0, Lcom/google/android/music/athome/AtHomeTutorialController;->RESET_ON_RELAUNCH:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/music/athome/AtHomeTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadedFromPreferences:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/music/athome/AtHomeTutorialController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadedFromPreferences:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/athome/AtHomeTutorialController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/athome/AtHomeTutorialController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mTutorialDisabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/athome/AtHomeTutorialController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeState:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/athome/AtHomeTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .registers 5
    .parameter "context"
    .parameter "rootView"

    .prologue
    .line 47
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    .line 52
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 53
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mTutorialDisabled:Z

    .line 55
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    if-eqz v0, :cond_29

    .line 56
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 59
    :cond_29
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mTutorialDisabled:Z

    if-nez v0, :cond_34

    .line 60
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadSavedPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 62
    :cond_34
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 68
    iput-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    .line 70
    :cond_13
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public setAtHomeIcon(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeIcon:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ClingTutorialView;->setIconToClingAround(Landroid/view/View;)V

    .line 171
    :cond_b
    return-void
.end method

.method public setAtHomeState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 123
    iput p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeState:I

    .line 124
    return-void
.end method

.method public setCurrentLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mTutorialDisabled:Z

    if-nez v0, :cond_b

    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeTutorialController;->showTutorialIfAvailable()V

    .line 77
    :cond_b
    return-void
.end method

.method public showTutorialIfAvailable()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeTutorialController;->mShowTutorialIfAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
