.class public Lcom/google/android/music/ActionbarController;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


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
.field private mBarVisibilities:[I

.field private final mBottomActionBar:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

.field private mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

.field private mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

.field private mHandler:Landroid/os/Handler;

.field private final mHasPermanentMenuKey:Z

.field private mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mInManageMusicMode:Z

.field private mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

.field private mNowPlayingVisibility:I

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

.field private mTopbarDivider:Landroid/view/View;

.field private mUpdateSyncStatusRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "TopBar"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ActionbarController;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 10
    .parameter "context"
    .parameter "preferences"
    .parameter "topActionBar"
    .parameter "bottomActionBar"
    .parameter "sideActionBar"
    .parameter "topbarSpacer"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    .line 96
    iput-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    .line 97
    iput-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    .line 98
    iput-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mInManageMusicMode:Z

    .line 99
    iput-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/google/android/music/ActionbarController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$1;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 202
    new-instance v0, Lcom/google/android/music/ActionbarController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ActionbarController$2;-><init>(Lcom/google/android/music/ActionbarController;)V

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

    .line 121
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    .line 123
    iput-object p4, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    .line 124
    iput-object p5, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_44

    .line 127
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    aput v1, v0, v2

    .line 129
    :cond_44
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_53

    .line 130
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    .line 132
    :cond_53
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_62

    .line 133
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    .line 136
    :cond_62
    iput-object p2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 137
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/utils/PostFroyoUtils$ViewConfigurationComp;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    .line 139
    invoke-virtual {p0}, Lcom/google/android/music/ActionbarController;->initializeViews()V

    .line 141
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserverHandle:Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    .line 144
    return-void

    .line 104
    nop

    :array_84
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/music/ActionbarController;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/ActionbarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->isSyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/ActionbarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/ActionbarController;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ActionbarController;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/music/ActionbarController;->setSyncStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/ActionbarController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animateActionBar(ZI)Z
    .registers 15
    .parameter "makeVis"
    .parameter "actionBarIndex"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 438
    packed-switch p2, :pswitch_data_82

    .line 451
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    .line 452
    .local v0, actionBar:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 453
    .local v4, xMultiplier:I
    const/4 v5, -0x1

    .line 457
    .local v5, yMultiplier:I
    :goto_c
    monitor-enter v0

    .line 458
    :try_start_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_38

    move v3, v7

    .line 461
    .local v3, currentlyVis:Z
    :goto_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 462
    .local v2, currentAnim:Landroid/view/animation/Animation;
    if-eqz v2, :cond_24

    instance-of v10, v2, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    if-eqz v10, :cond_24

    .line 463
    check-cast v2, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    .end local v2           #currentAnim:Landroid/view/animation/Animation;
    #getter for: Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->mMakeVisible:Z
    invoke-static {v2}, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->access$700(Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;)Z

    move-result v3

    .line 466
    :cond_24
    if-eqz p1, :cond_28

    if-nez v3, :cond_2c

    :cond_28
    if-nez p1, :cond_3a

    if-nez v3, :cond_3a

    .line 467
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_7f

    .line 491
    :goto_2d
    return v6

    .line 440
    .end local v0           #actionBar:Landroid/view/ViewGroup;
    .end local v3           #currentlyVis:Z
    .end local v4           #xMultiplier:I
    .end local v5           #yMultiplier:I
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    .line 441
    .restart local v0       #actionBar:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 442
    .restart local v4       #xMultiplier:I
    const/4 v5, 0x1

    .line 443
    .restart local v5       #yMultiplier:I
    goto :goto_c

    .line 445
    .end local v0           #actionBar:Landroid/view/ViewGroup;
    .end local v4           #xMultiplier:I
    .end local v5           #yMultiplier:I
    :pswitch_33
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    .line 446
    .restart local v0       #actionBar:Landroid/view/ViewGroup;
    const/4 v4, -0x1

    .line 447
    .restart local v4       #xMultiplier:I
    const/4 v5, 0x0

    .line 448
    .restart local v5       #yMultiplier:I
    goto :goto_c

    :cond_38
    move v3, v6

    .line 458
    goto :goto_14

    .line 469
    .restart local v3       #currentlyVis:Z
    :cond_3a
    if-eqz p1, :cond_40

    .line 470
    const/4 v6, 0x0

    :try_start_3d
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 472
    :cond_40
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 473
    .local v1, anim:Landroid/view/animation/AnimationSet;
    new-instance v6, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;

    invoke-direct {v6, p1, v4, v5}, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;-><init>(ZII)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 474
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_7b

    move v10, v9

    :goto_53
    if-eqz p1, :cond_7d

    move v6, v8

    :goto_56
    invoke-direct {v11, v10, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget-object v6, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f080007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 476
    new-instance v6, Lcom/google/android/music/ActionbarController$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/google/android/music/ActionbarController$4;-><init>(Lcom/google/android/music/ActionbarController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    monitor-exit v0

    move v6, v7

    .line 491
    goto :goto_2d

    :cond_7b
    move v10, v8

    .line 474
    goto :goto_53

    :cond_7d
    move v6, v9

    goto :goto_56

    .line 490
    .end local v1           #anim:Landroid/view/animation/AnimationSet;
    .end local v3           #currentlyVis:Z
    :catchall_7f
    move-exception v6

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3d .. :try_end_81} :catchall_7f

    throw v6

    .line 438
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method private hideSearchField()V
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 550
    :goto_8
    return-void

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSoftKeyboard()V

    goto :goto_8
.end method

.method private hideSoftKeyboard()V
    .registers 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 277
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    :goto_10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 279
    return-void

    .line 277
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    goto :goto_10
.end method

.method private initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    .registers 3
    .parameter "id"

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;-><init>(Lcom/google/android/music/ActionbarController;I)V

    return-object v0
.end method

.method private isSyncActiveOrPending()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 210
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 211
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const/4 v1, 0x1

    .line 215
    .end local v0           #account:Landroid/accounts/Account;
    :cond_20
    :goto_20
    return v1

    .line 214
    :cond_21
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/ActionbarController;->mUpdateSyncStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    goto :goto_20
.end method

.method private isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z
    .registers 4
    .parameter "givenView"
    .parameter "views"

    .prologue
    .line 282
    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$500(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_12

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mSideBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$600(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_12

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$400(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

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
    .line 499
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    .line 500
    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .registers 3
    .parameter "searchString"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startLocalSearch(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method protected static setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V
    .registers 5
    .parameter "clickListener"
    .parameter "views"

    .prologue
    .line 234
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

    .line 236
    return-void
.end method

.method protected static varargs setClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .registers 6
    .parameter "clickListener"
    .parameter "views"

    .prologue
    .line 223
    if-nez p1, :cond_3

    .line 231
    :cond_2
    return-void

    .line 226
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

    .line 227
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_f

    .line 228
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private setSyncStatus(Z)V
    .registers 5
    .parameter "active"

    .prologue
    .line 250
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 251
    .local v0, targetVisibility:I
    :goto_3
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/ActionbarController$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/ActionbarController$3;-><init>(Lcom/google/android/music/ActionbarController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void

    .line 250
    .end local v0           #targetVisibility:I
    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private showSearchField()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 542
    :cond_9
    :goto_9
    return-void

    .line 534
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 536
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 538
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_9

    .line 540
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
    .line 417
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    aget v0, v0, p4

    if-nez v0, :cond_12

    .line 418
    invoke-virtual {p2, p3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_12
    return-void

    .line 418
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
    .line 412
    invoke-virtual {p2, p3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    .line 413
    .local v0, visibility:I
    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 414
    return-void

    .line 412
    .end local v0           #visibility:I
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method public focusOnSelectedModeItem()V
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_d

    .line 568
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->requestFocus()Z

    .line 570
    :cond_d
    return-void
.end method

.method public getAlbumInfoView()Landroid/view/View;
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public getBottomBarHeight()I
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 309
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 311
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getMenuButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$400(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mTopBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$500(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public hasPermanentMenuKey()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    return v0
.end method

.method protected initializeViews()V
    .registers 3

    .prologue
    .line 147
    const v0, 0x7f100047

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 148
    const v0, 0x7f100046

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 149
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchLayout:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    .line 151
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    .line 153
    const v0, 0x7f1000cc

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 154
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    if-nez v0, :cond_56

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the goBackView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_56
    const v0, 0x7f100048

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 158
    const v0, 0x7f1000b5

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 159
    const v0, 0x7f100044

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 160
    const v0, 0x7f100045

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 161
    const v0, 0x7f1000be

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/DisplayModeSelector;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    .line 162
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9a

    .line 163
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSideActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mSidebarAlbumInfo:Landroid/view/ViewGroup;

    .line 165
    :cond_9a
    const v0, 0x7f100040

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->initializeActionBarView(I)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    .line 166
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    if-eqz v0, :cond_d0

    .line 176
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    :cond_d0
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-static {p0, v0}, Lcom/google/android/music/ActionbarController;->setClickListener(Landroid/view/View$OnClickListener;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_e9

    .line 183
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 186
    :cond_e9
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_107

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_107

    .line 188
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTopActionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    :cond_107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->openMenu()V

    .line 300
    :cond_d
    :goto_d
    return-void

    .line 289
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/ActionbarController;->launchSearch(Ljava/lang/String;)V

    goto :goto_d

    .line 291
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 292
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->launchNewPlaylist()V

    goto :goto_d

    .line 293
    :cond_27
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 294
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goUp()V

    goto :goto_d

    .line 295
    :cond_35
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 296
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_d

    .line 297
    :cond_43
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ActionbarController;->isView(Landroid/view/View;Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 298
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/music/dl/IntentConstants;->getMusicStoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 263
    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-ne p2, v1, :cond_16

    .line 264
    :cond_6
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSoftKeyboard()V

    .line 265
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, downFocus:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 269
    :cond_14
    const/4 v1, 0x1

    .line 271
    .end local v0           #downFocus:Landroid/view/View;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 5
    .parameter "inManageMusicMode"
    .parameter "musicManager"

    .prologue
    .line 672
    iget-boolean v1, p0, Lcom/google/android/music/ActionbarController;->mInManageMusicMode:Z

    if-eq v1, p1, :cond_13

    const/4 v0, 0x1

    .line 674
    .local v0, dirty:Z
    :goto_5
    if-eqz v0, :cond_12

    .line 675
    iput-boolean p1, p0, Lcom/google/android/music/ActionbarController;->mInManageMusicMode:Z

    .line 676
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    if-eqz v1, :cond_12

    .line 677
    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    invoke-virtual {p0, v1}, Lcom/google/android/music/ActionbarController;->updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 680
    :cond_12
    return-void

    .line 672
    .end local v0           #dirty:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "rootState"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 426
    :cond_9
    return-void
.end method

.method public setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "controller"

    .prologue
    .line 239
    if-nez p1, :cond_a

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MusicStateController was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 243
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    if-eqz v0, :cond_17

    .line 244
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    iget-object v1, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 246
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 247
    return-void
.end method

.method public setNowPlayingVisibility(Z)V
    .registers 7
    .parameter "visible"

    .prologue
    const v4, 0x7f100043

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 503
    if-eqz p1, :cond_28

    move v0, v1

    :goto_9
    iput v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    .line 504
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    iget v3, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    invoke-virtual {v0, v3}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    #getter for: Lcom/google/android/music/ActionbarController$SplitActionBarViews;->mBottomBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->access$400(Lcom/google/android/music/ActionbarController$SplitActionBarViews;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 506
    iget v0, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    if-nez v0, :cond_2a

    .line 507
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_27
    :goto_27
    return-void

    :cond_28
    move v0, v2

    .line 503
    goto :goto_9

    .line 509
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBottomActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27
.end method

.method public declared-synchronized updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "primary"
    .parameter "secondary"
    .parameter "isAtTop"

    .prologue
    .line 515
    monitor-enter p0

    if-eqz p3, :cond_10

    .line 516
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 519
    :cond_10
    if-nez p3, :cond_1f

    .line 520
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mSecondaryTitleGroup:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mHomeIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 524
    :cond_1f
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2f

    .line 525
    iget-object v0, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    .line 527
    :cond_2f
    monitor-exit p0

    return-void

    .line 515
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateViewVisibilities(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 11
    .parameter "config"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 316
    iput-object p1, p0, Lcom/google/android/music/ActionbarController;->mCurrentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    .line 317
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isSplitActionBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mSplitMode:Z

    .line 319
    invoke-virtual {p1, v5}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v1

    .line 320
    .local v1, isVisible:Z
    iget-object v6, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    if-eqz v1, :cond_107

    move v2, v3

    :goto_17
    aput v2, v6, v3

    .line 321
    invoke-direct {p0, v1, v3}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZI)Z

    .line 323
    iget-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mInManageMusicMode:Z

    if-nez v2, :cond_10a

    invoke-virtual {p1, v7}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_10a

    move v1, v5

    .line 325
    :goto_27
    iget-object v6, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    if-eqz v1, :cond_10d

    move v2, v3

    :goto_2c
    aput v2, v6, v5

    .line 326
    invoke-direct {p0, v1, v5}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZI)Z

    .line 328
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 329
    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v1

    .line 330
    iget-object v6, p0, Lcom/google/android/music/ActionbarController;->mBarVisibilities:[I

    if-eqz v1, :cond_110

    move v2, v3

    :goto_42
    aput v2, v6, v7

    .line 331
    invoke-direct {p0, v1, v7}, Lcom/google/android/music/ActionbarController;->animateActionBar(ZI)Z

    .line 334
    :cond_47
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    if-eqz v2, :cond_5c

    .line 335
    invoke-virtual {p1, v5}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-virtual {p1, v8}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 337
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_5c
    :goto_5c
    iget v2, p0, Lcom/google/android/music/ActionbarController;->mNowPlayingVisibility:I

    if-nez v2, :cond_11a

    :goto_60
    invoke-virtual {p0, v5}, Lcom/google/android/music/ActionbarController;->setNowPlayingVisibility(Z)V

    .line 347
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    instance-of v2, v2, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;

    if-eqz v2, :cond_11d

    .line 348
    const/4 v0, 0x0

    .line 355
    .local v0, barIndex:I
    :goto_6a
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    const/16 v5, 0x80

    invoke-direct {p0, v2, p1, v5, v0}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 358
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSidebarAlbumInfo:Landroid/view/ViewGroup;

    const/16 v5, 0x200

    invoke-direct {p0, v2, p1, v5, v7}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 361
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_92

    .line 362
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1, v4, v3}, Lcom/google/android/music/ActionbarController;->updateVisibility(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;II)V

    .line 363
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    if-eqz v2, :cond_92

    .line 364
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_141

    .line 365
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mNewPlaylistIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v3, 0x10

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 374
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v3, 0x20

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 378
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v2

    if-eqz v2, :cond_148

    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v2

    if-eqz v2, :cond_148

    .line 379
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v3, 0x400

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    .line 384
    :goto_b7
    iget-boolean v2, p0, Lcom/google/android/music/ActionbarController;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_14f

    .line 385
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v2, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 390
    :goto_c0
    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 391
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->showSearchField()V

    .line 396
    :goto_cb
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    if-eqz v2, :cond_106

    .line 397
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_da

    .line 398
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 400
    :cond_da
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->getDefaultSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->getSearchFieldTextWatcher()Landroid/text/TextWatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    .line 403
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_f4

    .line 404
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/music/ActionbarController;->mCurrentSearchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 406
    :cond_f4
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->clearDefaultSearchString()V

    .line 407
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/music/ActionbarController;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 409
    :cond_106
    return-void

    .end local v0           #barIndex:I
    :cond_107
    move v2, v4

    .line 320
    goto/16 :goto_17

    :cond_10a
    move v1, v3

    .line 323
    goto/16 :goto_27

    :cond_10d
    move v2, v4

    .line 325
    goto/16 :goto_2c

    :cond_110
    move v2, v4

    .line 330
    goto/16 :goto_42

    .line 339
    :cond_113
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopbarDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5c

    :cond_11a
    move v5, v3

    .line 344
    goto/16 :goto_60

    .line 349
    :cond_11d
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    instance-of v2, v2, Lcom/google/android/music/widgets/SideBarDisplayModeSelector;

    if-eqz v2, :cond_126

    .line 350
    const/4 v0, 0x2

    .restart local v0       #barIndex:I
    goto/16 :goto_6a

    .line 352
    .end local v0           #barIndex:I
    :cond_126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown display mode selector type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/ActionbarController;->mDisplayModeSelector:Lcom/google/android/music/widgets/DisplayModeSelector;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    .restart local v0       #barIndex:I
    :cond_141
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mTopBarSpacer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_92

    .line 381
    :cond_148
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mShopIcon:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    invoke-virtual {v2, v4}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    goto/16 :goto_b7

    .line 387
    :cond_14f
    iget-object v2, p0, Lcom/google/android/music/ActionbarController;->mMenuButton:Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    const/16 v3, 0x40

    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/music/ActionbarController;->updateVisibility(Lcom/google/android/music/ActionbarController$SplitActionBarViews;Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;I)V

    goto/16 :goto_c0

    .line 393
    :cond_158
    invoke-direct {p0}, Lcom/google/android/music/ActionbarController;->hideSearchField()V

    goto/16 :goto_cb
.end method
