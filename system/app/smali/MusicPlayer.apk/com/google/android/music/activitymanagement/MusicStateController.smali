.class public Lcom/google/android/music/activitymanagement/MusicStateController;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;
.implements Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicStateController$6;,
        Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

.field private mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

.field private mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

.field private mCurrentAtHomeState:I

.field private mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

.field private mIsLandscape:Z

.field private mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

.field private mMusicMode:I

.field private mMusicModeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPaused:Z

.field private mPhoneUses3DInLandscape:Z

.field private mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

.field private final mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-string v0, "MusicStateController"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateController;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    .line 115
    iput v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentAtHomeState:I

    .line 1285
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController$5;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;

    .line 118
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    .line 119
    new-instance v0, Lcom/google/android/music/athome/AtHomeStateController;

    invoke-direct {v0}, Lcom/google/android/music/athome/AtHomeStateController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    .line 120
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicStateStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/MusicUIController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    return-object v0
.end method

.method private addTopLevelStateToStack()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 439
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->push(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 441
    :cond_13
    return-void
.end method

.method private declared-synchronized clearAppStack()V
    .registers 2

    .prologue
    .line 552
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 553
    monitor-exit p0

    return-void

    .line 552
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

    .line 665
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 666
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 669
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled()Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne p1, v2, :cond_2d

    .line 671
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

    .line 673
    :cond_2d
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled()Z

    move-result v2

    if-nez v2, :cond_52

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne p1, v2, :cond_52

    .line 675
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

    .line 678
    :cond_52
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 679
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/TabbedLists;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 680
    const-string v0, "rootViewState"

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    :goto_74
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 748
    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/MusicState;->setTopLevelState(Z)V

    .line 749
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 750
    return-object v0

    .line 683
    :cond_8d
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->use3dView(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Z

    move-result v2

    .line 684
    sget-object v3, Lcom/google/android/music/activitymanagement/MusicStateController$6;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_140

    goto :goto_74

    .line 686
    :pswitch_9d
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/carousel/CarouselActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_74

    .line 690
    :pswitch_a8
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 692
    const-string v0, "displayMode"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_74

    .line 696
    :pswitch_b9
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_74

    .line 699
    :pswitch_c4
    if-eqz v2, :cond_d7

    .line 700
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 702
    const-string v0, "displayMode"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_74

    .line 705
    :cond_d7
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_74

    .line 711
    :pswitch_e2
    if-eqz v2, :cond_f4

    .line 712
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 714
    const-string v0, "displayMode"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_74

    .line 717
    :cond_f4
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_74

    .line 722
    :pswitch_100
    if-eqz v2, :cond_114

    .line 723
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 725
    const-string v0, "displayMode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_74

    .line 728
    :cond_114
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_74

    .line 733
    :pswitch_120
    if-eqz v2, :cond_134

    .line 734
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 736
    const-string v0, "displayMode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_74

    .line 739
    :cond_134
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_74

    .line 684
    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_a8
        :pswitch_b9
        :pswitch_c4
        :pswitch_e2
        :pswitch_100
        :pswitch_120
    .end packed-switch
.end method

.method private getIntentForLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)Landroid/content/Intent;
    .registers 4
    .parameter "level"

    .prologue
    .line 1229
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 1234
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 1231
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_c

    .line 1229
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method private getNowPlayingScreenIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 1240
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1244
    const-string v1, "junk"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1245
    const-string v1, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    return-object v0
.end method

.method private declared-synchronized goBack(Z)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1147
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->atTop()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1148
    if-eqz p1, :cond_1f

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1151
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1152
    invoke-virtual {v1}, Lcom/google/android/music/OfflineMusicManager;->isAnyChangeMade()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1155
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(I)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_25

    .line 1172
    :cond_1f
    :goto_1f
    monitor-exit p0

    return v0

    .line 1157
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->exitManageMusicMode()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1f

    .line 1147
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1161
    :cond_28
    :try_start_28
    sget-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateController;->LOGV:Z

    if-eqz v0, :cond_33

    .line 1162
    const-string v0, "MusicStateController"

    const-string v1, "Call Finish on TopLevelActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_33
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 1172
    :goto_38
    const/4 v0, 0x1

    goto :goto_1f

    .line 1169
    :cond_3a
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;

    .line 1170
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_25

    goto :goto_38
.end method

.method private interceptUri(Landroid/net/Uri;)Z
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 455
    if-nez p1, :cond_4

    .line 505
    :cond_3
    :goto_3
    return v0

    .line 457
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, host:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, path:Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 463
    :cond_20
    const-string v5, "music.google.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "/music/listen"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 468
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, fragment:Ljava/lang/String;
    sget-boolean v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v5, :cond_50

    .line 470
    const-string v5, "TopLevelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptURI fragment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_50
    const/4 v0, 0x1

    .line 474
    .local v0, canHandle:Z
    const-string v5, "auto-playlist-thumbs-up_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 475
    const-wide/16 v5, -0x4

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->openTracksForAutoPlaylist(J)V

    goto :goto_3

    .line 476
    :cond_5f
    const-string v5, "auto-playlist-recent_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 477
    const-wide/16 v5, -0x1

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->openTracksForAutoPlaylist(J)V

    goto :goto_3

    .line 478
    :cond_6d
    const-string v5, "auto-playlist-promo_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 480
    const-wide/16 v5, -0x3

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->openTracksForAutoPlaylist(J)V

    goto :goto_3

    .line 481
    :cond_7b
    const-string v5, "start_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 483
    sget-object v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    goto/16 :goto_3

    .line 484
    :cond_8a
    const-string v5, "all_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 486
    sget-object v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    goto/16 :goto_3

    .line 487
    :cond_99
    const-string v5, "artists_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 489
    sget-object v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    goto/16 :goto_3

    .line 490
    :cond_a8
    const-string v5, "albums_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 492
    sget-object v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    goto/16 :goto_3

    .line 493
    :cond_b7
    const-string v5, "genres_pl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 495
    sget-object v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    goto/16 :goto_3

    .line 498
    :cond_c6
    sget-boolean v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v5, :cond_d1

    .line 499
    const-string v5, "TopLevelActivity"

    const-string v6, "The URI can\'t match with any known ones, start the default View"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_d1
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method private declared-synchronized launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "newState"

    .prologue
    const/4 v0, 0x1

    .line 592
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateMusicOptionsMenu()V

    .line 594
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v2

    if-ne v2, v0, :cond_42

    .line 595
    .local v0, finishOldState:Z
    :goto_f
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->launchNewState(Lcom/google/android/music/activitymanagement/MusicState;Z)V

    .line 597
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    .line 600
    .local v1, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-nez v1, :cond_44

    .line 601
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

    .line 592
    .end local v0           #finishOldState:Z
    .end local v1           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 594
    :cond_42
    const/4 v0, 0x0

    goto :goto_f

    .line 605
    .restart local v0       #finishOldState:Z
    .restart local v1       #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_44
    :try_start_44
    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    if-nez v2, :cond_6d

    .line 607
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 608
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 610
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateViews(Ljava/util/Set;)V

    .line 611
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    .line 612
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, p1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_6d
    .catchall {:try_start_44 .. :try_end_6d} :catchall_3f

    .line 614
    :cond_6d
    monitor-exit p0

    return-void
.end method

.method private notifyMusicModeChanged()V
    .registers 6

    .prologue
    .line 1051
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    monitor-enter v4

    .line 1052
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1053
    .local v2, listeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;>;"
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 1055
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;

    .line 1056
    .local v1, listener:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;
    invoke-interface {v1, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;->onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    goto :goto_e

    .line 1053
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;
    .end local v2           #listeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;>;"
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v3

    .line 1058
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #listeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;>;"
    :cond_21
    return-void
.end method

.method private openTracksForAutoPlaylist(J)V
    .registers 5
    .parameter "playlistId"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicStateController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicStateController$3;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method private declared-synchronized pushAndLaunchState(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 617
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, p1, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 618
    monitor-exit p0

    return-void

    .line 617
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "newState"

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isTopLevelState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 622
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 624
    :cond_a
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    .line 625
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

    .line 627
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;

    .line 629
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->isClearTop()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 631
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c

    .line 632
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3, v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 633
    .local v0, current:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_59

    .line 636
    :goto_48
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-le v3, v1, :cond_59

    .line 637
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_56

    goto :goto_48

    .line 621
    .end local v0           #current:Lcom/google/android/music/activitymanagement/MusicState;
    .end local v1           #i:I
    .end local v2           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_56
    move-exception v3

    monitor-exit p0

    throw v3

    .line 631
    .restart local v0       #current:Lcom/google/android/music/activitymanagement/MusicState;
    .restart local v1       #i:I
    .restart local v2       #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 642
    .end local v0           #current:Lcom/google/android/music/activitymanagement/MusicState;
    .end local v1           #i:I
    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3, p1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->push(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 643
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_56

    .line 647
    monitor-exit p0

    return-void
.end method

.method private resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 795
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 796
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 797
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I

    move-result v0

    .line 798
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    .line 799
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 802
    :cond_1a
    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    .line 804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :cond_39
    return v0
.end method

.method private restoreInstanceState(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9
    .parameter "context"
    .parameter "givenSavedState"

    .prologue
    .line 161
    if-eqz p2, :cond_22

    .line 162
    instance-of v3, p2, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    if-nez v3, :cond_23

    .line 163
    const-string v3, "MusicStateController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicStateController given unknown instance state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_22
    :goto_22
    return-void

    :cond_23
    move-object v1, p2

    .line 166
    check-cast v1, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    .line 167
    .local v1, savedInstanceState:Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$000(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 169
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v3

    if-eqz v3, :cond_52

    .line 170
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

    .line 171
    .local v2, state:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->reset()V

    goto :goto_3e

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #state:Lcom/google/android/music/activitymanagement/MusicState;
    :cond_52
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$100(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 176
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mMusicMode:I
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$200(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    .line 177
    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$300(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 178
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v3, :cond_22

    .line 179
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v3, p1, p0}, Lcom/google/android/music/OfflineMusicManager;->restoreMusicActivityManager(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyMusicModeChanged()V

    goto :goto_22
.end method

.method private saveCurrentTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicStateController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController$4;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method private setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 810
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 813
    .local v0, newState:Lcom/google/android/music/activitymanagement/MusicState;
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 815
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 816
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->saveCurrentTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 817
    return-void
.end method

.method private setDisplayModeIfDifferent(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-eq p1, v0, :cond_7

    .line 651
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setAndLaunchDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 653
    :cond_7
    return-void
.end method

.method private setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 3
    .parameter "offlineMusicManager"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->onDestroy()V

    .line 157
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 158
    return-void
.end method

.method private use3dView(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 754
    .line 755
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 756
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 757
    sget-object v3, Lcom/google/android/music/activitymanagement/MusicStateController$6;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_7c

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown viewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    move v0, v1

    .line 786
    :cond_34
    :goto_34
    :pswitch_34
    return v0

    .line 763
    :pswitch_35
    const v3, 0x7f080022

    const v4, 0x7f080027

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v2

    .line 766
    if-eq v2, v5, :cond_34

    move v0, v1

    goto :goto_34

    .line 769
    :pswitch_43
    const v3, 0x7f080024

    const v4, 0x7f080029

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v2

    .line 771
    if-eq v2, v5, :cond_34

    move v0, v1

    goto :goto_34

    .line 774
    :pswitch_51
    const v3, 0x7f080023

    const v4, 0x7f080028

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v2

    .line 776
    if-eq v2, v5, :cond_34

    move v0, v1

    goto :goto_34

    .line 779
    :pswitch_5f
    const v3, 0x7f080025

    const v4, 0x7f08002a

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v2

    .line 781
    if-eq v2, v5, :cond_34

    move v0, v1

    goto :goto_34

    .line 783
    :pswitch_6d
    const v3, 0x7f080026

    const v4, 0x7f08002b

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->resolveViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;II)I

    move-result v2

    .line 786
    if-eq v2, v5, :cond_34

    move v0, v1

    goto :goto_34

    .line 757
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_6d
        :pswitch_33
        :pswitch_35
        :pswitch_43
        :pswitch_51
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized canClearQueue()Z
    .registers 2

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getPlayQueueCount()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canQueue()Z
    .registers 2

    .prologue
    .line 1004
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public checkIfCurrentModeSupportsManageMusic()Z
    .registers 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    .line 510
    .local v0, currentMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-eq v0, v1, :cond_18

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mIsLandscape:Z

    if-nez v1, :cond_1f

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v0, v1, :cond_1f

    .line 514
    :cond_18
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(I)V

    .line 515
    const/4 v1, 0x0

    .line 517
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public declared-synchronized exitManageMusicMode()V
    .registers 3

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_1e

    .line 1034
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1035
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 1037
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 1038
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    .line 1039
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyMusicModeChanged()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 1041
    :cond_1e
    monitor-exit p0

    return-void

    .line 1033
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;
    .registers 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    return-object v0
.end method

.method public getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    return-object v0
.end method

.method public getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    return-object v0
.end method

.method public declared-synchronized getCurrentState()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2

    .prologue
    .line 828
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

.method public declared-synchronized getMusicManager()Lcom/google/android/music/OfflineMusicManager;
    .registers 2

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMusicMode()I
    .registers 2

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 4

    .prologue
    .line 836
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    .line 837
    .local v0, topState:Lcom/google/android/music/activitymanagement/MusicState;
    if-nez v0, :cond_c

    .line 838
    const/4 v1, 0x0

    .line 840
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

    .line 836
    .end local v0           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 855
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 856
    .local v0, primary:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-eqz v0, :cond_b

    .line 857
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResult()Landroid/util/Pair;

    move-result-object v1

    .line 859
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getTracker()Lcom/google/android/music/MusicEventLogger;
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 1143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack(Z)Z

    .line 1144
    return-void
.end method

.method public goHome()V
    .registers 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 1226
    return-void
.end method

.method public declared-synchronized goUp()V
    .registers 5

    .prologue
    .line 1176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v1

    .line 1178
    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v1, v2, :cond_23

    .line 1179
    const-string v0, "TopLevelActivity"

    const-string v1, ""

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "goUp called at a level 0 state"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_76

    .line 1222
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 1184
    :cond_23
    :try_start_23
    sget-object v2, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v1, v2, :cond_79

    .line 1185
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

    .line 1188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack(Z)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1191
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-object v1, v0

    .line 1197
    :goto_4e
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_56
    if-ltz v0, :cond_9a

    .line 1198
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    .line 1199
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v2

    if-ne v2, v1, :cond_97

    .line 1200
    :goto_68
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v2

    if-le v2, v0, :cond_85

    .line 1201
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->pop()Lcom/google/android/music/activitymanagement/MusicState;
    :try_end_75
    .catchall {:try_start_23 .. :try_end_75} :catchall_76

    goto :goto_68

    .line 1176
    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1193
    :cond_79
    :try_start_79
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->getViewLevel(I)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    move-object v1, v0

    goto :goto_4e

    .line 1207
    :cond_85
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    .line 1208
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_21

    .line 1197
    :cond_97
    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    .line 1215
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 1216
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getIntentForLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)Landroid/content/Intent;

    move-result-object v0

    .line 1217
    if-nez v0, :cond_a8

    .line 1218
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goHome()V

    goto/16 :goto_21

    .line 1220
    :cond_a8
    new-instance v1, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v1, v0, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_b2
    .catchall {:try_start_79 .. :try_end_b2} :catchall_76

    goto/16 :goto_21
.end method

.method handleKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/16 v10, 0x19

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1300
    iget-object v8, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_39

    .line 1301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x54

    if-ne v8, v9, :cond_2f

    move v1, v6

    .line 1302
    .local v1, isSearch:Z
    :goto_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_31

    move v4, v6

    .line 1303
    .local v4, keyUp:Z
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v5

    .line 1305
    .local v5, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    if-eqz v5, :cond_39

    .line 1306
    if-eqz v1, :cond_33

    .line 1312
    if-eqz v4, :cond_33

    instance-of v8, v5, Lcom/google/android/music/QueryBrowserActivity;

    if-nez v8, :cond_33

    .line 1313
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/MusicStateController;->startLocalSearch(Ljava/lang/String;)V

    .line 1337
    .end local v1           #isSearch:Z
    .end local v4           #keyUp:Z
    .end local v5           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_2e
    :goto_2e
    return v6

    :cond_2f
    move v1, v7

    .line 1301
    goto :goto_15

    .restart local v1       #isSearch:Z
    :cond_31
    move v4, v7

    .line 1302
    goto :goto_1c

    .line 1317
    .restart local v4       #keyUp:Z
    .restart local v5       #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_33
    invoke-virtual {v5, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1323
    .end local v1           #isSearch:Z
    .end local v4           #keyUp:Z
    .end local v5           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_39
    iget-object v8, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v8}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 1324
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-eq v8, v10, :cond_4f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_68

    :cond_4f
    move v2, v6

    .line 1326
    .local v2, isVolume:Z
    :goto_50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_6a

    move v3, v6

    .line 1328
    .local v3, keyDown:Z
    :goto_57
    if-eqz v2, :cond_6e

    if-eqz v3, :cond_6e

    .line 1330
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v10, :cond_6c

    const/4 v0, -0x1

    .line 1332
    .local v0, direction:I
    :goto_62
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v7, v0}, Lcom/google/android/music/athome/AtHomeStateController;->startTungstenPickerInHardkeyMode(I)V

    goto :goto_2e

    .end local v0           #direction:I
    .end local v2           #isVolume:Z
    .end local v3           #keyDown:Z
    :cond_68
    move v2, v7

    .line 1324
    goto :goto_50

    .restart local v2       #isVolume:Z
    :cond_6a
    move v3, v7

    .line 1326
    goto :goto_57

    .restart local v3       #keyDown:Z
    :cond_6c
    move v0, v6

    .line 1330
    goto :goto_62

    .end local v2           #isVolume:Z
    .end local v3           #keyDown:Z
    :cond_6e
    move v6, v7

    .line 1337
    goto :goto_2e
.end method

.method init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/MusicFragmentManager;Ljava/lang/Object;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/MusicEventLogger;)V
    .registers 10
    .parameter "topLevel"
    .parameter "fragmentManager"
    .parameter "givenSavedState"
    .parameter "preferences"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v1, :cond_d

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A given state controller can not be init\'ed multiple times"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 129
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 130
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_65

    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mIsLandscape:Z

    .line 132
    iput-object p5, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 134
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 136
    invoke-direct {p0, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 137
    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 138
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getTopLevelDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 140
    invoke-direct {p0, p1, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->restoreInstanceState(Landroid/content/Context;Ljava/lang/Object;)V

    .line 142
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    .line 143
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v1

    if-nez v1, :cond_53

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    if-eqz v1, :cond_53

    .line 144
    const-string v1, "TopLevelActivity"

    const-string v2, "Using 3D on phone in landscape..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_53
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateDisplayModeText(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v1, p1, p4}, Lcom/google/android/music/athome/AtHomeStateController;->init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 150
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v1, p0}, Lcom/google/android/music/athome/AtHomeStateController;->registerAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V

    .line 151
    return-void

    .line 131
    :cond_65
    const/4 v1, 0x0

    goto :goto_21
.end method

.method initialize(Landroid/content/Intent;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_33

    .line 224
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

    .line 228
    :cond_33
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    if-nez v0, :cond_3e

    .line 229
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 246
    :cond_3e
    if-eqz p3, :cond_78

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_78

    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPhoneUses3DInLandscape:Z

    if-eqz v0, :cond_78

    .line 247
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 248
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    if-ne v0, v1, :cond_78

    .line 251
    const-string v0, "TopLevelActivity"

    const-string v1, "Rotation: replacing top level state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->set(ILcom/google/android/music/activitymanagement/MusicState;)V

    .line 257
    :cond_78
    if-eqz p3, :cond_8c

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 258
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 432
    :cond_8b
    :goto_8b
    return-void

    .line 265
    :cond_8c
    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTutorialIfNecessary(Z)Z

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->addTopLevelStateToStack()V

    .line 274
    const-string v1, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 275
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 424
    :cond_a9
    :goto_a9
    if-eqz v2, :cond_32a

    .line 425
    invoke-direct {p0, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_8b

    .line 277
    :cond_af
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 279
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "displayMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    :goto_d2
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateStack;->clear()V

    .line 290
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_a9

    .line 285
    :cond_df
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_d2

    .line 291
    :cond_f5
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 292
    if-eqz p2, :cond_a9

    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 295
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_a9

    .line 297
    :cond_113
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_137

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_137

    .line 304
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_137
    const-string v3, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_147

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 310
    :cond_147
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_17c

    .line 312
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 317
    :goto_157
    invoke-static {v0, v1}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 318
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, v1, v6, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 323
    :goto_163
    if-eqz p2, :cond_16f

    .line 324
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/medialist/SongList;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 327
    :cond_16f
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_a9

    .line 314
    :cond_17c
    const-string v0, "playlistId"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_157

    .line 321
    :cond_185
    new-instance v3, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    move-object v0, v3

    goto :goto_163

    .line 328
    :cond_18c
    if-eqz v0, :cond_215

    const-string v3, "audio/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "application/ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "application/x-ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "application/itunes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_215

    .line 338
    :cond_1ae
    if-eqz v1, :cond_a9

    .line 340
    const-string v0, "com.google.android.music.MusicContent"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 341
    new-instance v0, Lcom/google/android/music/medialist/UriSongList;

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    .line 353
    :goto_1c1
    if-eqz v0, :cond_33d

    .line 354
    if-eqz p2, :cond_1cf

    .line 355
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/medialist/SongList;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 358
    :cond_1cf
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_1da
    move-object v2, v0

    .line 360
    goto/16 :goto_a9

    .line 342
    :cond_1dd
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 344
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 345
    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$SystemMediaStore;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 346
    new-instance v0, Lcom/google/android/music/medialist/UriSongList;

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    goto :goto_1c1

    .line 349
    :cond_1fb
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

    .line 350
    goto :goto_1c1

    .line 363
    :cond_215
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->interceptUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a9

    goto/16 :goto_8b

    .line 368
    :cond_21d
    const-string v1, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 369
    if-eqz p2, :cond_a9

    .line 370
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 372
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_a9

    .line 374
    :cond_23c
    const-string v1, "android.intent.action.SEARCH_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_250

    .line 375
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v1, Lcom/google/android/music/activitymanagement/MusicStateController$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController$1;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    goto/16 :goto_a9

    .line 382
    :cond_250
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_268

    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_268

    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28a

    .line 387
    :cond_268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 388
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_281

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    :cond_281
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_a9

    .line 393
    :cond_28a
    const-string v1, "com.google.android.music.DOWNLOAD_QUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a4

    .line 394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/DownloadQueueActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_a9

    .line 396
    :cond_2a4
    const-string v1, "com.google.android.music.PLAY_FOUND_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cd

    .line 397
    if-eqz p2, :cond_2c0

    .line 398
    const-string v0, "songlist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 399
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v2, Lcom/google/android/music/activitymanagement/MusicStateController$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController$2;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 406
    :cond_2c0
    new-instance v2, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_a9

    .line 408
    :cond_2cd
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2fb

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2fb

    .line 410
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

    .line 413
    :cond_2fb
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30c

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_315

    .line 414
    :cond_30c
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->clearAppStack()V

    .line 415
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->createTopLevelDisplayState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v2

    .line 418
    :cond_315
    const-string v0, "selectAtHomeGroupId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 419
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    const-string v1, "selectAtHomeGroupId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/athome/AtHomeStateController;->selectGroupWhenReady(Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 427
    :cond_32a
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 428
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    .line 429
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->launchState(Lcom/google/android/music/activitymanagement/MusicState;)V

    goto/16 :goto_8b

    :cond_33d
    move-object v0, v2

    goto/16 :goto_1da
.end method

.method public declared-synchronized isBrowsingMode()Z
    .registers 2

    .prologue
    .line 994
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

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

.method public declared-synchronized isInManageMusicMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1020
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    if-ne v1, v0, :cond_c

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_e

    if-eqz v1, :cond_c

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInPartyMode()Z
    .registers 3

    .prologue
    .line 998
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAtHomeGroupNameChanged(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)V
    .registers 3
    .parameter "musicStateController"
    .parameter "newGroupName"

    .prologue
    .line 1275
    return-void
.end method

.method public onAtHomeStateChanged(Lcom/google/android/music/athome/AtHomeStateController;I)V
    .registers 8
    .parameter "musicStateController"
    .parameter "newAtHomeState"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1260
    iget v4, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentAtHomeState:I

    if-ne v4, p2, :cond_7

    .line 1272
    :goto_6
    return-void

    .line 1263
    :cond_7
    iput p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentAtHomeState:I

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v0

    .line 1266
    .local v0, isCurrentlyInPartyMode:Z
    if-ne p2, v2, :cond_21

    const/4 v1, 0x1

    .line 1267
    .local v1, shouldBeInPartyMode:Z
    :goto_10
    if-eq v0, v1, :cond_19

    .line 1268
    if-eqz v1, :cond_23

    :goto_14
    iput v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    .line 1269
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyMusicModeChanged()V

    .line 1271
    :cond_19
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentAtHomeState:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->setAtHomeState(I)V

    goto :goto_6

    .end local v1           #shouldBeInPartyMode:Z
    :cond_21
    move v1, v3

    .line 1266
    goto :goto_10

    .restart local v1       #shouldBeInPartyMode:Z
    :cond_23
    move v2, v3

    .line 1268
    goto :goto_14
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    .prologue
    .line 584
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController;->unregisterAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V

    .line 585
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeStateController;->onDestroy()V

    .line 586
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_14

    .line 587
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->onDestroy()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 589
    :cond_14
    monitor-exit p0

    return-void

    .line 584
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .registers 2

    .prologue
    .line 579
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    .line 580
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeStateController;->onPause()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 581
    monitor-exit p0

    return-void

    .line 579
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReconfigRequested(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    if-ne v0, p1, :cond_e

    .line 1251
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUpdateLayoutConfigRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1256
    :goto_d
    return-void

    .line 1253
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
    .line 563
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mPaused:Z

    .line 564
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateStack;->last()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    .line 565
    .local v1, topState:Lcom/google/android/music/activitymanagement/MusicState;
    if-eqz v1, :cond_3b

    .line 566
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getPrimaryFragmentClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 568
    .local v0, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 569
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 571
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateViews(Ljava/util/Set;)V

    .line 572
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicUIController;->updateFrame(Lcom/google/android/music/activitymanagement/MusicStateStack;)V

    .line 573
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v2, v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 575
    .end local v0           #primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_3b
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAtHome:Lcom/google/android/music/athome/AtHomeStateController;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeStateController;->onResume()V
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_42

    .line 576
    monitor-exit p0

    return-void

    .line 563
    .end local v1           #topState:Lcom/google/android/music/activitymanagement/MusicState;
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public openMenu()V
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openOptionsMenu()V

    .line 1079
    return-void
.end method

.method public registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 1062
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1063
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1064
    invoke-interface {p1, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;->onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 1065
    return-void

    .line 1063
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public saveInstanceState()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController$1;)V

    .line 188
    .local v0, savedState:Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;
    iget v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mMusicMode:I
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$202(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;I)I

    .line 189
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_14

    .line 190
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1}, Lcom/google/android/music/OfflineMusicManager;->prepareToBeSaved()V

    .line 192
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$302(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/OfflineMusicManager;

    .line 193
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mAppStack:Lcom/google/android/music/activitymanagement/MusicStateStack;

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mStateStack:Lcom/google/android/music/activitymanagement/MusicStateStack;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$002(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/MusicStateStack;)Lcom/google/android/music/activitymanagement/MusicStateStack;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    #setter for: Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->mCurrentDisplayState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;->access$102(Lcom/google/android/music/activitymanagement/MusicStateController$SavedInstanceState;Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 201
    return-object v0
.end method

.method setContextMenuManager(Lcom/google/android/music/utils/ContextMenuManager;)V
    .registers 2
    .parameter "contextMenuManager"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    .line 213
    return-void
.end method

.method public setDisplayModeWithNoLaunch(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mCurrentDisplayMode:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 657
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->saveCurrentTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 658
    return-void
.end method

.method setUIController(Lcom/google/android/music/activitymanagement/MusicUIController;)V
    .registers 4
    .parameter "uiController"

    .prologue
    .line 205
    if-nez p1, :cond_a

    .line 206
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MusicUIController must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 209
    return-void
.end method

.method public showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1125
    const-string v1, "songList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1126
    const-string v1, "excludePlaylist"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1127
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 1128
    return-void
.end method

.method public showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
    if-eqz p1, :cond_d

    .line 1094
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1095
    const-string v1, "songList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1097
    :cond_d
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 1098
    return-void
.end method

.method public showDeleteDialog(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JLjava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1102
    const-string v1, "deleteId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1103
    const-string v1, "deleteName"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v1, "deleteType"

    invoke-virtual {p1}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1105
    const-string v1, "deleteHasRemote"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1106
    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 1107
    return-void
.end method

.method public showDeletePlaylistDialog(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1111
    const-string v1, "playlistId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1112
    const-string v1, "playlistName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 1114
    return-void
.end method

.method public final showDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 1132
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1136
    return-void
.end method

.method public showRenamePlaylistDialog(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1118
    const-string v1, "playlistId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1119
    const-string v1, "playlistName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDialog(ILandroid/os/Bundle;)V

    .line 1121
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 877
    return-void
.end method

.method public startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 913
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 914
    const-string v1, "displayMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 917
    const-string v1, "sortableAlbumArtistName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 935
    return-void

    .line 924
    :cond_25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/vnd.google.music.album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 930
    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-eqz v1, :cond_21

    .line 931
    const-string v1, "selectedAlbumId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_21
.end method

.method public startLocalSearch(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 969
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 970
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 971
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    :cond_16
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 980
    const-string v1, "junk"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 981
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 982
    return-void
.end method

.method public declared-synchronized startManageMusicMode()V
    .registers 3

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-nez v0, :cond_18

    .line 1025
    new-instance v0, Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 1026
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicMode:I

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->checkIfCurrentModeSupportsManageMusic()Z

    .line 1028
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->notifyMusicModeChanged()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1030
    :cond_18
    monitor-exit p0

    return-void

    .line 1024
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startNowPlayingScreen()V
    .registers 2

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getNowPlayingScreenIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 966
    return-void
.end method

.method public startSettings()V
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicSettingsActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    .line 881
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;)V
    .registers 3
    .parameter "medialist"

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V

    .line 898
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V
    .registers 5
    .parameter "medialist"
    .parameter "clearTop"

    .prologue
    .line 901
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/MusicUtils;->getMediaListIntent(Landroid/content/Context;Lcom/google/android/music/medialist/MediaList;)Landroid/content/Intent;

    move-result-object v0

    .line 902
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_d

    .line 903
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method public startTrackListingForAlbum(JJJ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 884
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const-string v1, "medialist"

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 887
    cmp-long v1, p3, v3

    if-eqz v1, :cond_25

    .line 888
    const-string v1, "autoscrollAlbumArtistId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 890
    :cond_25
    cmp-long v1, p5, v3

    if-eqz v1, :cond_2e

    .line 891
    const-string v1, "autoscrollTrackId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 893
    :cond_2e
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->pushAndLaunchState(Landroid/content/Intent;)V

    .line 894
    return-void
.end method

.method public startTrackListingForAllSongsByArtist(JLjava/lang/String;)V
    .registers 6
    .parameter "artistId"
    .parameter "artistName"

    .prologue
    .line 938
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 940
    return-void
.end method

.method public startTrackListingForAllSongsInGenre(JLjava/lang/String;)V
    .registers 6
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 943
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 945
    return-void
.end method

.method public startTrackListingForAutoPlaylist(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 961
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 962
    return-void
.end method

.method public startTrackListingForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "playlistType"

    .prologue
    .line 957
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 958
    return-void
.end method

.method public startTrackListingForTrackArtist(JLjava/lang/String;)V
    .registers 6
    .parameter "artistId"
    .parameter "artist"

    .prologue
    .line 952
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 954
    return-void
.end method

.method startTutorialIfNecessary(Z)Z
    .registers 3
    .parameter "clearStackOnStart"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;)V

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public superStartActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    .line 870
    return-void
.end method

.method public switchRootViewState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setDisplayModeIfDifferent(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 1045
    return-void
.end method

.method public unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 1069
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicModeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1070
    monitor-exit v1

    .line 1071
    return-void

    .line 1070
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
