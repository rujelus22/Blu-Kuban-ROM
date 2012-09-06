.class public Lcom/google/android/music/ActionbarController;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;,
        Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

.field private final mAtHomeTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

.field private mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mBarVisibilities:[I

.field private final mBottomActionBar:Landroid/view/ViewGroup;

.field private final mBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

.field private final mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

.field private mCurrentAtHomeState:I

.field private mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

.field private mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

.field private mHandler:Landroid/os/Handler;

.field private final mHasPermanentMenuKey:Z

.field private mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mMediaRouter:Ljava/lang/Object;

.field private mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

.field private mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mMultipleAudioRoutesAvailable:Z

.field private mMusicMode:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mNowPlayingVisibility:I

.field private mRefreshViewVisibilitiesRunnable:Ljava/lang/Runnable;

.field private mSearchField:Landroid/widget/EditText;

.field private mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mSearchLayout:Landroid/view/View;

.field private mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private final mSideActionBar:Landroid/view/ViewGroup;

.field private mSidebarAlbumInfo:Landroid/view/ViewGroup;

.field private mSplitMode:Z

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mTitle:Landroid/widget/TextView;

.field private final mTopActionBar:Landroid/view/ViewGroup;

.field private mTopBarSpacer:Landroid/view/View;

.field private final mTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

.field private mTopbarDivider:Landroid/view/View;

.field private final mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

.field private mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-string v0, "ActionbarController"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ActionbarController;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/music/MusicEventLogger;)V
    .registers 11
    .parameter "context"
    .parameter "preferences"
    .parameter "topActionBar"
    .parameter "bottomActionBar"
    .parameter "sideActionBar"
    .parameter "topbarSpacer"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    .line 109
    iput v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    .line 113
    iput-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    .line 114
    iput-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    .line 116
    iput v2, p0, Lcom/google/android/music/ActionbarController;->mMusicMode:I

    .line 117
    iput-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_e2

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    .line 133
    iput-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mMultipleAudioRoutesAvailable:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/google/android/music/ActionbarController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$1;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mRefreshViewVisibilitiesRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/google/android/music/ActionbarController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$2;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    .line 293
    new-instance v0, Lcom/google/android/music/ActionbarController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$3;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 299
    new-instance v0, Lcom/google/android/music/ActionbarController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$4;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 186
    iput-object p7, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 188
    iput-object p3, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    .line 189
    iput-object p4, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    .line 190
    iput-object p5, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    .line 192
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_58

    .line 193
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    aput v1, v0, v2

    .line 195
    :cond_58
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_67

    .line 196
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    .line 198
    :cond_67
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_76

    .line 199
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    .line 202
    :cond_76
    iput-object p2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 203
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/utils/PostFroyoUtils$ViewConfigurationComp;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    .line 205
    invoke-virtual {p0}, Lcom/google/android/music/ActionbarController;->initializeViews()V

    .line 207
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserverHandle:Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mAtHomeTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mMediaRouter:Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMediaRouter:Ljava/lang/Object;

    const v1, 0x800001

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 223
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V

    .line 224
    return-void

    .line 127
    nop

    :array_e2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/ActionbarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->refreshMultipleAudioRoutesAvailable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/ActionbarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/ActionbarController;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ActionbarController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/ActionbarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->isSyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/ActionbarController;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/music/ActionbarController;->setSyncStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    return-object v0
.end method

.method private animateActionBar(ZIZ)Z
    .registers 16
    .parameter "makeVis"
    .parameter "actionBarIndex"
    .parameter "isFirstRun"

    .prologue
    .line 641
    packed-switch p2, :pswitch_data_b4

    .line 654
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    .line 655
    .local v1, actionBar:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    .line 656
    .local v7, xMultiplier:I
    const/4 v8, -0x1

    .line 660
    .local v8, yMultiplier:I
    :goto_7
    monitor-enter v1

    .line 662
    :try_start_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_26

    const/4 v5, 0x1

    .line 664
    .local v5, currentlyVis:Z
    :goto_f
    if-eqz p3, :cond_2d

    .line 666
    if-eqz p1, :cond_28

    const/4 v9, 0x0

    :goto_14
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 667
    if-ne v5, p1, :cond_2b

    const/4 v9, 0x1

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_66

    .line 709
    :goto_1b
    return v9

    .line 643
    .end local v1           #actionBar:Landroid/view/ViewGroup;
    .end local v5           #currentlyVis:Z
    .end local v7           #xMultiplier:I
    .end local v8           #yMultiplier:I
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    .line 644
    .restart local v1       #actionBar:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    .line 645
    .restart local v7       #xMultiplier:I
    const/4 v8, 0x1

    .line 646
    .restart local v8       #yMultiplier:I
    goto :goto_7

    .line 648
    .end local v1           #actionBar:Landroid/view/ViewGroup;
    .end local v7           #xMultiplier:I
    .end local v8           #yMultiplier:I
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    .line 649
    .restart local v1       #actionBar:Landroid/view/ViewGroup;
    const/4 v7, -0x1

    .line 650
    .restart local v7       #xMultiplier:I
    const/4 v8, 0x0

    .line 651
    .restart local v8       #yMultiplier:I
    goto :goto_7

    .line 662
    :cond_26
    const/4 v5, 0x0

    goto :goto_f

    .line 666
    .restart local v5       #currentlyVis:Z
    :cond_28
    const/16 v9, 0x8

    goto :goto_14

    .line 667
    :cond_2b
    const/4 v9, 0x0

    goto :goto_1a

    .line 671
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 672
    .local v4, currentAnim:Landroid/view/animation/Animation;
    if-eqz v4, :cond_5b

    instance-of v9, v4, Landroid/view/animation/AnimationSet;

    if-eqz v9, :cond_5b

    .line 673
    move-object v0, v4

    check-cast v0, Landroid/view/animation/AnimationSet;

    move-object v3, v0

    .line 674
    .local v3, animSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 675
    .local v6, listAnim:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/view/animation/Animation;>;"
    :cond_43
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 676
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 677
    .local v2, anim:Landroid/view/animation/Animation;
    if-eqz v2, :cond_43

    instance-of v9, v2, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    if-eqz v9, :cond_43

    .line 678
    check-cast v2, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    .end local v2           #anim:Landroid/view/animation/Animation;
    #getter for: Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->mMakeVisible:Z
    invoke-static {v2}, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->access$900(Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;)Z

    move-result v5

    .line 685
    .end local v3           #animSet:Landroid/view/animation/AnimationSet;
    .end local v6           #listAnim:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/view/animation/Animation;>;"
    :cond_5b
    if-eqz p1, :cond_5f

    if-nez v5, :cond_63

    :cond_5f
    if-nez p1, :cond_69

    if-nez v5, :cond_69

    .line 686
    :cond_63
    const/4 v9, 0x0

    monitor-exit v1

    goto :goto_1b

    .line 708
    .end local v4           #currentAnim:Landroid/view/animation/Animation;
    .end local v5           #currentlyVis:Z
    :catchall_66
    move-exception v9

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_66

    throw v9

    .line 688
    .restart local v4       #currentAnim:Landroid/view/animation/Animation;
    .restart local v5       #currentlyVis:Z
    :cond_69
    if-eqz p1, :cond_6f

    .line 689
    const/4 v9, 0x0

    :try_start_6c
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 691
    :cond_6f
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 692
    .local v2, anim:Landroid/view/animation/AnimationSet;
    new-instance v9, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    invoke-direct {v9, p1, v7, v8}, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;-><init>(ZII)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 693
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_ad

    const/4 v9, 0x0

    move v10, v9

    :goto_83
    if-eqz p1, :cond_b1

    const/high16 v9, 0x3f80

    :goto_87
    invoke-direct {v11, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 694
    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v9}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 695
    new-instance v9, Lcom/google/android/music/ActionbarController$6;

    invoke-direct {v9, p0, v1, p1}, Lcom/google/android/music/ActionbarController$6;-><init>(Lcom/google/android/music/ActionbarController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 707
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 708
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_6c .. :try_end_aa} :catchall_66

    .line 709
    const/4 v9, 0x1

    goto/16 :goto_1b

    .line 693
    :cond_ad
    const/high16 v9, 0x3f80

    move v10, v9

    goto :goto_83

    :cond_b1
    const/4 v9, 0x0

    goto :goto_87

    .line 641
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method private hideSearchField()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 772
    :goto_8
    return-void

    .line 770
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSoftKeyboard()V

    goto :goto_8
.end method

.method private hideSoftKeyboard()V
    .registers 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 371
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    :goto_10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 373
    return-void

    .line 371
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    goto :goto_10
.end method

.method private initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    .registers 3
    .parameter "id"

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;-><init>(Lcom/google/android/music/ActionbarController;I)V

    return-object v0
.end method

.method private isSyncActiveOrPending()Z
    .registers 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 307
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z
    .registers 4
    .parameter "givenView"
    .parameter "views"

    .prologue
    .line 376
    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$600(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_12

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$700(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_12

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$800(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private launchNewPlaylist()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    .line 718
    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .registers 3
    .parameter "searchString"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startLocalSearch(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private refreshMultipleAudioRoutesAvailable()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 447
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->getRouteCount(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v0, :cond_13

    .line 448
    .local v0, multipleAudioRoutesAvailable:Z
    :goto_9
    iget-boolean v1, p0, Lcom/google/android/music/ActionbarController;->mMultipleAudioRoutesAvailable:Z

    if-eq v0, v1, :cond_12

    .line 449
    iput-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mMultipleAudioRoutesAvailable:Z

    .line 450
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->refreshViewVisibilities()V

    .line 452
    :cond_12
    return-void

    .line 447
    .end local v0           #multipleAudioRoutesAvailable:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private refreshViewVisibilities()V
    .registers 3

    .prologue
    .line 468
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 469
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mRefreshViewVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 473
    :goto_b
    return-void

    .line 471
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mRefreshViewVisibilitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method protected static setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V
    .registers 5
    .parameter "clickListener"
    .parameter "views"

    .prologue
    .line 327
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getTopBarView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getSideBarView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getBottomBarView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    .line 329
    return-void
.end method

.method protected static varargs setClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .registers 6
    .parameter "clickListener"
    .parameter "views"

    .prologue
    .line 316
    if-nez p1, :cond_3

    .line 324
    :cond_2
    return-void

    .line 319
    :cond_3
    move-object v0, p1

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 320
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_f

    .line 321
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private setSyncStatus(Z)V
    .registers 5
    .parameter "active"

    .prologue
    .line 344
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 345
    .local v0, targetVisibility:I
    :goto_3
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/ActionbarController$5;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/ActionbarController$5;-><init>(Lcom/google/android/music/ActionbarController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void

    .line 344
    .end local v0           #targetVisibility:I
    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private showSearchField()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 764
    :cond_9
    :goto_9
    return-void

    .line 756
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 758
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 760
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_9

    .line 762
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_9
.end method

.method private updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V
    .registers 6
    .parameter "view"
    .parameter "config"
    .parameter "flag"
    .parameter "barIndex"

    .prologue
    .line 617
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    aget v0, v0, p4

    if-nez v0, :cond_12

    .line 618
    invoke-virtual {p2, p3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :cond_12
    return-void

    .line 618
    :cond_13
    const/16 v0, 0x8

    goto :goto_f
.end method

.method private updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V
    .registers 6
    .parameter "views"
    .parameter "config"
    .parameter "flag"

    .prologue
    .line 612
    invoke-virtual {p2, p3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    .line 613
    .local v0, visibility:I
    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 614
    return-void

    .line 612
    .end local v0           #visibility:I
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method public focusOnSelectedModeItem()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_d

    .line 790
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->requestFocus()Z

    .line 792
    :cond_d
    return-void
.end method

.method public getAlbumInfoView()Landroid/view/View;
    .registers 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 783
    const/4 v0, 0x0

    .line 785
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public getBottomBarHeight()I
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 461
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 463
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getMenuButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasPermanentMenuKey()Z
    .registers 2

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    return v0
.end method

.method protected initializeViews()V
    .registers 3

    .prologue
    .line 227
    const v0, 0x7f1000df

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 228
    const v0, 0x7f100100

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 229
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000d1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    .line 233
    const v0, 0x7f1000f2

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 234
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    if-nez v0, :cond_57

    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the goBackView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_57
    const v0, 0x7f100101

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 238
    const v0, 0x7f1000d0

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 239
    const v0, 0x7f1000f9

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 240
    const v0, 0x7f1000fe

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 241
    const v0, 0x7f100086

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 242
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 243
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x800001

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouteButtonCompat;->setRouteTypes(Landroid/view/View;I)V

    .line 247
    :cond_98
    const v0, 0x7f1000fd

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 248
    const v0, 0x7f1000de

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/DisplayModeSelector;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    .line 249
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c1

    .line 250
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSidebarAlbumInfo:Landroid/view/ViewGroup;

    .line 252
    :cond_c1
    const v0, 0x7f1000fa

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 253
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f100103

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_fe

    .line 265
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 268
    :cond_fe
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    if-eqz v0, :cond_107

    .line 269
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 271
    :cond_107
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_120

    .line 276
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 279
    :cond_120
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13e

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 281
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    :cond_13e
    return-void
.end method

.method public isAtHomeActive()Z
    .registers 2

    .prologue
    .line 733
    iget v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive(I)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 381
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 382
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "menu"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->openMenu()V

    .line 444
    :cond_21
    :goto_21
    return-void

    .line 386
    :cond_22
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 387
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "search"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/music/ActionbarController;->launchSearch(Ljava/lang/String;)V

    goto :goto_21

    .line 391
    :cond_40
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 392
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "newPlaylist"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->launchNewPlaylist()V

    goto :goto_21

    .line 396
    :cond_5d
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 398
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "goUp"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->goUp()V

    goto :goto_21

    .line 402
    :cond_7c
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 403
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "goToNowPlaying"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_21

    .line 407
    :cond_9b
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 408
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "shop"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :try_start_b4
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v6, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v6}, Lcom/google/android/music/dl/IntentConstants;->getMusicStoreIntent(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_bf
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b4 .. :try_end_bf} :catch_c1

    goto/16 :goto_21

    .line 413
    :catch_c1
    move-exception v0

    .line 414
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "ActionbarController"

    const-string v6, "Tried to launch the store, but it isn\'t available.  Disabling."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, v9}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreAvailable(Z)V

    goto/16 :goto_21

    .line 417
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_d0
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 419
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v5

    if-nez v5, :cond_119

    .line 421
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    const v5, 0x8000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    const/high16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v5, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    .line 426
    const-string v1, "0"

    .line 430
    .end local v2           #i:Landroid/content/Intent;
    .local v1, hasAccount:Ljava/lang/String;
    :goto_fe
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "atHomePicker"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    const-string v8, "hasAccount"

    aput-object v8, v7, v11

    const/4 v8, 0x3

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 428
    .end local v1           #hasAccount:Ljava/lang/String;
    :cond_119
    const-string v1, "1"

    .restart local v1       #hasAccount:Ljava/lang/String;
    goto :goto_fe

    .line 434
    .end local v1           #hasAccount:Ljava/lang/String;
    :cond_11c
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 435
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v6, "showVolume"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "actionArea"

    aput-object v8, v7, v9

    const-string v8, "actionBar"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    iget-object v5, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v5}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1000ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 439
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_21

    instance-of v5, v3, Lcom/google/android/music/widgets/VolumeWidget;

    if-eqz v5, :cond_21

    move-object v4, v3

    .line 440
    check-cast v4, Lcom/google/android/music/widgets/VolumeWidget;

    .line 441
    .local v4, vw:Lcom/google/android/music/widgets/VolumeWidget;
    invoke-virtual {v4}, Lcom/google/android/music/widgets/VolumeWidget;->showSystemVolume()V

    goto/16 :goto_21
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMediaRouter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 291
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 357
    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-ne p2, v1, :cond_16

    .line 358
    :cond_6
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSoftKeyboard()V

    .line 359
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, downFocus:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 363
    :cond_14
    const/4 v1, 0x1

    .line 365
    .end local v0           #downFocus:Landroid/view/View;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 897
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v1

    .line 898
    .local v1, musicMode:I
    iget v2, p0, Lcom/google/android/music/ActionbarController;->mMusicMode:I

    if-eq v2, v1, :cond_17

    const/4 v0, 0x1

    .line 900
    .local v0, dirty:Z
    :goto_9
    if-eqz v0, :cond_16

    .line 901
    iput v1, p0, Lcom/google/android/music/ActionbarController;->mMusicMode:I

    .line 902
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    if-eqz v2, :cond_16

    .line 903
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    invoke-virtual {p0, v2}, Lcom/google/android/music/ActionbarController;->updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 906
    :cond_16
    return-void

    .line 898
    .end local v0           #dirty:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setCurrentAtHomeState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 726
    iget v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    if-eq v0, p1, :cond_9

    .line 727
    iput p1, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    .line 728
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->refreshViewVisibilities()V

    .line 730
    :cond_9
    return-void
.end method

.method public setDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "rootState"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_9

    .line 624
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 626
    :cond_9
    return-void
.end method

.method public setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "controller"

    .prologue
    .line 332
    if-nez p1, :cond_a

    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MusicStateController was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 336
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_17

    .line 337
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 339
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ActionbarController;->mMusicMode:I

    .line 340
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 341
    return-void
.end method

.method public setNowPlayingVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 721
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    .line 722
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    iget v1, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 723
    return-void

    .line 721
    :cond_d
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public declared-synchronized updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "primary"
    .parameter "secondary"
    .parameter "isAtTop"

    .prologue
    .line 737
    monitor-enter p0

    if-eqz p3, :cond_10

    .line 738
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 741
    :cond_10
    if-nez p3, :cond_1f

    .line 742
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 746
    :cond_1f
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2f

    .line 747
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    .line 749
    :cond_2f
    monitor-exit p0

    return-void

    .line 737
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 13
    .parameter "config"

    .prologue
    .line 476
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    if-nez v8, :cond_17c

    const/4 v4, 0x1

    .line 478
    .local v4, isFirstViewUpdate:Z
    :goto_5
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    .line 479
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isSplitActionBar()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    .line 481
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v5

    .line 482
    .local v5, isVisible:Z
    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v10, 0x0

    if-eqz v5, :cond_17f

    const/4 v8, 0x0

    :goto_18
    aput v8, v9, v10

    .line 483
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8, v4}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZIZ)Z

    .line 485
    iget v8, p0, Lcom/google/android/music/ActionbarController;->mMusicMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_183

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    if-eqz v8, :cond_183

    const/4 v5, 0x1

    .line 487
    :goto_2b
    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v10, 0x1

    if-eqz v5, :cond_186

    const/4 v8, 0x0

    :goto_31
    aput v8, v9, v10

    .line 488
    const/4 v8, 0x1

    invoke-direct {p0, v5, v8, v4}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZIZ)Z

    .line 490
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 491
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v5

    .line 492
    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v10, 0x2

    if-eqz v5, :cond_18a

    const/4 v8, 0x0

    :goto_4a
    aput v8, v9, v10

    .line 493
    const/4 v8, 0x2

    invoke-direct {p0, v5, v8, v4}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZIZ)Z

    .line 496
    :cond_50
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    if-eqz v8, :cond_68

    .line 497
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    if-eqz v8, :cond_18e

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    if-eqz v8, :cond_18e

    .line 499
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :cond_68
    :goto_68
    iget v8, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    if-nez v8, :cond_197

    const/4 v8, 0x1

    :goto_6d
    invoke-virtual {p0, v8}, Lcom/google/android/music/ActionbarController;->setNowPlayingVisibility(Z)V

    .line 509
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    instance-of v8, v8, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;

    if-eqz v8, :cond_19a

    .line 510
    const/4 v2, 0x0

    .line 517
    .local v2, barIndex:I
    :goto_77
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    const/16 v9, 0x80

    invoke-direct {p0, v8, p1, v9, v2}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 520
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSidebarAlbumInfo:Landroid/view/ViewGroup;

    const/16 v9, 0x200

    const/4 v10, 0x2

    invoke-direct {p0, v8, p1, v9, v10}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 523
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_a5

    .line 524
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-direct {p0, v8, p1, v9, v10}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 525
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    if-eqz v8, :cond_a5

    .line 526
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1be

    .line 527
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_a5
    :goto_a5
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x10

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 536
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x20

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 538
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v6

    .line 539
    .local v6, streamingEnabled:Z
    iget v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeAvailable(I)Z

    move-result v0

    .line 540
    .local v0, atHomeAvailable:Z
    iget v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive(I)Z

    move-result v1

    .line 541
    .local v1, atHomeConnected:Z
    iget v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentAtHomeState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c6

    const/4 v3, 0x1

    .line 546
    .local v3, inPartyMode:Z
    :goto_cb
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v8

    if-eqz v8, :cond_1c9

    if-nez v0, :cond_1c9

    .line 547
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x400

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 552
    :goto_dc
    iget-boolean v8, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    if-eqz v8, :cond_1d2

    .line 553
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 558
    :goto_e7
    const/4 v7, 0x0

    .line 559
    .local v7, volumeVisible:Z
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    if-eqz v8, :cond_104

    .line 560
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->showVolumeButton()Z

    move-result v8

    if-eqz v8, :cond_1db

    if-nez v0, :cond_1db

    .line 561
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x800

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 562
    const/16 v8, 0x800

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 568
    :cond_104
    :goto_104
    if-nez v7, :cond_1e4

    if-nez v0, :cond_10c

    iget-boolean v8, p0, Lcom/google/android/music/ActionbarController;->mMultipleAudioRoutesAvailable:Z

    if-eqz v8, :cond_1e4

    .line 569
    :cond_10c
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x2000

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 571
    const/16 v8, 0x2000

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    or-int/2addr v7, v8

    .line 577
    :goto_11a
    if-eqz v7, :cond_123

    .line 578
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 581
    :cond_123
    if-eqz v0, :cond_1ed

    if-eqz v3, :cond_1ed

    .line 583
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mAtHomeTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    :goto_135
    const/16 v8, 0x100

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v8

    if-eqz v8, :cond_1fd

    .line 591
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->showSearchField()V

    .line 596
    :goto_140
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    if-eqz v8, :cond_17b

    .line 597
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    if-eqz v8, :cond_14f

    .line 598
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 600
    :cond_14f
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->getDefaultSearchString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->getSearchFieldTextWatcher()Landroid/text/TextWatcher;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    .line 603
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    if-eqz v8, :cond_169

    .line 604
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 606
    :cond_169
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->clearDefaultSearchString()V

    .line 607
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 609
    :cond_17b
    return-void

    .line 476
    .end local v0           #atHomeAvailable:Z
    .end local v1           #atHomeConnected:Z
    .end local v2           #barIndex:I
    .end local v3           #inPartyMode:Z
    .end local v4           #isFirstViewUpdate:Z
    .end local v5           #isVisible:Z
    .end local v6           #streamingEnabled:Z
    .end local v7           #volumeVisible:Z
    :cond_17c
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 482
    .restart local v4       #isFirstViewUpdate:Z
    .restart local v5       #isVisible:Z
    :cond_17f
    const/16 v8, 0x8

    goto/16 :goto_18

    .line 485
    :cond_183
    const/4 v5, 0x0

    goto/16 :goto_2b

    .line 487
    :cond_186
    const/16 v8, 0x8

    goto/16 :goto_31

    .line 492
    :cond_18a
    const/16 v8, 0x8

    goto/16 :goto_4a

    .line 501
    :cond_18e
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_68

    .line 506
    :cond_197
    const/4 v8, 0x0

    goto/16 :goto_6d

    .line 511
    :cond_19a
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    instance-of v8, v8, Lcom/google/android/music/widgets/SideBarDisplayModeSelector;

    if-eqz v8, :cond_1a3

    .line 512
    const/4 v2, 0x2

    .restart local v2       #barIndex:I
    goto/16 :goto_77

    .line 514
    .end local v2           #barIndex:I
    :cond_1a3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown display mode selector type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 529
    .restart local v2       #barIndex:I
    :cond_1be
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a5

    .line 541
    .restart local v0       #atHomeAvailable:Z
    .restart local v1       #atHomeConnected:Z
    .restart local v6       #streamingEnabled:Z
    :cond_1c6
    const/4 v3, 0x0

    goto/16 :goto_cb

    .line 549
    .restart local v3       #inPartyMode:Z
    :cond_1c9
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    goto/16 :goto_dc

    .line 555
    :cond_1d2
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x40

    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    goto/16 :goto_e7

    .line 564
    .restart local v7       #volumeVisible:Z
    :cond_1db
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mVolumeButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    goto/16 :goto_104

    .line 573
    :cond_1e4
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mAudioOutputSelector:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    goto/16 :goto_11a

    .line 586
    :cond_1ed
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    iget-object v8, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/music/ActionbarController;->mTopDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_135

    .line 593
    :cond_1fd
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSearchField()V

    goto/16 :goto_140
.end method
