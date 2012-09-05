.class public Lcom/google/android/music/activitymanagement/MusicStateController;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicStateController$4;,
        Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    }
.end annotation


# instance fields
.field private mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

.field private mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

.field private mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field private mIsLandscape:Z

.field private mManageMusicModeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPaused:Z

.field private mPhoneUses3DInLandscape:Z

.field private mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

.field private final mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    .line 1032
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController$3;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    .line 95
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicStateStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicUIController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    return-object v0
.end method

.method private declared-synchronized clearAppStack()V
    .registers 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 508
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 509
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 512
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled()Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne p1, v2, :cond_2d

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_2d
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled()Z

    move-result v2

    if-nez v2, :cond_52

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne p1, v2, :cond_52

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_52
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 522
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/TabbedLists;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 588
    :goto_6b
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 590
    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/MusicState;->setTopLevelState(Z)V

    .line 591
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 592
    return-object v0

    .line 525
    :cond_84
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->use3dView(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Z

    move-result v2

    .line 526
    sget-object v3, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_138

    goto :goto_6b

    .line 528
    :pswitch_94
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/carousel/CarouselActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6b

    .line 532
    :pswitch_9f
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 534
    const-string v0, "displayMode"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6b

    .line 538
    :pswitch_b0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6b

    .line 541
    :pswitch_bb
    if-eqz v2, :cond_ce

    .line 542
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 544
    const-string v0, "displayMode"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6b

    .line 547
    :cond_ce
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6b

    .line 553
    :pswitch_d9
    if-eqz v2, :cond_eb

    .line 554
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 556
    const-string v0, "displayMode"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6b

    .line 559
    :cond_eb
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_6b

    .line 564
    :pswitch_f7
    if-eqz v2, :cond_10b

    .line 565
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 567
    const-string v0, "displayMode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6b

    .line 570
    :cond_10b
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_6b

    .line 575
    :pswitch_117
    if-eqz v2, :cond_12b

    .line 576
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 578
    const-string v0, "displayMode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6b

    .line 581
    :cond_12b
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_6b

    .line 526
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_94
        :pswitch_9f
        :pswitch_b0
        :pswitch_bb
        :pswitch_d9
        :pswitch_f7
        :pswitch_117
    .end packed-switch
.end method

.method private getIntentForLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)Landroid/content/Intent;
    .registers 4
    .parameter "level"

    .prologue
    .line 1003
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 1010
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 1005
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_c

    .line 1007
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->getNowPlayingListIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_c

    .line 1003
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private getNowPlayingScreenIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 1015
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1019
    const-string v1, "junk"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1020
    return-object v0
.end method

.method private declared-synchronized getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 4

    .prologue
    .line 665
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    .line 666
    .local v0, topState:Lcom/google/android/music/activitymanagement/MusicState;
    if-nez v0, :cond_c

    .line 667
    const/4 v1, 0x0

    .line 669
    :goto_a
    monitor-exit p0

    return-object v1

    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_17

    move-result-object v1

    goto :goto_a

    .line 665
    .end local v0           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized goBack(Z)Z
    .registers 5
    .parameter "finishIfAtTop"

    .prologue
    const/4 v1, 0x0

    .line 928
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->atTop()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 929
    if-eqz p1, :cond_1f

    .line 930
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 932
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 933
    .local v0, offlineManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->isAnyChangeMade()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 936
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(I)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_25

    .line 950
    .end local v0           #offlineManager:Lcom/google/android/music/OfflineMusicManager;
    :cond_1f
    :goto_1f
    monitor-exit p0

    return v1

    .line 938
    .restart local v0       #offlineManager:Lcom/google/android/music/OfflineMusicManager;
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->exitManageMusicMode()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1f

    .line 928
    .end local v0           #offlineManager:Lcom/google/android/music/OfflineMusicManager;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1

    .line 942
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 950
    :goto_2d
    const/4 v1, 0x1

    goto :goto_1f

    .line 947
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;

    .line 948
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_25

    goto :goto_2d
.end method

.method private declared-synchronized launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "newState"

    .prologue
    const/4 v0, 0x1

    .line 436
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateMusicOptionsMenu()V

    .line 438
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v2

    if-ne v2, v0, :cond_42

    .line 439
    .local v0, finishOldState:Z
    :goto_f
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->launchNewState(Lcom/google/android/music/activitymanagement/MusicState;Z)V

    .line 441
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    .line 444
    .local v1, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-nez v1, :cond_44

    .line 445
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary fragment for state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_3f

    .line 436
    .end local v0           #finishOldState:Z
    .end local v1           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 438
    :cond_42
    const/4 v0, 0x0

    goto :goto_f

    .line 449
    .restart local v0       #finishOldState:Z
    .restart local v1       #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_44
    :try_start_44
    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    if-nez v2, :cond_6d

    .line 451
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 452
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 454
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateViews(Ljava/util/Set;)V

    .line 455
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    .line 456
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, p1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_6d
    .catchall {:try_start_44 .. :try_end_6d} :catchall_3f

    .line 458
    :cond_6d
    monitor-exit p0

    return-void
.end method

.method private notifyManageMusicModeChanged()V
    .registers 6

    .prologue
    .line 844
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    monitor-enter v4

    .line 845
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v1

    .line 846
    .local v1, inManageMusicMode:Z
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;

    .line 847
    .local v2, listener:Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-interface {v2, v1, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;->onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V

    goto :goto_d

    .line 849
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #inManageMusicMode:Z
    .end local v2           #listener:Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #inManageMusicMode:Z
    :cond_22
    :try_start_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 850
    return-void
.end method

.method private declared-synchronized pushAndLaunchState(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, p1, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 462
    monitor-exit p0

    return-void

    .line 461
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "newState"

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 466
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 468
    :cond_a
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    .line 469
    .local v2, topState:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v2, :cond_27

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSingleTop()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_27

    .line 471
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;

    .line 473
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isClearTop()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 475
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c

    .line 476
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3, v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 477
    .local v0, current:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_59

    .line 480
    :goto_48
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-le v3, v1, :cond_59

    .line 481
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_56

    goto :goto_48

    .line 465
    .end local v0           #current:Lcom/google/android/music/activitymanagement/MusicState;
    .end local v1           #i:I
    .end local v2           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_56
    move-exception v3

    monitor-exit p0

    throw v3

    .line 475
    .restart local v0       #current:Lcom/google/android/music/activitymanagement/MusicState;
    .restart local v1       #i:I
    .restart local v2       #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 486
    .end local v0           #current:Lcom/google/android/music/activitymanagement/MusicState;
    .end local v1           #i:I
    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3, p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->push(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_56

    .line 491
    monitor-exit p0

    return-void
.end method

.method private resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I
    .registers 10
    .parameter "orientation"
    .parameter "viewState"
    .parameter "availableResId"
    .parameter "defaultModeResId"

    .prologue
    .line 636
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 637
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 638
    .local v0, availableMode:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 639
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I

    move-result v0

    .line 640
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    .line 641
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 644
    :cond_1a
    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    .line 646
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_39
    return v0
.end method

.method private restoreInstanceState(Ljava/lang/Object;)V
    .registers 8
    .parameter "givenSavedState"

    .prologue
    .line 128
    if-eqz p1, :cond_22

    .line 129
    instance-of v3, p1, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    if-nez v3, :cond_23

    .line 130
    const-string v3, "MusicStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicStateController given unknown instance state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_22
    :goto_22
    return-void

    :cond_23
    move-object v1, p1

    .line 133
    check-cast v1, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    .line 134
    .local v1, savedInstanceState:Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$000(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 136
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-eqz v3, :cond_52

    .line 137
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/activitymanagement/MusicState;

    .line 138
    .local v2, state:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->reset()V

    goto :goto_3e

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #state:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_52
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$100(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    goto :goto_22
.end method

.method private setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 652
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 655
    .local v0, newState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 657
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 658
    return-void
.end method

.method private setDisplayModeIfDifferent(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-eq p1, v0, :cond_7

    .line 495
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 497
    :cond_7
    return-void
.end method

.method private use3dView(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Z
    .registers 10
    .parameter "viewState"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, availableMode:I
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 598
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->orientation:I

    .line 599
    .local v1, orientation:I
    sget-object v5, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7c

    .line 630
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown viewState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_34
    move v3, v4

    .line 628
    :cond_35
    :goto_35
    :pswitch_35
    return v3

    .line 605
    :pswitch_36
    const v5, 0x7f080023

    const v6, 0x7f080028

    invoke-direct {p0, v1, p1, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v0

    .line 608
    if-eq v0, v7, :cond_35

    move v3, v4

    goto :goto_35

    .line 611
    :pswitch_44
    const v5, 0x7f080025

    const v6, 0x7f08002a

    invoke-direct {p0, v1, p1, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v0

    .line 613
    if-eq v0, v7, :cond_35

    move v3, v4

    goto :goto_35

    .line 616
    :pswitch_52
    const v5, 0x7f080024

    const v6, 0x7f080029

    invoke-direct {p0, v1, p1, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v0

    .line 618
    if-eq v0, v7, :cond_35

    move v3, v4

    goto :goto_35

    .line 621
    :pswitch_60
    const v5, 0x7f080026

    const v6, 0x7f08002b

    invoke-direct {p0, v1, p1, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v0

    .line 623
    if-eq v0, v7, :cond_35

    move v3, v4

    goto :goto_35

    .line 625
    :pswitch_6e
    const v5, 0x7f080027

    const v6, 0x7f08002c

    invoke-direct {p0, v1, p1, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v0

    .line 628
    if-eq v0, v7, :cond_35

    move v3, v4

    goto :goto_35

    .line 599
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_6e
        :pswitch_34
        :pswitch_36
        :pswitch_44
        :pswitch_52
        :pswitch_60
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized exitManageMusicMode()V
    .registers 3

    .prologue
    .line 830
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_1a

    .line 831
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 832
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 834
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 835
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyManageMusicModeChanged()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 837
    :cond_1a
    monitor-exit p0

    return-void

    .line 830
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    return-object v0
.end method

.method public getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method public declared-synchronized getCurrentState()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPrimaryFragmentResult()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 681
    .local v0, primary:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-eqz v0, :cond_b

    .line 682
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResult()Landroid/util/Pair;

    move-result-object v1

    .line 684
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 924
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack(Z)Z

    .line 925
    return-void
.end method

.method public declared-synchronized goUp()V
    .registers 5

    .prologue
    .line 954
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v1

    .line 956
    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v1, v2, :cond_23

    .line 957
    const-string v0, "TopLevelActivity"

    const-string v1, ""

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "goUp called at a level 0 state"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_76

    .line 1000
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 962
    :cond_23
    :try_start_23
    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v1, v2, :cond_79

    .line 963
    const-string v1, "TopLevelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goUp called from fragment which did not have a level set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack(Z)Z

    move-result v0

    if-nez v0, :cond_21

    .line 969
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-object v1, v0

    .line 975
    :goto_4e
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_56
    if-ltz v0, :cond_9e

    .line 976
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    .line 977
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v2

    if-ne v2, v1, :cond_9b

    .line 978
    :goto_68
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v2

    if-le v2, v0, :cond_85

    .line 979
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_75
    .catchall {:try_start_23 .. :try_end_75} :catchall_76

    goto :goto_68

    .line 954
    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    .line 971
    :cond_79
    :try_start_79
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->getViewLevel(I)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    move-object v1, v0

    goto :goto_4e

    .line 985
    :cond_85
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9b

    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TRACK_LISTING:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-eq v1, v2, :cond_9b

    .line 986
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_21

    .line 975
    :cond_9b
    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    .line 993
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 994
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getIntentForLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)Landroid/content/Intent;

    move-result-object v0

    .line 995
    if-nez v0, :cond_b2

    .line 996
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto/16 :goto_21

    .line 998
    :cond_b2
    new-instance v1, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v1, v0, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_bc
    .catchall {:try_start_79 .. :try_end_bc} :catchall_76

    goto/16 :goto_21
.end method

.method handleKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1047
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    .line 1048
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_2b

    move v0, v3

    .line 1049
    .local v0, isSearch:Z
    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_2d

    move v1, v3

    .line 1050
    .local v1, keyUp:Z
    :goto_1a
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    .line 1052
    .local v2, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-eqz v0, :cond_2f

    .line 1058
    if-eqz v1, :cond_2f

    instance-of v5, v2, Lcom/google/android/music/QueryBrowserActivity;

    if-nez v5, :cond_2f

    .line 1059
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startLocalSearch(Ljava/lang/String;)V

    .line 1067
    .end local v0           #isSearch:Z
    .end local v1           #keyUp:Z
    .end local v2           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_2a
    :goto_2a
    return v3

    :cond_2b
    move v0, v4

    .line 1048
    goto :goto_13

    .restart local v0       #isSearch:Z
    :cond_2d
    move v1, v4

    .line 1049
    goto :goto_1a

    .line 1063
    .restart local v1       #keyUp:Z
    .restart local v2       #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_2f
    invoke-virtual {v2, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_2a

    .end local v0           #isSearch:Z
    .end local v1           #keyUp:Z
    .end local v2           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_35
    move v3, v4

    .line 1067
    goto :goto_2a
.end method

.method init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/MusicFragmentManager;Ljava/lang/Object;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 9
    .parameter "topLevel"
    .parameter "fragmentManager"
    .parameter "givenSavedState"
    .parameter "preferences"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v1, :cond_d

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A given state controller can not be init\'ed multiple times"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 104
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 105
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mIsLandscape:Z

    .line 108
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 110
    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 111
    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 112
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 113
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-nez v1, :cond_3f

    .line 114
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "MusicPreferences.getTopLevelDisplayMode() returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_3d
    const/4 v1, 0x0

    goto :goto_21

    .line 117
    :cond_3f
    invoke-direct {p0, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->restoreInstanceState(Ljava/lang/Object;)V

    .line 119
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    .line 120
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v1

    if-nez v1, :cond_5d

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    if-eqz v1, :cond_5d

    .line 121
    const-string v1, "TopLevelActivity"

    const-string v2, "Using 3D on phone in landscape..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5d
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 125
    return-void
.end method

.method initialize(Landroid/content/Intent;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x400

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_35

    .line 191
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " allowPlayback: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " orientationChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_35
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    if-nez v0, :cond_40

    .line 196
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 213
    :cond_40
    if-eqz p3, :cond_7a

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    if-eqz v0, :cond_7a

    .line 214
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v0

    if-lez v0, :cond_7a

    .line 215
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v0, v1, :cond_7a

    .line 218
    const-string v0, "TopLevelActivity"

    const-string v1, "Rotation: replacing top level state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->set(ILcom/google/android/music/activitymanagement/MusicState;)V

    .line 224
    :cond_7a
    if-eqz p3, :cond_8e

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 225
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 390
    :cond_8d
    :goto_8d
    return-void

    .line 232
    :cond_8e
    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTutorialIfNecessary(Z)Z

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "TopLevelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v1, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 242
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 382
    :cond_d1
    :goto_d1
    if-eqz v2, :cond_337

    .line 383
    invoke-direct {p0, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_8d

    .line 243
    :cond_d7
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 245
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "displayMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    :goto_fa
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_d1

    .line 251
    :cond_102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_fa

    .line 256
    :cond_118
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 257
    if-eqz p2, :cond_d1

    .line 258
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 260
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_d1

    .line 262
    :cond_136
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23f

    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_15a

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 269
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_15a
    const-string v3, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 275
    :cond_16a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1a0

    .line 277
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    :goto_17a
    invoke-static {v0, v1}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 283
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, v1, v6, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 288
    :goto_186
    if-eqz p2, :cond_192

    .line 289
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/medialist/SongList;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 292
    :cond_192
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_19d
    move-object v2, v0

    .line 331
    goto/16 :goto_d1

    .line 279
    :cond_1a0
    const-string v0, "playlistId"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_17a

    .line 286
    :cond_1a9
    new-instance v3, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    move-object v0, v3

    goto :goto_186

    .line 293
    :cond_1b0
    if-eqz v0, :cond_237

    const-string v3, "audio/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d2

    const-string v3, "application/ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d2

    const-string v3, "application/x-ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d2

    const-string v3, "application/itunes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 303
    :cond_1d2
    if-eqz v1, :cond_34d

    .line 305
    const-string v0, "com.google.android.music.MusicContent"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 306
    new-instance v0, Lcom/google/android/music/medialist/UriSongList;

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    .line 318
    :goto_1e5
    if-eqz v0, :cond_34a

    .line 319
    if-eqz p2, :cond_1f3

    .line 320
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/medialist/SongList;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 323
    :cond_1f3
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_19d

    .line 307
    :cond_1ff
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 309
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 310
    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$SystemMediaStore;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 311
    new-instance v0, Lcom/google/android/music/medialist/UriSongList;

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    goto :goto_1e5

    .line 314
    :cond_21d
    const-string v0, "TopLevelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled audio uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 315
    goto :goto_1e5

    .line 329
    :cond_237
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    goto/16 :goto_19d

    .line 331
    :cond_23f
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 332
    if-eqz p2, :cond_d1

    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 335
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_d1

    .line 337
    :cond_25e
    const-string v1, "android.intent.action.SEARCH_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 338
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicStateController$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController$1;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    goto/16 :goto_d1

    .line 345
    :cond_272
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28a

    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28a

    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 350
    :cond_28a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2a3

    .line 353
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 355
    :cond_2a3
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_d1

    .line 356
    :cond_2ac
    const-string v1, "com.google.android.music.DOWNLOAD_QUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c6

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/DownloadQueueActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_d1

    .line 359
    :cond_2c6
    const-string v1, "com.google.android.music.PLAY_FOUND_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ef

    .line 360
    if-eqz p2, :cond_2e2

    .line 361
    const-string v0, "songlist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 362
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/MusicStateController$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController$2;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 369
    :cond_2e2
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_d1

    .line 371
    :cond_2ef
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31d

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31d

    .line 373
    const-string v1, "TopLevelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", defaulting to main action"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_31d
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32c

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_d1

    .line 377
    :cond_32c
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 378
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    goto/16 :goto_d1

    .line 385
    :cond_337
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 386
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 387
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto/16 :goto_8d

    :cond_34a
    move-object v0, v2

    goto/16 :goto_19d

    :cond_34d
    move-object v0, v2

    goto/16 :goto_19d
.end method

.method public declared-synchronized isInManageMusicMode()Z
    .registers 2

    .prologue
    .line 819
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .registers 2

    .prologue
    .line 432
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 433
    monitor-exit p0

    return-void

    .line 432
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReconfigRequested(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    if-ne v0, p1, :cond_e

    .line 1025
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1030
    :goto_d
    return-void

    .line 1027
    :cond_e
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReconfigRequested from non-primary fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public declared-synchronized onResume()V
    .registers 5

    .prologue
    .line 417
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    .line 418
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 419
    .local v1, topState:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v1, :cond_3b

    .line 420
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 422
    .local v0, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 423
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 425
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateViews(Ljava/util/Set;)V

    .line 426
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    .line 427
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_3d

    .line 429
    .end local v0           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_3b
    monitor-exit p0

    return-void

    .line 417
    .end local v1           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public openMenu()V
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openOptionsMenu()V

    .line 871
    return-void
.end method

.method public registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 853
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 854
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 856
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-interface {p1, v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;->onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V

    .line 857
    return-void

    .line 855
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public saveInstanceState()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController$1;)V

    .line 159
    .local v0, savedState:Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$302(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/OfflineMusicManager;

    .line 160
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$002(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/MusicStateStack;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$102(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 168
    return-object v0
.end method

.method setContextMenuManager(Lcom/google/android/music/utils/ContextMenuManager;)V
    .registers 2
    .parameter "contextMenuManager"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    .line 180
    return-void
.end method

.method public setDisplayModeWithNoLaunch(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 501
    return-void
.end method

.method setUIController(Lcom/google/android/music/activitymanagement/MusicUIController;)V
    .registers 4
    .parameter "uiController"

    .prologue
    .line 172
    if-nez p1, :cond_a

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MusicUIController must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 176
    return-void
.end method

.method public showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 906
    const-string v1, "songList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 907
    const-string v1, "excludePlaylist"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 908
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 909
    return-void
.end method

.method public showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    if-eqz p1, :cond_d

    .line 886
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 887
    const-string v1, "songList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 889
    :cond_d
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 890
    return-void
.end method

.method public showDeletePlaylistDialog(Ljava/lang/String;J)V
    .registers 5
    .parameter "playlistName"
    .parameter "playlistId"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0, p2, p3, p1}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDeletePlaylist(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .line 895
    return-void
.end method

.method public final showDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 913
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 917
    return-void
.end method

.method public showRenamePlaylistDialog(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 899
    const-string v1, "playlistId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 900
    const-string v1, "playlistName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 902
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 702
    return-void
.end method

.method public startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 738
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    const-string v1, "displayMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 742
    const-string v1, "sortableAlbumArtistName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 760
    return-void

    .line 749
    :cond_25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/vnd.google.music.album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 755
    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-eqz v1, :cond_21

    .line 756
    const-string v1, "selectedAlbumId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_21
.end method

.method public startLocalSearch(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 794
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 795
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 796
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    :cond_16
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 805
    const-string v1, "junk"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 806
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 807
    return-void
.end method

.method public declared-synchronized startManageMusicMode()V
    .registers 3

    .prologue
    .line 823
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-nez v0, :cond_11

    .line 824
    new-instance v0, Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 825
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyManageMusicModeChanged()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 827
    :cond_11
    monitor-exit p0

    return-void

    .line 823
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startNowPlayingScreen()V
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 791
    return-void
.end method

.method public startSettings()V
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicSettingsActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    .line 706
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;)V
    .registers 3
    .parameter "medialist"

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V

    .line 723
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V
    .registers 5
    .parameter "medialist"
    .parameter "clearTop"

    .prologue
    .line 726
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/MusicUtils;->getMediaListIntent(Landroid/content/Context;Lcom/google/android/music/medialist/MediaList;)Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_d

    .line 728
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method public startTrackListingForAlbum(JJJ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 709
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 710
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v1, "medialist"

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 712
    cmp-long v1, p3, v3

    if-eqz v1, :cond_25

    .line 713
    const-string v1, "autoscrollAlbumArtistId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 715
    :cond_25
    cmp-long v1, p5, v3

    if-eqz v1, :cond_2e

    .line 716
    const-string v1, "autoscrollTrackId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 718
    :cond_2e
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method public startTrackListingForAllSongsByArtist(JLjava/lang/String;)V
    .registers 6
    .parameter "artistId"
    .parameter "artistName"

    .prologue
    .line 763
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 765
    return-void
.end method

.method public startTrackListingForAllSongsInGenre(JLjava/lang/String;)V
    .registers 6
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 768
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 770
    return-void
.end method

.method public startTrackListingForAutoPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 786
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 787
    return-void
.end method

.method public startTrackListingForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "playlistType"

    .prologue
    .line 782
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 783
    return-void
.end method

.method public startTrackListingForTrackArtist(JLjava/lang/String;)V
    .registers 6
    .parameter "artistId"
    .parameter "artist"

    .prologue
    .line 777
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 779
    return-void
.end method

.method startTutorialIfNecessary(Z)Z
    .registers 3
    .parameter "clearStackOnStart"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;)V

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public superStartActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method public switchRootViewState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setDisplayModeIfDifferent(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 841
    return-void
.end method

.method public unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 861
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mManageMusicModeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 862
    monitor-exit v1

    .line 863
    return-void

    .line 862
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
