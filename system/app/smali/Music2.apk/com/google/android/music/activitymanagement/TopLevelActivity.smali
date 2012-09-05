.class public Lcom/google/android/music/activitymanagement/TopLevelActivity;
.super Landroid/app/Activity;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    }
.end annotation


# static fields
.field static final LOGV:Z


# instance fields
.field private mActionBarController:Lcom/google/android/music/ActionbarController;

.field private final mAlbumArtChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomBarController:Lcom/google/android/music/BottomBarController;

.field private mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

.field private mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mEmptyViewController:Lcom/google/android/music/EmptyViewController;

.field private mFullContentFrame:Landroid/view/ViewGroup;

.field private mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLimitedContentFrame:Landroid/view/ViewGroup;

.field private final mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaStoreImportConnection:Landroid/content/ServiceConnection;

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

.field private mSoftKeyboardInvoked:Z

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
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

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    iput-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    .line 265
    iput-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 576
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 605
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->createAlbumArtChangedBroadcastReciver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAlbumArtChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 917
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->alertFailureIfNecessary(Lcom/google/android/music/dl/ContentIdentifier;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method private alertFailureIfNecessary(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 9
    .parameter "musicId"
    .parameter "errorType"

    .prologue
    .line 268
    if-nez p1, :cond_3

    .line 302
    :cond_2
    :goto_2
    return-void

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v4}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 277
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentFailureDialogsMusicId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 279
    invoke-static {p2}, Lcom/google/android/music/MusicPlaybackService;->getErrorTitleAndMessage(I)Landroid/util/Pair;

    move-result-object v2

    .line 281
    .local v2, titleAndMsg:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    .local v3, titleResId:I
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    .local v1, messageResId:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v4, 0x7f0d00c3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    const v4, 0x7f0d00e2

    new-instance v5, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method private setMenuVisibility(Landroid/view/Menu;IZ)V
    .registers 5
    .parameter "menu"
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZZ)V

    .line 391
    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;IZZ)V
    .registers 6
    .parameter "menu"
    .parameter "id"
    .parameter "visible"
    .parameter "enabled"

    .prologue
    .line 394
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 395
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_c

    .line 396
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 399
    :cond_c
    return-void
.end method

.method private setOfflineOnly(Z)V
    .registers 6
    .parameter "offlineOnly"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    .line 459
    .local v0, isOfflineOnlyNow:Z
    :goto_b
    if-eq v0, p1, :cond_14

    .line 460
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-eqz p1, :cond_17

    :goto_11
    invoke-virtual {v3, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setDisplayOptions(I)V

    .line 464
    :cond_14
    return-void

    .end local v0           #isOfflineOnlyNow:Z
    :cond_15
    move v0, v2

    .line 457
    goto :goto_b

    .restart local v0       #isOfflineOnlyNow:Z
    :cond_17
    move v1, v2

    .line 460
    goto :goto_11
.end method

.method private setUIVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 614
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method private useCustomMenus()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

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
.method public closeOptionsMenu()V
    .registers 2

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 439
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 440
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 445
    :cond_f
    :goto_f
    return-void

    .line 443
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    goto :goto_f
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 751
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_47

    .line 752
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    .line 753
    :goto_11
    if-eqz v0, :cond_26

    .line 754
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v0, :cond_20

    .line 755
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 756
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openOptionsMenu()V

    .line 758
    :cond_20
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    move v0, v1

    .line 785
    :goto_23
    return v0

    :cond_24
    move v0, v2

    .line 752
    goto :goto_11

    .line 761
    :cond_26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 762
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v0, :cond_40

    .line 763
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 765
    if-eqz v0, :cond_3e

    .line 766
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 768
    :cond_3e
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 770
    :cond_40
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    :goto_42
    move v0, v1

    .line 774
    goto :goto_23

    .line 772
    :cond_44
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    goto :goto_42

    .line 779
    :cond_47
    iput-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 781
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    .line 782
    goto :goto_23

    .line 785
    :cond_53
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getPrimaryFragmentResult()Landroid/util/Pair;

    move-result-object v0

    .line 791
    .local v0, result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent;>;"
    if-eqz v0, :cond_17

    .line 792
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setResult(ILandroid/content/Intent;)V

    .line 794
    :cond_17
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 795
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 796
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 801
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_2f

    .line 802
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

    .line 804
    :cond_2f
    return-void
.end method

.method public invalidateMusicOptionsMenu()V
    .registers 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 678
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 679
    monitor-exit v1

    .line 680
    return-void

    .line 679
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
    .line 448
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 454
    :cond_9
    :goto_9
    return-void

    .line 450
    :cond_a
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 452
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_9
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->goBack()V

    .line 685
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const v7, 0x7f1000d9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 155
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/activitymanagement/MusicUIController;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 156
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 157
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 159
    new-instance v0, Lcom/google/android/music/BottomBarController;

    invoke-direct {v0}, Lcom/google/android/music/BottomBarController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    .line 160
    new-instance v0, Lcom/google/android/music/ShopTutorialController;

    invoke-direct {v0}, Lcom/google/android/music/ShopTutorialController;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    .line 162
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onCreate()V

    .line 164
    if-eqz p1, :cond_1aa

    move v9, v10

    .line 165
    :goto_41
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 168
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setVolumeControlStream(I)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_5c

    .line 176
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    .line 181
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_7f

    .line 182
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring savedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_7f
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 186
    :cond_8f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 191
    :goto_94
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setContentView(I)V

    .line 193
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ShopTutorialView;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/music/ShopTutorialController;->onCreate(Landroid/app/Activity;Lcom/google/android/music/ShopTutorialView;)V

    .line 194
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 195
    new-instance v0, Lcom/google/android/music/ActionbarController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    const v1, 0x7f1000d8

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v1, 0x7f1000df

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/ActionbarController;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    .line 200
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f100045

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/music/ShopTutorialController;->setShopIcon(Landroid/view/View;)V

    .line 204
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/NowPlayingBar;

    .line 205
    if-eqz v3, :cond_100

    .line 206
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v3, v0}, Lcom/google/android/music/NowPlayingBar;->setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 208
    :cond_100
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/ManageMusicMenu;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/BottomBarController;->onCreate(Landroid/app/Activity;Lcom/google/android/music/menu/ManageMusicMenu;Lcom/google/android/music/NowPlayingBar;Lcom/google/android/music/ActionbarController;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 211
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 212
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .line 214
    new-instance v1, Lcom/google/android/music/EmptyViewController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    const v0, 0x7f100059

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/music/EmptyViewController;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/widgets/EmptyMusicView;)V

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    .line 217
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShopTutorialController:Lcom/google/android/music/ShopTutorialController;

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    const v7, 0x7f1000d5

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/activitymanagement/MusicUIController;->init(Lcom/google/android/music/ActionbarController;Lcom/google/android/music/BottomBarController;Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/EmptyViewController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicUIController:Lcom/google/android/music/activitymanagement/MusicUIController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setUIController(Lcom/google/android/music/activitymanagement/MusicUIController;)V

    .line 222
    if-nez v8, :cond_1b4

    const/4 v0, 0x0

    .line 224
    :goto_15f
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->init(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/MusicFragmentManager;Ljava/lang/Object;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 232
    if-eqz v8, :cond_1b9

    move v0, v10

    .line 236
    :goto_176
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-nez v0, :cond_1bb

    move v0, v10

    :goto_17b
    invoke-virtual {v2, v1, v0, v9}, Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V

    .line 237
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/music/utils/ContextMenuManager;-><init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    .line 239
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setContextMenuManager(Lcom/google/android/music/utils/ContextMenuManager;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 244
    iput-boolean v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 245
    iput-boolean v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAlbumArtChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->createAlbumArtChangedIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void

    :cond_1aa
    move v9, v11

    .line 164
    goto/16 :goto_41

    .line 188
    :cond_1ad
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    goto/16 :goto_94

    .line 222
    :cond_1b4
    #getter for: Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;
    invoke-static {v8}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15f

    :cond_1b9
    move v0, v11

    .line 232
    goto :goto_176

    :cond_1bb
    move v0, v11

    .line 236
    goto :goto_17b
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const v7, 0x7f0d00d4

    const v6, 0x7f0d0005

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 811
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v0

    .line 812
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 813
    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_14

    .line 883
    :cond_26
    :goto_26
    return-object v0

    .line 819
    :cond_27
    const/16 v0, 0x64

    if-ne p1, v0, :cond_48

    .line 820
    if-nez p2, :cond_41

    move-object v0, v1

    :goto_2e
    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 822
    new-instance v1, Lcom/google/android/music/CreatePlaylistDialog;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/CreatePlaylistDialog;-><init>(Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)V

    move-object v0, v1

    .line 876
    :goto_36
    if-eqz v0, :cond_26

    .line 877
    new-instance v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_26

    .line 820
    :cond_41
    const-string v0, "songList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_2e

    .line 823
    :cond_48
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5e

    .line 824
    const-string v0, "playlistId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 825
    const-string v0, "playlistName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    new-instance v0, Lcom/google/android/music/RenamePlaylist;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/google/android/music/RenamePlaylist;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_36

    .line 828
    :cond_5e
    const/16 v0, 0x67

    if-ne p1, v0, :cond_7b

    .line 829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 831
    const v2, 0x7f0d00d5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 832
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_36

    .line 835
    :cond_7b
    const/16 v0, 0x68

    if-ne p1, v0, :cond_98

    .line 836
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 838
    const v2, 0x7f0d00d8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 840
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_36

    .line 842
    :cond_98
    const/16 v0, 0x69

    if-ne p1, v0, :cond_cc

    .line 843
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 844
    const v1, 0x7f0d00d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 845
    const v1, 0x7f0d00d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 846
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 847
    const v1, 0x7f0d0007

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    const v1, 0x7f0d0008

    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 867
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_36

    .line 868
    :cond_cc
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_ef

    .line 869
    if-nez p2, :cond_e1

    move-object v3, v1

    :goto_d3
    check-cast v3, Lcom/google/android/music/medialist/SongList;

    .line 871
    if-nez p2, :cond_e8

    .line 873
    :goto_d7
    new-instance v0, Lcom/google/android/music/AddToPlaylistDialog;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/AddToPlaylistDialog;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;J)V

    goto/16 :goto_36

    .line 869
    :cond_e1
    const-string v0, "songList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_d3

    .line 871
    :cond_e8
    const-string v0, "excludePlaylist"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_d7

    :cond_ef
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

    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, order:I
    const/16 v5, 0xa

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    const v6, 0x7f0d000b

    invoke-interface {p1, v8, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 311
    .local v2, item:Landroid/view/MenuItem;
    const/16 v5, 0x16

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    const v6, 0x7f0d00e8

    invoke-interface {p1, v8, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 312
    const/16 v5, 0x15

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    const v6, 0x7f0d00e7

    invoke-interface {p1, v8, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 314
    const/16 v5, 0x14

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    const v6, 0x7f0d0012

    invoke-interface {p1, v8, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 316
    const/4 v5, 0x4

    const v6, 0x7f0d0076

    invoke-interface {p1, v8, v5, v9, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 318
    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    const v5, 0x7f0d0018

    invoke-interface {p1, v8, v10, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 320
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 322
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 325
    :cond_4b
    const/16 v5, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    const v6, 0x7f0d0014

    invoke-interface {p1, v8, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 327
    const/16 v5, 0x19

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    const v6, 0x7f0d0015

    invoke-interface {p1, v8, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 329
    const/16 v5, 0x12

    const/16 v6, 0x64

    const v7, 0x7f0d0010

    invoke-interface {p1, v8, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 331
    const/16 v5, 0x17

    const v6, 0x7f0d0041

    invoke-interface {p1, v8, v5, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 333
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 334
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 335
    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_7f

    .line 339
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_95
    return v9
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 699
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_2a

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

    .line 700
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onDestroy()V

    .line 702
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 707
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->onDestroy()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    .line 710
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAlbumArtChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 712
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 713
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 262
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->dispatchLowMemory()V

    .line 263
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 253
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 254
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

    .line 256
    :cond_1c
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 468
    sget-boolean v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v5, :cond_1e

    const-string v5, "TopLevelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOptionsItemSelected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1e
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 471
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 472
    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 531
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    :cond_40
    :goto_40
    return v3

    .line 477
    :cond_41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_c6

    .line 528
    const-string v3, "TopLevelActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled menu item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 529
    goto :goto_40

    .line 480
    :sswitch_66
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v5

    if-nez v5, :cond_72

    .line 482
    invoke-direct {p0, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_40

    .line 484
    :cond_72
    invoke-direct {p0, v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_40

    .line 489
    :sswitch_76
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startManageMusicMode()V

    goto :goto_40

    .line 493
    :sswitch_7c
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startSettings()V

    goto :goto_40

    .line 497
    :sswitch_82
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v5, :cond_40

    .line 498
    new-instance v5, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v5, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 499
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V

    goto :goto_40

    .line 504
    :sswitch_94
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, v4}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto :goto_40

    .line 508
    :sswitch_9a
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto :goto_40

    .line 513
    :sswitch_a0
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v4

    if-ne v4, v3, :cond_b5

    .line 515
    const v4, 0x7f0d0043

    invoke-static {v4, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 520
    .local v1, i:Landroid/content/Intent;
    :goto_af
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 517
    .end local v1           #i:Landroid/content/Intent;
    :cond_b5
    const v4, 0x7f0d0042

    invoke-static {v4, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1       #i:Landroid/content/Intent;
    goto :goto_af

    .line 524
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_bd
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto/16 :goto_40

    .line 477
    nop

    :sswitch_data_c6
    .sparse-switch
        0x4 -> :sswitch_bd
        0xa -> :sswitch_82
        0x12 -> :sswitch_7c
        0x14 -> :sswitch_76
        0x15 -> :sswitch_9a
        0x16 -> :sswitch_94
        0x17 -> :sswitch_a0
        0x65 -> :sswitch_66
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 547
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 548
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onPause()V

    .line 549
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v0}, Lcom/google/android/music/EmptyViewController;->onPause()V

    .line 550
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/music/BottomBarController;->onPause()V

    .line 551
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v0}, Lcom/google/android/music/utils/ContextMenuManager;->onPause()V

    .line 552
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->onPause()V

    .line 553
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 554
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 15
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 344
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v8

    .line 345
    .local v8, streamingEnabled:Z
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v4

    .line 346
    .local v4, isOfflineFeatureAvailable:Z
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v5

    .line 347
    .local v5, isTablet:Z
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->shouldHideNowPlayingBar()Z

    move-result v7

    .line 348
    .local v7, nowPlayingBarShouldBeHidden:Z
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v11

    if-eqz v11, :cond_b1

    move v2, v9

    .line 350
    .local v2, hasStreamingAccount:Z
    :goto_23
    const/16 v11, 0xa

    invoke-direct {p0, p1, v11, v9}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 351
    const/16 v12, 0x16

    if-eqz v5, :cond_b4

    if-eqz v7, :cond_b4

    move v11, v9

    :goto_2f
    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 352
    const/16 v12, 0x15

    if-eqz v5, :cond_b7

    if-nez v7, :cond_b7

    move v11, v9

    :goto_39
    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 354
    const/16 v12, 0x14

    if-eqz v8, :cond_b9

    if-eqz v2, :cond_b9

    if-eqz v4, :cond_b9

    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->isManageMusicModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_b9

    move v11, v9

    :goto_55
    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 359
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v0

    .line 360
    .local v0, displayOptions:I
    const/16 v11, 0x65

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 361
    .local v6, item:Landroid/view/MenuItem;
    if-eqz v8, :cond_bb

    if-eqz v4, :cond_bb

    move v11, v9

    :goto_69
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 364
    if-ne v0, v9, :cond_bd

    move v11, v9

    :goto_78
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 374
    :goto_7b
    const/4 v11, 0x4

    invoke-direct {p0, p1, v11, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 376
    const/16 v12, 0x11

    if-nez v5, :cond_cf

    move v11, v9

    :goto_84
    invoke-direct {p0, p1, v12, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 378
    const/16 v11, 0x19

    invoke-direct {p0, p1, v11, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 379
    const/16 v11, 0x18

    invoke-direct {p0, p1, v11, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Landroid/view/Menu;IZ)V

    .line 381
    iget-object v10, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v10}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9b
    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 382
    .local v1, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->hasCustomMenuOptions()Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 383
    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_9b

    .end local v0           #displayOptions:I
    .end local v1           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v2           #hasStreamingAccount:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #item:Landroid/view/MenuItem;
    :cond_b1
    move v2, v10

    .line 348
    goto/16 :goto_23

    .restart local v2       #hasStreamingAccount:Z
    :cond_b4
    move v11, v10

    .line 351
    goto/16 :goto_2f

    :cond_b7
    move v11, v10

    .line 352
    goto :goto_39

    :cond_b9
    move v11, v10

    .line 354
    goto :goto_55

    .restart local v0       #displayOptions:I
    .restart local v6       #item:Landroid/view/MenuItem;
    :cond_bb
    move v11, v10

    .line 361
    goto :goto_69

    :cond_bd
    move v11, v10

    .line 364
    goto :goto_78

    .line 366
    :cond_bf
    if-ne v0, v9, :cond_c8

    .line 367
    const v11, 0x7f0d0019

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_7b

    .line 369
    :cond_c8
    const v11, 0x7f0d0018

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_7b

    :cond_cf
    move v11, v10

    .line 376
    goto :goto_84

    .line 386
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_d1
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 735
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

    .line 746
    :cond_1c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 558
    sget-boolean v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v1, :cond_b

    const-string v1, "TopLevelActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 560
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onResume()V

    .line 561
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mEmptyViewController:Lcom/google/android/music/EmptyViewController;

    invoke-virtual {v1}, Lcom/google/android/music/EmptyViewController;->onResume()V

    .line 562
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBottomBarController:Lcom/google/android/music/BottomBarController;

    invoke-virtual {v1}, Lcom/google/android/music/BottomBarController;->onResume()V

    .line 563
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mContextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-virtual {v1}, Lcom/google/android/music/utils/ContextMenuManager;->onResume()V

    .line 564
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->onResume()V

    .line 566
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 568
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 569
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v1}, Lcom/google/android/music/ActionbarController;->focusOnSelectedModeItem()V

    .line 571
    :cond_38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 574
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 540
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/TopLevelActivity$1;)V

    .line 541
    .local v0, savedState:Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->saveInstanceState()Ljava/lang/Object;

    move-result-object v1

    #setter for: Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mMusicStateControllerState:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->access$002(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outcicle"

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 731
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 674
    :cond_6
    return-void

    .line 659
    :cond_7
    sget-boolean v3, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v3, :cond_23

    .line 660
    const-string v3, "TopLevelActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_23
    const/4 v1, 0x0

    .line 663
    .local v1, onServiceConnectedRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 664
    :try_start_27
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 665
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 666
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 667
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_49

    .line 669
    if-eqz v1, :cond_6

    .line 670
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 671
    .local v2, r:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_39

    .line 667
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/Runnable;
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 688
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 689
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

    .line 691
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 692
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 693
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 694
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 695
    return-void

    .line 693
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
    .line 922
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateOptionsMenu()V

    .line 923
    return-void
.end method

.method public onUserLeaveHint()V
    .registers 2

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 611
    return-void
.end method

.method public openOptionsMenu()V
    .registers 3

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->useCustomMenus()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 416
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_31

    .line 417
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActionBarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v1}, Lcom/google/android/music/ActionbarController;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 418
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    .line 435
    :cond_30
    :goto_30
    return-void

    .line 429
    :cond_31
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 430
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOptionsMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_30

    .line 433
    :cond_43
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    goto :goto_30
.end method

.method runWhenServiceConnected(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 643
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 644
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    if-nez v0, :cond_16

    .line 645
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 647
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    monitor-exit v1

    .line 653
    :goto_1c
    return-void

    .line 650
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 652
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1c

    .line 650
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method
