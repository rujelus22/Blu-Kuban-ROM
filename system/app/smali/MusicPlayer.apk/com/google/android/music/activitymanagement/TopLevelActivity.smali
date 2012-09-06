.class public Lcom/google/android/music/activitymanagement/TopLevelActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    }
.end annotation


# static fields
.field static final LOGV:Z


# instance fields
.field private mActionBarController:Lcom/google/android/music/ActionbarController;

.field private mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

.field private mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

.field private mBottomBarController:Lcom/google/android/music/BottomBarController;

.field private mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

.field private mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mEmptyViewController:Lcom/google/android/music/EmptyViewController;

.field private mFullContentFrame:Landroid/view/ViewGroup;

.field private mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLimitedContentFrame:Landroid/view/ViewGroup;

.field private final mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaStoreImportSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mMenuKeyDown:Z

.field private mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

.field private mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/menu/MusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

.field private mOnServiceConnectedRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsMenu:Landroid/widget/PopupMenu;

.field private mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

.field private mShowingFailureAlert:Z

.field private mSoftKeyboardInvoked:Z

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-string v0, "TopLevelActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 146
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 311
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShowingFailureAlert:Z

    .line 312
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 635
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1038
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShowingFailureAlert:Z

    return p1
.end method

.method private setMenuVisibility(Landroid/view/Menu;IZ)V
    .registers 5
    .parameter "menu"
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZZ)V

    .line 412
    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;IZZ)V
    .registers 6
    .parameter "menu"
    .parameter "id"
    .parameter "visible"
    .parameter "enabled"

    .prologue
    .line 415
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 416
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_c

    .line 417
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    :cond_c
    return-void
.end method

.method private setOfflineOnly(Z)V
    .registers 6
    .parameter "offlineOnly"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    .line 484
    .local v0, isOfflineOnlyNow:Z
    :goto_b
    if-eq v0, p1, :cond_14

    .line 485
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-eqz p1, :cond_17

    :goto_11
    invoke-virtual {v3, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setDisplayOptions(I)V

    .line 489
    :cond_14
    return-void

    .end local v0           #isOfflineOnlyNow:Z
    :cond_15
    move v0, v2

    .line 482
    goto :goto_b

    .restart local v0       #isOfflineOnlyNow:Z
    :cond_17
    move v1, v2

    .line 485
    goto :goto_11
.end method

.method private setUIVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 673
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 682
    return-void
.end method

.method private useCustomMenus()Z
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public alertFailureIfNecessary(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 5
    .parameter "musicId"
    .parameter "errorType"

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShowingFailureAlert:Z

    if-eqz v1, :cond_5

    .line 330
    :cond_4
    :goto_4
    return-void

    .line 319
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 322
    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 326
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "musicId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    const-string v1, "errorType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_4
.end method

.method public closeOptionsMenu()V
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 461
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 462
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 467
    :cond_f
    :goto_f
    return-void

    .line 465
    :cond_10
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->closeOptionsMenu()V

    goto :goto_f
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 818
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_47

    .line 819
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    .line 820
    :goto_11
    if-eqz v0, :cond_26

    .line 821
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v0, :cond_20

    .line 822
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 823
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openOptionsMenu()V

    .line 825
    :cond_20
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    move v0, v1

    .line 852
    :goto_23
    return v0

    :cond_24
    move v0, v2

    .line 819
    goto :goto_11

    .line 828
    :cond_26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 829
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v0, :cond_40

    .line 830
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 832
    if-eqz v0, :cond_3e

    .line 833
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 835
    :cond_3e
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 837
    :cond_40
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    :goto_42
    move v0, v1

    .line 841
    goto :goto_23

    .line 839
    :cond_44
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    goto :goto_42

    .line 846
    :cond_47
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 848
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    .line 849
    goto :goto_23

    .line 852
    :cond_53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 857
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_b

    .line 858
    const-string v0, "TopLevelActivity"

    const-string v1, "Finish TopLevelActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragmentResult()Landroid/util/Pair;

    move-result-object v1

    .line 861
    if-eqz v1, :cond_22

    .line 862
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setResult(ILandroid/content/Intent;)V

    .line 864
    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 865
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 866
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 870
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 871
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_2f

    .line 872
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopLevel.finishActivityFromChild ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_2f
    return-void
.end method

.method public invalidateMusicOptionsMenu()V
    .registers 4

    .prologue
    .line 736
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 737
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 479
    :goto_9
    return-void

    .line 473
    :cond_a
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 475
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_9

    .line 477
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->supportInvalidateOptionsMenu()V

    goto :goto_9
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack()V

    .line 744
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 170
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 172
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/activitymanagement/MusicUIController;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 173
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 174
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 176
    new-instance v0, Lcom/google/android/music/BottomBarController;

    invoke-direct {v0}, Lcom/google/android/music/BottomBarController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    .line 177
    new-instance v0, Lcom/google/android/music/ShopTutorialController;

    invoke-direct {v0}, Lcom/google/android/music/ShopTutorialController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    .line 178
    new-instance v0, Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-direct {v0}, Lcom/google/android/music/athome/AtHomeTutorialController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    .line 180
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onCreate()V

    .line 182
    if-eqz p1, :cond_1d3

    move v11, v12

    .line 183
    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 186
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setVolumeControlStream(I)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_66

    .line 194
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    .line 199
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_89

    .line 200
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring savedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_89
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 204
    :cond_99
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 209
    :goto_9e
    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setContentView(I)V

    .line 211
    const v0, 0x7f100104

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 213
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/music/ShopTutorialController;->onCreate(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 214
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/music/athome/AtHomeTutorialController;->onCreate(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 215
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 216
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 217
    new-instance v0, Lcom/google/android/music/ActionbarController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    const v1, 0x7f10010b

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v1, 0x7f10010c

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v1, 0x7f100108

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/ActionbarController;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/music/MusicEventLogger;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    .line 222
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    const v1, 0x7f1000fd

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/ShopTutorialController;->setShopIcon(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    const v1, 0x7f100086

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/athome/AtHomeTutorialController;->setAtHomeIcon(Landroid/view/View;)V

    .line 228
    const v0, 0x7f1000b7

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/NowPlayingBar;

    .line 229
    if-eqz v3, :cond_11a

    .line 230
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v3, v0}, Lcom/google/android/music/NowPlayingBar;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 232
    :cond_11a
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    const v1, 0x7f100067

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/ManageMusicMenu;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/BottomBarController;->onCreate(Landroid/app/Activity;Lcom/google/android/music/menu/ManageMusicMenu;Lcom/google/android/music/NowPlayingBar;Lcom/google/android/music/ActionbarController;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 235
    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 236
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .line 238
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    new-instance v1, Lcom/google/android/music/EmptyViewController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/music/EmptyViewController;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    .line 241
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    .line 242
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->onCreate(Landroid/content/Context;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setArtDownloadServiceConnection(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    const v8, 0x7f100105

    invoke-virtual {p0, v8}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/activitymanagement/MusicUIController;->init(Lcom/google/android/music/ActionbarController;Lcom/google/android/music/BottomBarController;Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/athome/AtHomeTutorialController;Lcom/google/android/music/EmptyViewController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setUIController(Lcom/google/android/music/activitymanagement/MusicUIController;)V

    .line 251
    if-nez v10, :cond_1dd

    const/4 v3, 0x0

    .line 253
    :goto_18e
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/MusicFragmentManager;Ljava/lang/Object;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/MusicEventLogger;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 261
    if-eqz v10, :cond_1e2

    move v0, v12

    .line 265
    :goto_1a8
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-nez v0, :cond_1e4

    move v0, v12

    :goto_1ad
    invoke-virtual {v2, v1, v0, v11}, Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V

    .line 266
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/music/utils/ContextMenuManager;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    .line 268
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setContextMenuManager(Lcom/google/android/music/utils/ContextMenuManager;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v12}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 273
    iput-boolean v13, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 274
    iput-boolean v13, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 275
    return-void

    :cond_1d3
    move v11, v13

    .line 182
    goto/16 :goto_4b

    .line 206
    :cond_1d6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    goto/16 :goto_9e

    .line 251
    :cond_1dd
    #getter for: Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;
    invoke-static {v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_18e

    :cond_1e2
    move v0, v13

    .line 261
    goto :goto_1a8

    :cond_1e4
    move v0, v13

    .line 265
    goto :goto_1ad
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const v7, 0x7f0d00e4

    const v3, 0x7f0d0005

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 890
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v0

    .line 891
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 892
    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_14

    .line 1006
    :cond_26
    :goto_26
    return-object v0

    .line 898
    :cond_27
    const/16 v0, 0x64

    if-ne p1, v0, :cond_48

    .line 899
    if-nez p2, :cond_41

    move-object v0, v1

    :goto_2e
    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 901
    new-instance v1, Lcom/google/android/music/CreatePlaylistDialog;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/CreatePlaylistDialog;-><init>(Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)V

    move-object v0, v1

    .line 999
    :cond_36
    :goto_36
    if-eqz v0, :cond_26

    .line 1000
    new-instance v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$9;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_26

    .line 899
    :cond_41
    const-string v0, "songList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_2e

    .line 902
    :cond_48
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_71

    .line 903
    const-string v0, "deleteId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 904
    const-string v0, "deleteName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 906
    const-string v0, "deleteHasRemote"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 907
    invoke-static {}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->values()[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    move-result-object v0

    const-string v1, "deleteType"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v0, v1

    .line 908
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/DeleteConfirmationDialog;-><init>(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JLjava/lang/CharSequence;Z)V

    goto :goto_36

    .line 909
    :cond_71
    const/16 v0, 0x66

    if-ne p1, v0, :cond_87

    .line 910
    const-string v0, "playlistId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 911
    const-string v0, "playlistName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 913
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/music/DeleteConfirmationDialog;-><init>(Landroid/content/Context;JLjava/lang/CharSequence;)V

    goto :goto_36

    .line 914
    :cond_87
    const/16 v0, 0x65

    if-ne p1, v0, :cond_9d

    .line 915
    const-string v0, "playlistId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 916
    const-string v0, "playlistName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 918
    new-instance v0, Lcom/google/android/music/RenamePlaylist;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/google/android/music/RenamePlaylist;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_36

    .line 919
    :cond_9d
    const/16 v0, 0x67

    if-ne p1, v0, :cond_bb

    .line 920
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 922
    const v2, 0x7f0d00e5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 923
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 924
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_36

    .line 926
    :cond_bb
    const/16 v0, 0x68

    if-ne p1, v0, :cond_d9

    .line 927
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 928
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 929
    const v2, 0x7f0d00e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 930
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 931
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_36

    .line 933
    :cond_d9
    const/16 v0, 0x69

    if-ne p1, v0, :cond_10d

    .line 934
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 935
    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 936
    const v1, 0x7f0d00e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 937
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 938
    const v1, 0x7f0d0007

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 951
    const v1, 0x7f0d0008

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_36

    .line 959
    :cond_10d
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_130

    .line 960
    if-nez p2, :cond_122

    move-object v3, v1

    :goto_114
    check-cast v3, Lcom/google/android/music/medialist/SongList;

    .line 962
    if-nez p2, :cond_129

    .line 964
    :goto_118
    new-instance v0, Lcom/google/android/music/AddToPlaylistDialog;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/AddToPlaylistDialog;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;J)V

    goto/16 :goto_36

    .line 960
    :cond_122
    const-string v0, "songList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_114

    .line 962
    :cond_129
    const-string v0, "excludePlaylist"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_118

    .line 965
    :cond_130
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_156

    .line 966
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 967
    const v2, 0x7f0d0009

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 968
    const v2, 0x7f0d000a

    new-instance v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 975
    const v2, 0x7f0d018d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 976
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_36

    .line 977
    :cond_156
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_18f

    .line 978
    const-string v0, "errorType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 979
    const-string v0, "musicId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 981
    invoke-static {v2}, Lcom/google/android/music/ErrorInfo;->createErrorInfo(I)Lcom/google/android/music/ErrorInfo;

    move-result-object v2

    .line 982
    invoke-virtual {v2}, Lcom/google/android/music/ErrorInfo;->canShowAlert()Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 983
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 984
    iput-boolean v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShowingFailureAlert:Z

    .line 985
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v2, p0, v0}, Lcom/google/android/music/ErrorInfo;->createAlert(Landroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 992
    if-nez v0, :cond_36

    .line 994
    const-string v1, "TopLevelActivity"

    const-string v2, "Unexpected null alert"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    :cond_18f
    move-object v0, v1

    goto/16 :goto_36
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 13
    .parameter "menu"

    .prologue
    const/16 v10, 0x65

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, order:I
    const/16 v5, 0xa

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    const v6, 0x7f0d000d

    invoke-interface {p1, v8, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 339
    .local v2, item:Landroid/view/MenuItem;
    const/16 v5, 0x16

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    const v6, 0x7f0d0124

    invoke-interface {p1, v8, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 340
    const/16 v5, 0x15

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    const v6, 0x7f0d0123

    invoke-interface {p1, v8, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 342
    const/16 v5, 0x14

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    const v6, 0x7f0d0014

    invoke-interface {p1, v8, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 344
    const/4 v5, 0x4

    const v6, 0x7f0d0083

    invoke-interface {p1, v8, v5, v9, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 346
    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    const v5, 0x7f0d001c

    invoke-interface {p1, v8, v10, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 348
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 350
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 353
    :cond_4b
    const/16 v5, 0x12

    const/16 v6, 0x64

    const v7, 0x7f0d0012

    invoke-interface {p1, v8, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 355
    const/16 v5, 0x17

    const v6, 0x7f0d0051

    invoke-interface {p1, v8, v5, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 357
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 358
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 359
    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_69

    .line 363
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_7f
    return v9
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 758
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_2b

    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onDestroy()V

    .line 761
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 766
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->onDestroy()V

    .line 767
    iput-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    .line 769
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 771
    invoke-static {v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setArtDownloadServiceConnection(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V

    .line 772
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->onDestroy(Landroid/content/Context;)V

    .line 774
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->onDestroy()V

    .line 776
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-virtual {v0}, Lcom/google/android/music/ShopTutorialController;->onDestroy()V

    .line 777
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAtHomeTutorialController:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeTutorialController;->onDestroy()V

    .line 779
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 780
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    .line 288
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->dispatchLowMemory()V

    .line 289
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 279
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 280
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V

    .line 283
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    const/4 v9, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 495
    sget-boolean v6, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v6, :cond_21

    const-string v6, "TopLevelActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOptionsItemSelected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_21
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 498
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 499
    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 589
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_43
    :goto_43
    return v4

    .line 505
    :cond_44
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_16e

    .line 586
    const-string v4, "TopLevelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled menu item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 587
    goto :goto_43

    .line 509
    :sswitch_69
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v6

    if-nez v6, :cond_8e

    .line 510
    const-string v3, "offline"

    .line 511
    .local v3, loggerKeyValue:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    .line 516
    :goto_76
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "changeOfflineMusicOnlyMode"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    const-string v5, "showOfflineMusic"

    aput-object v5, v8, v10

    aput-object v3, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43

    .line 513
    .end local v3           #loggerKeyValue:Ljava/lang/String;
    :cond_8e
    const-string v3, "all"

    .line 514
    .restart local v3       #loggerKeyValue:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_76

    .line 523
    .end local v3           #loggerKeyValue:Ljava/lang/String;
    :sswitch_94
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "enterManageMusicMode"

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startManageMusicMode()V

    goto :goto_43

    .line 530
    :sswitch_ab
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "settings"

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startSettings()V

    goto :goto_43

    .line 537
    :sswitch_c2
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "shuffleAll"

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v9, "optionsMenu"

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v6, :cond_43

    .line 541
    new-instance v6, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v6, v5}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 542
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto/16 :goto_43

    .line 547
    :sswitch_e6
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "nowPlayingBarVisibility"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v9, "optionsMenu"

    aput-object v9, v8, v4

    const-string v9, "visibility"

    aput-object v9, v8, v10

    const-string v9, "visible"

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6, v5}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto/16 :goto_43

    .line 556
    :sswitch_106
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "nowPlayingBarVisibility"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    const-string v5, "visibility"

    aput-object v5, v8, v10

    const-string v5, "gone"

    aput-object v5, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, v4}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto/16 :goto_43

    .line 566
    :sswitch_126
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v6

    if-ne v6, v4, :cond_14d

    .line 568
    const v6, 0x7f0d0053

    invoke-static {v6, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 572
    .local v1, i:Landroid/content/Intent;
    :goto_135
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "help"

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 570
    .end local v1           #i:Landroid/content/Intent;
    :cond_14d
    const v6, 0x7f0d0052

    invoke-static {v6, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1       #i:Landroid/content/Intent;
    goto :goto_135

    .line 579
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_155
    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v7, "newPlaylist"

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "actionArea"

    aput-object v9, v8, v5

    const-string v5, "optionsMenu"

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto/16 :goto_43

    .line 505
    :sswitch_data_16e
    .sparse-switch
        0x4 -> :sswitch_155
        0xa -> :sswitch_c2
        0x12 -> :sswitch_ab
        0x14 -> :sswitch_94
        0x15 -> :sswitch_106
        0x16 -> :sswitch_e6
        0x17 -> :sswitch_126
        0x65 -> :sswitch_69
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 605
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TopLevelActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 607
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onPause()V

    .line 608
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v0}, Lcom/google/android/music/EmptyViewController;->onPause()V

    .line 609
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/music/BottomBarController;->onPause()V

    .line 610
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v0}, Lcom/google/android/music/utils/ContextMenuManager;->onPause()V

    .line 611
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->onPause()V

    .line 612
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 16
    .parameter "menu"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 368
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v9

    .line 369
    .local v9, streamingEnabled:Z
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v5

    .line 370
    .local v5, isOfflineFeatureAvailable:Z
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v6

    .line 371
    .local v6, isTablet:Z
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->shouldHideNowPlayingBar()Z

    move-result v8

    .line 372
    .local v8, nowPlayingBarShouldBeHidden:Z
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v12

    if-eqz v12, :cond_aa

    move v3, v10

    .line 373
    .local v3, hasStreamingAccount:Z
    :goto_23
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v12}, Lcom/google/android/music/ActionbarController;->isAtHomeActive()Z

    move-result v0

    .line 375
    .local v0, atHomeActive:Z
    const/16 v13, 0x16

    if-eqz v6, :cond_ad

    if-eqz v8, :cond_ad

    move v12, v10

    :goto_30
    invoke-direct {p0, p1, v13, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 376
    const/16 v13, 0x15

    if-eqz v6, :cond_af

    if-nez v8, :cond_af

    move v12, v10

    :goto_3a
    invoke-direct {p0, p1, v13, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 378
    const/16 v13, 0x14

    if-eqz v9, :cond_b1

    if-eqz v3, :cond_b1

    if-eqz v5, :cond_b1

    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isManageMusicModeEnabled()Z

    move-result v12

    if-eqz v12, :cond_b1

    move v12, v10

    :goto_56
    invoke-direct {p0, p1, v13, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 383
    iget-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v12}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    .line 384
    .local v1, displayOptions:I
    const/16 v12, 0x65

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 385
    .local v7, item:Landroid/view/MenuItem;
    if-eqz v9, :cond_b3

    if-eqz v5, :cond_b3

    if-nez v0, :cond_b3

    move v12, v10

    :goto_6c
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 387
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v12

    if-eqz v12, :cond_b7

    .line 388
    if-ne v1, v10, :cond_b5

    move v12, v10

    :goto_7b
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 398
    :goto_7e
    const/4 v12, 0x4

    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 400
    const/16 v12, 0x11

    if-nez v6, :cond_87

    move v11, v10

    :cond_87
    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 402
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_94
    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 403
    .local v2, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v11

    if-eqz v11, :cond_94

    .line 404
    invoke-virtual {v2, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_94

    .end local v0           #atHomeActive:Z
    .end local v1           #displayOptions:I
    .end local v2           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v3           #hasStreamingAccount:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_aa
    move v3, v11

    .line 372
    goto/16 :goto_23

    .restart local v0       #atHomeActive:Z
    .restart local v3       #hasStreamingAccount:Z
    :cond_ad
    move v12, v11

    .line 375
    goto :goto_30

    :cond_af
    move v12, v11

    .line 376
    goto :goto_3a

    :cond_b1
    move v12, v11

    .line 378
    goto :goto_56

    .restart local v1       #displayOptions:I
    .restart local v7       #item:Landroid/view/MenuItem;
    :cond_b3
    move v12, v11

    .line 385
    goto :goto_6c

    :cond_b5
    move v12, v11

    .line 388
    goto :goto_7b

    .line 390
    :cond_b7
    if-ne v1, v10, :cond_c0

    .line 391
    const v12, 0x7f0d001d

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_7e

    .line 393
    :cond_c0
    const v12, 0x7f0d001c

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_7e

    .line 407
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_c7
    return v10
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 802
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1c
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 617
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TopLevelActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 619
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onResume()V

    .line 620
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v0}, Lcom/google/android/music/EmptyViewController;->onResume()V

    .line 621
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/music/BottomBarController;->onResume()V

    .line 622
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v0}, Lcom/google/android/music/utils/ContextMenuManager;->onResume()V

    .line 623
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->onResume()V

    .line 625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 627
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 628
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->focusOnSelectedModeItem()V

    .line 630
    :cond_38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 631
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 598
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/TopLevelActivity$1;)V

    .line 599
    .local v0, savedState:Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->saveInstanceState()Ljava/lang/Object;

    move-result-object v1

    #setter for: Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->access$002(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outcicle"

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 798
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 733
    :cond_6
    return-void

    .line 718
    :cond_7
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_23

    .line 719
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_23
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 723
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 724
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 725
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 726
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_48

    .line 728
    if-eqz v0, :cond_6

    .line 729
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 730
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_38

    .line 726
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter

    .prologue
    .line 747
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 748
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 751
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 752
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 753
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 754
    return-void

    .line 752
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateOptionsMenu()V

    .line 1044
    return-void
.end method

.method protected onStart()V
    .registers 7

    .prologue
    .line 293
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 294
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 295
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 296
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v2, "start"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/google/android/play/analytics/EventConstants;->getOrientationValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "sdkInt"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "screenWidth"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "screenHeight"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "screenDensity"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 308
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public onUserLeaveHint()V
    .registers 2

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 670
    return-void
.end method

.method public openOptionsMenu()V
    .registers 3

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 437
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_31

    .line 438
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v1}, Lcom/google/android/music/ActionbarController;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 439
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 456
    :cond_30
    :goto_30
    return-void

    .line 450
    :cond_31
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 451
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_30

    .line 454
    :cond_43
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->openOptionsMenu()V

    goto :goto_30
.end method

.method runWhenServiceConnected(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 701
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 702
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 703
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    if-nez v0, :cond_16

    .line 704
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 706
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    monitor-exit v1

    .line 712
    :goto_1c
    return-void

    .line 709
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 711
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1c

    .line 709
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method
