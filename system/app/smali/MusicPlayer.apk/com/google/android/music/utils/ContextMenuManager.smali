.class public Lcom/google/android/music/utils/ContextMenuManager;
.super Ljava/lang/Object;
.source "ContextMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/ContextMenuManager$1;,
        Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;,
        Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

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

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "ContextMenuUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/ContextMenuManager;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 6
    .parameter "stateController"
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 71
    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 8
    .parameter "menu"
    .parameter "order"

    .prologue
    const/16 v4, 0x1f

    .line 650
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 651
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomeStateController;->getSelectedGroupName()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, groupName:Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 653
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, template:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, p2, v2}, Lcom/google/android/music/menu/MusicMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 659
    .end local v0           #groupName:Ljava/lang/String;
    .end local v1           #template:Ljava/lang/String;
    :goto_35
    return-object v2

    :cond_36
    const v2, 0x7f0d0019

    invoke-virtual {p1, v4, p2, v2}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    goto :goto_35
.end method

.method private addInstantMixMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 5
    .parameter "menu"
    .parameter "order"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 642
    const/16 v0, 0x1b

    const v1, 0x7f0d0141

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 646
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 8
    .parameter "hasRemote"
    .parameter "isKept"
    .parameter "menu"

    .prologue
    .line 626
    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 627
    const/16 v1, 0xf

    const/4 v2, 0x0

    const v3, 0x7f0d00ae

    invoke-virtual {p3, v1, v2, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 630
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    .line 631
    const v1, 0x7f020060

    const v2, 0x7f020061

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setWidgetDrawables(II)V

    .line 633
    invoke-virtual {v0, p2}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 636
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private addRingtoneMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 6
    .parameter "context"
    .parameter "menu"
    .parameter "order"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, v0}, Lcom/google/android/music/MusicUtils;->isRingtoneEnabled(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 591
    const/4 v0, 0x2

    const v1, 0x7f0d0078

    invoke-virtual {p2, v0, p3, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 594
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;
    .registers 11
    .parameter "callback"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"

    .prologue
    .line 265
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    .line 266
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 267
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenu;

    .line 268
    .local v1, menu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 270
    .end local v1           #menu:Lcom/google/android/music/menu/MusicMenu;
    :cond_16
    new-instance v1, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1, p2}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 271
    .local v1, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 274
    :cond_2d
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v2, menuPlacement:Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v3, p3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 276
    const/4 v3, 0x1

    aget v3, p3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 277
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 278
    .local v0, margin:F
    iget v3, v2, Landroid/graphics/Rect;->left:I

    float-to-int v5, v0

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 279
    iget v3, v2, Landroid/graphics/Rect;->top:I

    float-to-int v5, v0

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 280
    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonLocation(Landroid/graphics/Rect;)V

    .line 282
    .end local v0           #margin:F
    .end local v2           #menuPlacement:Landroid/graphics/Rect;
    :cond_58
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 283
    monitor-exit v4

    return-object v1

    .line 284
    .end local v1           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :catchall_5f
    move-exception v3

    monitor-exit v4
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method private createMusicMenuWithHeader(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[IILandroid/view/View;)Lcom/google/android/music/menu/MusicMenu;
    .registers 9
    .parameter "callback"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"
    .parameter "header"

    .prologue
    .line 289
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 291
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/menu/MusicMenu;

    .line 292
    .local v0, menu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 294
    .end local v0           #menu:Lcom/google/android/music/menu/MusicMenu;
    :cond_16
    new-instance v0, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 295
    .local v0, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    invoke-virtual {v0, p5}, Lcom/google/android/music/menu/MusicDropdownMenu;->setHeaderView(Landroid/view/View;)V

    .line 296
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 297
    monitor-exit v2

    return-object v0

    .line 298
    .end local v0           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V
    .registers 3
    .parameter "item"
    .parameter "isConnected"

    .prologue
    .line 525
    if-eqz p1, :cond_5

    .line 526
    invoke-virtual {p1, p2}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 528
    :cond_5
    return-void
.end method

.method private disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V
    .registers 5
    .parameter "item"
    .parameter "isConnected"
    .parameter "hasLocal"

    .prologue
    .line 533
    if-eqz p1, :cond_a

    .line 534
    if-nez p3, :cond_6

    if-eqz p2, :cond_b

    :cond_6
    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 536
    :cond_a
    return-void

    .line 534
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getPopupLocation(Landroid/view/View;)[I
    .registers 3
    .parameter "view"

    .prologue
    .line 178
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 179
    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 180
    return-object v0
.end method

.method private isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z
    .registers 8
    .parameter "networkMonitor"

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, isConnected:Z
    if-nez p1, :cond_11

    .line 541
    const-string v3, "ContextMenuUtils"

    const-string v4, "showTrackContextMenu called with null networkmonitor, defaulting to offline"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 550
    .end local v1           #isConnected:Z
    .local v2, isConnected:I
    :goto_10
    return v2

    .line 546
    .end local v2           #isConnected:I
    .restart local v1       #isConnected:Z
    :cond_11
    :try_start_11
    invoke-interface {p1}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17

    move-result v1

    :goto_15
    move v2, v1

    .line 550
    .restart local v2       #isConnected:I
    goto :goto_10

    .line 547
    .end local v2           #isConnected:I
    :catch_17
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ContextMenuUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private showAlbumContextMenuCommon(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 37
    .parameter "fragment"
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistId"
    .parameter "artistNameForAlbum"
    .parameter "sortableAlbumArtistName"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 117
    .local v20, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/google/android/music/medialist/AlbumSongList;

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v4, songList:Lcom/google/android/music/medialist/AlbumSongList;
    new-instance v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v7, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ALBUM:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object/from16 v6, p0

    move-object v8, v4

    move/from16 v9, p12

    move-wide/from16 v10, p2

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 122
    .local v5, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-wide/from16 v0, p5

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J
    invoke-static {v5, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 123
    move-object/from16 v0, p7

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-object/from16 v0, p8

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->sortableAlbumArtistName:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$202(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v13

    .line 129
    .local v13, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/ContextMenuManager;->isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z

    move-result v14

    .line 130
    .local v14, isConnected:Z
    const/4 v15, 0x0

    .line 132
    .local v15, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-static/range {p7 .. p7}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v17

    .line 133
    .local v17, mIsUnknownArtist:Z
    invoke-static/range {p4 .. p4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v16

    .line 134
    .local v16, mIsUnknownAlbum:Z
    if-eqz v16, :cond_fb

    .line 135
    const v6, 0x7f0d0075

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 140
    :goto_5f
    const/16 v18, 0x0

    .line 141
    .local v18, order:I
    const/4 v6, 0x6

    const v7, 0x7f0d007c

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v15

    .line 142
    if-nez p13, :cond_6f

    if-eqz p14, :cond_102

    :cond_6f
    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14, v6}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 144
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v15

    .line 148
    :cond_87
    add-int/lit8 v18, v18, 0x1

    .line 150
    const/4 v6, 0x1

    add-int/lit8 v19, v18, 0x1

    .end local v18           #order:I
    .local v19, order:I
    const v7, 0x7f0d007d

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v6

    if-nez v6, :cond_cf

    .line 153
    const/16 v6, 0xcb

    add-int/lit8 v18, v19, 0x1

    .end local v19           #order:I
    .restart local v18       #order:I
    const v7, 0x7f0d00e0

    move/from16 v0, v19

    invoke-virtual {v13, v6, v0, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 154
    const/16 v6, 0x258

    add-int/lit8 v19, v18, 0x1

    .end local v18           #order:I
    .restart local v19       #order:I
    const v7, 0x7f0d001b

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v15

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 157
    if-eqz v16, :cond_c0

    if-nez v17, :cond_cf

    .line 159
    :cond_c0
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-direct {v0, v1, v2, v13}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v15

    .line 160
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    :cond_cf
    move/from16 v18, v19

    .line 168
    .end local v19           #order:I
    .restart local v18       #order:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v6

    const-string v7, "showContextMenu"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "activeScreen"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "contextMenuType"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "album"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v13}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 175
    return-void

    .line 137
    .end local v18           #order:I
    :cond_fb
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto/16 :goto_5f

    .line 142
    .restart local v18       #order:I
    :cond_102
    const/4 v6, 0x0

    goto/16 :goto_70
.end method


# virtual methods
.method public onPause()V
    .registers 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 83
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 84
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 85
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    :cond_1c
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 31
    .parameter "fragment"
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistId"
    .parameter "artistNameForAlbum"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 94
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenuCommon(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 97
    return-void
.end method

.method public showAlbumContextMenuWithArtistSort(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 16
    .parameter "fragment"
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "sortableAlbumArtistName"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p15}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenuCommon(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 108
    return-void
.end method

.method public showAllSongsForArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;ILcom/google/android/music/dl/INetworkMonitor;)V
    .registers 21
    .parameter "fragment"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "networkMonitor"

    .prologue
    .line 305
    new-instance v6, Lcom/google/android/music/medialist/ArtistSongList;

    const/4 v4, -0x1

    move-object/from16 v0, p4

    invoke-direct {v6, p2, p3, v0, v4}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 306
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v7, 0x1

    move-object v4, p0

    move-wide v8, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 309
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 312
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v4, 0x6

    const/4 v5, 0x0

    const v7, 0x7f0d007c

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 313
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 314
    const/4 v4, 0x0

    invoke-direct {p0, v11, v4}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 316
    :cond_31
    const/4 v4, 0x1

    const/4 v5, 0x1

    const v7, 0x7f0d007d

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 318
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    const-string v5, "showContextMenu"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "activeScreen"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "contextMenuType"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "allSongsForArtist"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 328
    return-void
.end method

.method public showAllSongsForGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 24
    .parameter "fragment"
    .parameter "genreId"
    .parameter "genreName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 365
    new-instance v6, Lcom/google/android/music/medialist/GenreSongList;

    const/4 v4, -0x1

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 366
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v7, 0x1

    move-object v4, p0

    move-wide/from16 v8, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 369
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 373
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/ContextMenuManager;->isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z

    move-result v12

    .line 374
    .local v12, isConnected:Z
    const/4 v13, 0x0

    .line 375
    .local v13, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/4 v4, 0x6

    const/4 v5, 0x0

    const v7, 0x7f0d007c

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 376
    move/from16 v0, p8

    invoke-direct {p0, v13, v12, v0}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 378
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 379
    const/4 v4, 0x0

    invoke-direct {p0, v11, v4}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 382
    :cond_42
    const/4 v4, 0x1

    const/4 v5, 0x1

    const v7, 0x7f0d007d

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 384
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    const-string v5, "showContextMenu"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "activeScreen"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "contextMenuType"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "allSongsForGenre"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 393
    return-void
.end method

.method public showArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZZZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 27
    .parameter "fragment"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 187
    new-instance v6, Lcom/google/android/music/medialist/ArtistSongList;

    const/4 v4, -0x1

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 188
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v4, p0

    move/from16 v7, p8

    move-wide/from16 v8, p2

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 190
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 193
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-static/range {p4 .. p4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v14

    .line 195
    .local v14, mIsUnknownArtist:Z
    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/ContextMenuManager;->isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z

    move-result v12

    .line 196
    .local v12, isConnected:Z
    const/4 v13, 0x0

    .line 198
    .local v13, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/4 v4, 0x6

    const/4 v5, 0x0

    const v7, 0x7f0d007c

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 199
    if-nez p9, :cond_3a

    if-eqz p10, :cond_b1

    :cond_3a
    const/4 v4, 0x1

    :goto_3b
    invoke-direct {p0, v13, v12, v4}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 201
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 202
    const/4 v4, 0x0

    invoke-direct {p0, v11, v4}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 205
    :cond_4b
    const/4 v4, 0x1

    const/4 v5, 0x1

    const v7, 0x7f0d007d

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 207
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v4

    if-nez v4, :cond_75

    .line 208
    const/16 v4, 0x258

    const/4 v5, 0x4

    const v7, 0x7f0d001b

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 209
    invoke-direct {p0, v13, v12}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 210
    if-nez v14, :cond_75

    .line 211
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1, v11}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 212
    invoke-direct {p0, v13, v12}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 219
    :cond_75
    if-eqz v14, :cond_b3

    .line 220
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 225
    :goto_87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    const-string v5, "showContextMenu"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "activeScreen"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "contextMenuType"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "artist"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 232
    return-void

    .line 199
    :cond_b1
    const/4 v4, 0x0

    goto :goto_3b

    .line 222
    :cond_b3
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_87
.end method

.method public showAtHomePartyModeMenu(Landroid/view/View;Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/medialist/SongList;ILcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;)V
    .registers 25
    .parameter "rootView"
    .parameter "fragment"
    .parameter "songList"
    .parameter "position"
    .parameter "mediaCursor"
    .parameter "header"

    .prologue
    .line 557
    const/4 v15, 0x0

    .line 558
    .local v15, order:I
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v14

    .line 559
    .local v14, location:[I
    new-instance v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ATHOME_QUEUE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v5, 0x1

    move/from16 v0, p4

    int-to-long v6, v0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    .line 561
    .local v1, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move/from16 v0, p4

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I
    invoke-static {v1, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$702(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;I)I

    .line 562
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 565
    .local v17, service:Lcom/google/android/music/IMusicPlaybackService;
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenuWithHeader(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[IILandroid/view/View;)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 570
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    :try_start_2d
    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_55

    move-result v12

    .line 571
    .local v12, currentPlayPosition:I
    move/from16 v0, p4

    if-eq v0, v12, :cond_47

    add-int/lit8 v2, v12, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_47

    .line 572
    const/16 v2, 0x2bc

    add-int/lit8 v16, v15, 0x1

    .end local v15           #order:I
    .local v16, order:I
    const v3, 0x7f0d003b

    :try_start_42
    invoke-virtual {v11, v2, v15, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_6f

    move/from16 v15, v16

    .line 578
    .end local v12           #currentPlayPosition:I
    .end local v16           #order:I
    .restart local v15       #order:I
    :cond_47
    :goto_47
    const/16 v2, 0x2bd

    add-int/lit8 v16, v15, 0x1

    .end local v15           #order:I
    .restart local v16       #order:I
    const v3, 0x7f0d003c

    invoke-virtual {v11, v2, v15, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 586
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 587
    return-void

    .line 575
    .end local v16           #order:I
    .restart local v15       #order:I
    :catch_55
    move-exception v13

    .line 576
    .local v13, e:Landroid/os/RemoteException;
    :goto_56
    const-string v2, "ContextMenuUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get queuePosition (PartyMode): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 575
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v15           #order:I
    .restart local v12       #currentPlayPosition:I
    .restart local v16       #order:I
    :catch_6f
    move-exception v13

    move/from16 v15, v16

    .end local v16           #order:I
    .restart local v15       #order:I
    goto :goto_56
.end method

.method public showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V
    .registers 16
    .parameter "fragment"
    .parameter "autoPlaylistId"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    .line 599
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p2, p3, v1, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v3

    .line 601
    .local v3, songList:Lcom/google/android/music/medialist/AutoPlaylist;
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 604
    .local v0, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    invoke-direct {p0, v0, p5, p4, p6}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v8

    .line 607
    .local v8, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v1, 0x6

    const/4 v2, 0x0

    const v4, 0x7f0d007c

    invoke-virtual {v8, v1, v2, v4}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 609
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 610
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 613
    :cond_2b
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    const-string v2, "showContextMenu"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "activeScreen"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "contextMenuType"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoplaylist#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v8}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 622
    return-void
.end method

.method public showGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 24
    .parameter "fragment"
    .parameter "genreId"
    .parameter "genreName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    .line 334
    new-instance v6, Lcom/google/android/music/medialist/GenreSongList;

    const/4 v4, -0x1

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 335
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v7, 0x1

    move-object v4, p0

    move-wide/from16 v8, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 337
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 341
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/ContextMenuManager;->isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z

    move-result v12

    .line 342
    .local v12, isConnected:Z
    const/4 v13, 0x0

    .line 343
    .local v13, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/4 v4, 0x6

    const/4 v5, 0x0

    const v7, 0x7f0d007c

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 344
    move/from16 v0, p8

    invoke-direct {p0, v13, v12, v0}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 346
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 347
    const/4 v4, 0x0

    invoke-direct {p0, v11, v4}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v13

    .line 350
    :cond_42
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    const-string v5, "showContextMenu"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "activeScreen"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "contextMenuType"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "genre"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 359
    return-void
.end method

.method public showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 24
    .parameter "fragment"
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "playlistType"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"
    .parameter "networkMonitor"

    .prologue
    .line 238
    new-instance v6, Lcom/google/android/music/medialist/PlaylistSongList;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v6, p2, p3, v0, v1}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 239
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v4, p0

    move/from16 v7, p9

    move-wide v8, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 242
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p8

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 244
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v4, 0x6

    const/4 v5, 0x0

    const v7, 0x7f0d007c

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 245
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 246
    const/4 v4, 0x0

    invoke-direct {p0, v11, v4}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 248
    :cond_33
    const/16 v4, 0x192

    const/4 v5, 0x1

    const v7, 0x7f0d0064

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 249
    const/16 v4, 0x190

    const/4 v5, 0x2

    const v7, 0x7f0d0062

    invoke-virtual {v11, v4, v5, v7}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 251
    move/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {p0, v0, v1, v11}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)Lcom/google/android/music/menu/MusicMenuItem;

    .line 252
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v4

    const-string v5, "showContextMenu"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "activeScreen"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "contextMenuType"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "playlist"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 261
    return-void
.end method

.method public showShuffleAllContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;[ILandroid/view/View;I)V
    .registers 12
    .parameter "fragment"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    .line 398
    const-wide/16 v2, -0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    .line 400
    return-void
.end method

.method public showTrackContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JILjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V
    .registers 49
    .parameter "fragment"
    .parameter "trackId"
    .parameter "trackName"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "sortableAlbumArtistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "editable"
    .parameter "parentList"
    .parameter "idInParent"
    .parameter "positionInParent"
    .parameter "storeId"
    .parameter "isMusic"
    .parameter "hasRemote"
    .parameter "hasLocal"
    .parameter "storeService"
    .parameter "networkMonitor"
    .parameter "cursor"

    .prologue
    .line 409
    move-object/from16 v0, p13

    instance-of v0, v0, Lcom/google/android/music/medialist/PlayQueueSongList;

    move/from16 v21, v0

    .line 410
    .local v21, isNowPlayingQueue:Z
    move-object/from16 v0, p13

    instance-of v0, v0, Lcom/google/android/music/athome/AtHomeSongList;

    move/from16 v19, v0

    .line 412
    .local v19, isAtHomeQueue:Z
    new-instance v7, Lcom/google/android/music/medialist/SingleSongList;

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v2}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 413
    .local v7, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v4, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v6, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->SONG:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v9, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p21

    move-object/from16 v13, p23

    invoke-direct/range {v4 .. v13}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    .line 415
    .local v4, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-wide/from16 v0, p5

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J
    invoke-static {v4, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 416
    move-object/from16 v0, p7

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    move-object/from16 v0, p17

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$302(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    move-object/from16 v0, p8

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->sortableAlbumArtistName:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$202(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    if-eqz p13, :cond_21c

    move-object/from16 v0, p13

    instance-of v5, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v5, :cond_21c

    move-object/from16 v5, p13

    .line 420
    check-cast v5, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v5}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v5

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v4, v5, v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$402(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 424
    :goto_4e
    move-object/from16 v0, p13

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mParentList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$502(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 425
    move-wide/from16 v0, p14

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J
    invoke-static {v4, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$602(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 426
    move/from16 v0, p16

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$702(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;I)I

    .line 428
    if-eqz p23, :cond_223

    invoke-virtual/range {p23 .. p23}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_223

    const/16 v18, 0x1

    .line 430
    .local v18, hasValidCursor:Z
    :goto_67
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p9

    move/from16 v3, p11

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v14

    .line 434
    .local v14, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    move-object/from16 v0, p0

    move-object/from16 v1, p22

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/ContextMenuManager;->isNetworkConnected(Lcom/google/android/music/dl/INetworkMonitor;)Z

    move-result v20

    .line 435
    .local v20, isConnected:Z
    const/16 v22, 0x0

    .line 436
    .local v22, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/16 v23, 0x0

    .line 437
    .local v23, order:I
    if-eqz p13, :cond_cc

    .line 438
    const/4 v5, 0x6

    add-int/lit8 v24, v23, 0x1

    .end local v23           #order:I
    .local v24, order:I
    const v6, 0x7f0d007c

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, p20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 442
    if-ltz p16, :cond_256

    if-eqz v18, :cond_256

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v5, :cond_256

    if-nez v21, :cond_a4

    if-eqz v19, :cond_256

    .line 445
    :cond_a4
    :try_start_a4
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_227

    move-result v15

    .line 446
    .local v15, currentPosition:I
    move/from16 v0, p16

    if-eq v0, v15, :cond_256

    add-int/lit8 v5, v15, 0x1

    move/from16 v0, p16

    if-eq v0, v5, :cond_256

    .line 448
    const/16 v5, 0x320

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d003b

    :try_start_bb
    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, p20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_cc} :catch_245

    .line 459
    .end local v15           #currentPosition:I
    :cond_cc
    :goto_cc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->canQueue()Z

    move-result v5

    if-eqz v5, :cond_252

    if-nez v21, :cond_252

    if-nez v19, :cond_252

    .line 460
    add-int/lit8 v24, v23, 0x1

    .end local v23           #order:I
    .restart local v24       #order:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/google/android/music/utils/ContextMenuManager;->addAddToQueueMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInPartyMode()Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 465
    :cond_f7
    :goto_f7
    if-eqz p19, :cond_110

    if-nez v19, :cond_110

    .line 466
    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/google/android/music/utils/ContextMenuManager;->addInstantMixMenuItem(Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    move/from16 v24, v23

    .line 469
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_110
    if-nez v19, :cond_11f

    .line 470
    const/4 v5, 0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d007d

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move/from16 v24, v23

    .line 472
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_11f
    if-eqz p12, :cond_13d

    #getter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$400(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v5, v5, v8

    if-eqz v5, :cond_13d

    if-eqz v18, :cond_13d

    .line 473
    if-eqz v21, :cond_235

    .line 474
    const/16 v5, 0x321

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d003c

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move/from16 v24, v23

    .line 481
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_13d
    :goto_13d
    if-eqz v19, :cond_156

    .line 482
    const/16 v5, 0x2bd

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d003c

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    move/from16 v24, v23

    .line 487
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_156
    if-eqz p21, :cond_24e

    if-nez v19, :cond_24e

    .line 488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v14, v1}, Lcom/google/android/music/utils/ContextMenuManager;->addRingtoneMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, p20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOfflineAndNoLocal(Lcom/google/android/music/menu/MusicMenuItem;ZZ)V

    .line 492
    :goto_173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v5

    if-nez v5, :cond_24a

    if-nez v19, :cond_24a

    .line 493
    if-eqz p13, :cond_19b

    const-wide/16 v5, -0x1

    cmp-long v5, p14, v5

    if-eqz v5, :cond_19b

    move-object/from16 v0, p13

    instance-of v5, v0, Lcom/google/android/music/medialist/ArtistSongList;

    if-nez v5, :cond_19b

    .line 494
    const/16 v5, 0x12e

    add-int/lit8 v24, v23, 0x1

    .end local v23           #order:I
    .restart local v24       #order:I
    const v6, 0x7f0d00e0

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move/from16 v23, v24

    .line 498
    .end local v24           #order:I
    .restart local v23       #order:I
    :cond_19b
    const/16 v5, 0x258

    add-int/lit8 v24, v23, 0x1

    .end local v23           #order:I
    .restart local v24       #order:I
    const v6, 0x7f0d001b

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 501
    :goto_1b1
    if-eqz p17, :cond_247

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/music/GPlusShareActivity;->isSharingSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_247

    .line 502
    const/16 v5, 0x1d

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d014d

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->disableMenuItemIfOffline(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 505
    :goto_1d3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->areUpstreamTrackDeletesEnabled(Landroid/content/Context;)Z

    move-result v17

    .line 509
    .local v17, enableRemoteTrackDeletes:Z
    if-nez v17, :cond_1df

    if-nez p19, :cond_1ed

    .line 510
    :cond_1df
    const/16 v5, 0x1c

    add-int/lit8 v24, v23, 0x1

    .end local v23           #order:I
    .restart local v24       #order:I
    const v6, 0x7f0d0149

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move/from16 v23, v24

    .line 513
    .end local v24           #order:I
    .restart local v23       #order:I
    :cond_1ed
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v5

    const-string v6, "showContextMenu"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "activeScreen"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "contextMenuType"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "song"

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v14}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 522
    return-void

    .line 422
    .end local v14           #contextMenu:Lcom/google/android/music/menu/MusicMenu;
    .end local v17           #enableRemoteTrackDeletes:Z
    .end local v18           #hasValidCursor:Z
    .end local v20           #isConnected:Z
    .end local v22           #item:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v23           #order:I
    :cond_21c
    const-wide/16 v5, -0x1

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v4, v5, v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$402(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    goto/16 :goto_4e

    .line 428
    :cond_223
    const/16 v18, 0x0

    goto/16 :goto_67

    .line 452
    .restart local v14       #contextMenu:Lcom/google/android/music/menu/MusicMenu;
    .restart local v18       #hasValidCursor:Z
    .restart local v20       #isConnected:Z
    .restart local v22       #item:Lcom/google/android/music/menu/MusicMenuItem;
    .restart local v24       #order:I
    :catch_227
    move-exception v16

    move/from16 v23, v24

    .line 453
    .end local v24           #order:I
    .local v16, e:Landroid/os/RemoteException;
    .restart local v23       #order:I
    :goto_22a
    const-string v5, "ContextMenuUtils"

    const-string v6, "getQueuePosition() failed"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cc

    .line 477
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_235
    const/16 v5, 0x12d

    add-int/lit8 v23, v24, 0x1

    .end local v24           #order:I
    .restart local v23       #order:I
    const v6, 0x7f0d009b

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move/from16 v24, v23

    .end local v23           #order:I
    .restart local v24       #order:I
    goto/16 :goto_13d

    .line 452
    .end local v24           #order:I
    .restart local v15       #currentPosition:I
    .restart local v23       #order:I
    :catch_245
    move-exception v16

    goto :goto_22a

    .end local v15           #currentPosition:I
    .end local v23           #order:I
    .restart local v24       #order:I
    :cond_247
    move/from16 v23, v24

    .end local v24           #order:I
    .restart local v23       #order:I
    goto :goto_1d3

    :cond_24a
    move/from16 v24, v23

    .end local v23           #order:I
    .restart local v24       #order:I
    goto/16 :goto_1b1

    :cond_24e
    move/from16 v23, v24

    .end local v24           #order:I
    .restart local v23       #order:I
    goto/16 :goto_173

    :cond_252
    move/from16 v24, v23

    .end local v23           #order:I
    .restart local v24       #order:I
    goto/16 :goto_f7

    :cond_256
    move/from16 v23, v24

    .end local v24           #order:I
    .restart local v23       #order:I
    goto/16 :goto_cc
.end method
