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
    .line 51
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 63
    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/music/utils/ContextMenuManager;->doExternalSearch(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V

    return-void
.end method

.method private addInstantMixMenuItem(Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/menu/MusicMenu;I)V
    .registers 10
    .parameter "networkMonitor"
    .parameter "menu"
    .parameter "order"

    .prologue
    const/4 v5, 0x0

    .line 397
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 399
    const/16 v2, 0x1b

    const v3, 0x7f0d0105

    invoke-virtual {p2, v2, p3, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 401
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-nez p1, :cond_2c

    .line 402
    const-string v2, "ContextMenuUtils"

    const-string v3, "addInstantMixMenuItem called with null networkmonitor, defaulting to offline"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    invoke-virtual {v1, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 414
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2b
    :goto_2b
    return-void

    .line 408
    .restart local v1       #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_2b

    .line 409
    :catch_34
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ContextMenuUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v1, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    goto :goto_2b
.end method

.method private addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)V
    .registers 8
    .parameter "hasRemote"
    .parameter "isKept"
    .parameter "menu"

    .prologue
    .line 374
    if-eqz p1, :cond_24

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 375
    const/16 v1, 0xf

    const/4 v2, 0x0

    const v3, 0x7f0d009c

    invoke-virtual {p3, v1, v2, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 378
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    .line 379
    const v1, 0x7f02006f

    const v2, 0x7f02006e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setWidgetDrawables(II)V

    .line 381
    invoke-virtual {v0, p2}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 383
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_24
    return-void
.end method

.method private addRingtoneMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;IZLcom/google/android/music/dl/INetworkMonitor;)V
    .registers 12
    .parameter "context"
    .parameter "menu"
    .parameter "order"
    .parameter "hasLocal"
    .parameter "networkMonitor"

    .prologue
    const/4 v5, 0x0

    .line 332
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, v2}, Lcom/google/android/music/MusicUtils;->isRingtoneEnabled(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 352
    :cond_9
    :goto_9
    return-void

    .line 335
    :cond_a
    const/4 v2, 0x2

    const v3, 0x7f0d006c

    invoke-virtual {p2, v2, p3, v3}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 337
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-nez p4, :cond_9

    .line 339
    if-nez p5, :cond_26

    .line 340
    const-string v2, "ContextMenuUtils"

    const-string v3, "addRingtoneMenuItem called with null networkmonitor, defaulting to offline"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-virtual {v1, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    goto :goto_9

    .line 346
    :cond_26
    :try_start_26
    invoke-interface {p5}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_9

    .line 347
    :catch_2e
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ContextMenuUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    invoke-virtual {v1, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    goto :goto_9
.end method

.method private static addSearchMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 390
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    :goto_6
    return-void

    .line 393
    :cond_7
    const/16 v0, 0x12c

    const/16 v1, 0x64

    const v2, 0x7f0d000f

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    goto :goto_6
.end method

.method private static createExternalQueryString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "android.intent.extra.album"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_14
    const-string v2, "android.intent.extra.artist"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 602
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 603
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "android.intent.extra.title"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 612
    const-string v2, "android.intent.extra.title"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;
    .registers 11
    .parameter "callback"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"

    .prologue
    .line 189
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    .line 190
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 191
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenu;

    .line 192
    .local v1, menu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 194
    .end local v1           #menu:Lcom/google/android/music/menu/MusicMenu;
    :cond_16
    new-instance v1, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1, p2}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 195
    .local v1, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 198
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 199
    .local v2, menuPlacement:Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v3, p3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 200
    const/4 v3, 0x1

    aget v3, p3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 201
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 202
    .local v0, margin:F
    iget v3, v2, Landroid/graphics/Rect;->left:I

    float-to-int v5, v0

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 203
    iget v3, v2, Landroid/graphics/Rect;->top:I

    float-to-int v5, v0

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonLocation(Landroid/graphics/Rect;)V

    .line 206
    .end local v0           #margin:F
    .end local v2           #menuPlacement:Landroid/graphics/Rect;
    :cond_50
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    monitor-exit v4

    return-object v1

    .line 208
    .end local v1           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v3
.end method

.method private static doExternalSearch(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V
    .registers 8
    .parameter "type"
    .parameter "context"
    .parameter "stateController"
    .parameter "songlist"

    .prologue
    .line 556
    sget-boolean v1, Lcom/google/android/music/utils/ContextMenuManager;->LOGV:Z

    if-eqz v1, :cond_b

    const-string v1, "ContextMenuUtils"

    const-string v2, "doExternalSearch()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_b
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 559
    const-string v1, "ContextMenuUtils"

    const-string v2, "Do external search does not work pre-GB"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_18
    return-void

    .line 563
    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p3, p1, v0}, Lcom/google/android/music/medialist/SongList;->populateExternalSearchExtras(Landroid/content/Context;Landroid/content/Intent;)V

    .line 573
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_52

    .line 574
    :cond_33
    const-string v1, "ContextMenuUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Songlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not provide search extras.  Not doing search"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 578
    :cond_52
    const-string v1, "android.intent.extra.album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 579
    const-string v1, "android.intent.extra.focus"

    const-string v2, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :cond_61
    :goto_61
    const-string v1, "query"

    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->createExternalQueryString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p2, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 581
    :cond_6e
    const-string v1, "android.intent.extra.artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 582
    const-string v1, "android.intent.extra.focus"

    const-string v2, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_61

    .line 584
    :cond_7e
    const-string v1, "android.intent.extra.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 585
    const-string v1, "android.intent.extra.focus"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_61
.end method

.method public static getPopupLocation(Landroid/view/View;)[I
    .registers 3
    .parameter "view"

    .prologue
    .line 129
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 130
    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 131
    return-object v0
.end method


# virtual methods
.method public onPause()V
    .registers 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 75
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 76
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 77
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    :cond_1c
    monitor-exit v1

    .line 80
    return-void

    .line 79
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
    .line 71
    return-void
.end method

.method public showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V
    .registers 29
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistId"
    .parameter "artistNameForAlbum"
    .parameter "rootView"
    .parameter "location"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 86
    .local v16, res:Landroid/content/res/Resources;
    new-instance v7, Lcom/google/android/music/medialist/AlbumSongList;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v7, songList:Lcom/google/android/music/medialist/AlbumSongList;
    new-instance v4, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v6, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ALBUM:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object/from16 v5, p0

    move/from16 v8, p10

    move-wide/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 90
    .local v4, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-wide/from16 v0, p4

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J
    invoke-static {v4, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 91
    move-object/from16 v0, p6

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v11

    .line 95
    .local v11, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-static/range {p6 .. p6}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 96
    .local v13, mIsUnknownArtist:Z
    invoke-static/range {p3 .. p3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v12

    .line 97
    .local v12, mIsUnknownAlbum:Z
    if-eqz v12, :cond_91

    .line 98
    const v5, 0x7f0d0065

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 103
    :goto_4c
    const/4 v14, 0x0

    .line 104
    .local v14, order:I
    const/4 v5, 0x6

    add-int/lit8 v15, v14, 0x1

    .end local v14           #order:I
    .local v15, order:I
    const v6, 0x7f0d0070

    invoke-virtual {v11, v5, v14, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 106
    const/4 v5, 0x1

    add-int/lit8 v14, v15, 0x1

    .end local v15           #order:I
    .restart local v14       #order:I
    const v6, 0x7f0d0071

    invoke-virtual {v11, v5, v15, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v5

    if-nez v5, :cond_8d

    .line 109
    const/16 v5, 0xcb

    add-int/lit8 v15, v14, 0x1

    .end local v14           #order:I
    .restart local v15       #order:I
    const v6, 0x7f0d00d0

    invoke-virtual {v11, v5, v14, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 110
    const/16 v5, 0x258

    add-int/lit8 v14, v15, 0x1

    .end local v15           #order:I
    .restart local v14       #order:I
    const v6, 0x7f0d0017

    invoke-virtual {v11, v5, v15, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 112
    if-eqz v12, :cond_81

    if-nez v13, :cond_8d

    .line 114
    :cond_81
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)V

    .line 117
    invoke-static {v11}, Lcom/google/android/music/utils/ContextMenuManager;->addSearchMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 125
    :cond_8d
    invoke-virtual {v11}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 126
    return-void

    .line 100
    .end local v14           #order:I
    :cond_91
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method public showAllSongsForArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V
    .registers 15
    .parameter "artistId"
    .parameter "artistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    const/4 v4, 0x1

    .line 214
    new-instance v3, Lcom/google/android/music/medialist/ArtistSongList;

    const/4 v1, -0x1

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 215
    .local v3, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 218
    .local v0, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    invoke-direct {p0, v0, p5, p4, p6}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v7

    .line 221
    .local v7, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v1, 0x6

    const/4 v2, 0x0

    const v5, 0x7f0d0070

    invoke-virtual {v7, v1, v2, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 222
    const v1, 0x7f0d0071

    invoke-virtual {v7, v4, v4, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 224
    invoke-virtual {v7, p3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 227
    return-void
.end method

.method public showAllSongsForGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V
    .registers 15
    .parameter "genreId"
    .parameter "genreName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    const/4 v4, 0x1

    .line 248
    new-instance v3, Lcom/google/android/music/medialist/GenreSongList;

    const/4 v1, -0x1

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 249
    .local v3, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 252
    .local v0, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    invoke-direct {p0, v0, p5, p4, p6}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v7

    .line 255
    .local v7, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v1, 0x6

    const/4 v2, 0x0

    const v5, 0x7f0d0070

    invoke-virtual {v7, v1, v2, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 256
    const v1, 0x7f0d0071

    invoke-virtual {v7, v4, v4, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 258
    invoke-virtual {v7, p3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 261
    return-void
.end method

.method public showArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;IZZ)V
    .registers 20
    .parameter "artistId"
    .parameter "artistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"

    .prologue
    .line 137
    new-instance v5, Lcom/google/android/music/medialist/ArtistSongList;

    const/4 v3, -0x1

    invoke-direct {v5, p1, p2, p3, v3}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 138
    .local v5, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v4, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v3, p0

    move/from16 v6, p7

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 140
    .local v2, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, p4, v1}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v9

    .line 143
    .local v9, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-static {p3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v10

    .line 145
    .local v10, mIsUnknownArtist:Z
    const/4 v3, 0x6

    const/4 v4, 0x0

    const v6, 0x7f0d0070

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 146
    const/4 v3, 0x1

    const/4 v4, 0x1

    const v6, 0x7f0d0071

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 148
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 149
    const/16 v3, 0x258

    const/4 v4, 0x4

    const v6, 0x7f0d0017

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 150
    if-nez v10, :cond_4a

    .line 151
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {p0, v0, v1, v9}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)V

    .line 152
    invoke-static {v9}, Lcom/google/android/music/utils/ContextMenuManager;->addSearchMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 159
    :cond_4a
    if-eqz v10, :cond_60

    .line 160
    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 165
    :goto_5c
    invoke-virtual {v9}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 166
    return-void

    .line 162
    :cond_60
    invoke-virtual {v9, p3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_5c
.end method

.method public showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V
    .registers 15
    .parameter "autoPlaylistId"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    const/4 v8, 0x0

    .line 357
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {p1, p2, v8, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v3

    .line 359
    .local v3, songList:Lcom/google/android/music/medialist/AutoPlaylist;
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 362
    .local v0, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    invoke-direct {p0, v0, p4, p3, p5}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v7

    .line 365
    .local v7, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v1, 0x6

    const v2, 0x7f0d0070

    invoke-virtual {v7, v1, v8, v2}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 367
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 370
    return-void
.end method

.method public showGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V
    .registers 15
    .parameter "genreId"
    .parameter "genreName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    .line 232
    new-instance v3, Lcom/google/android/music/medialist/GenreSongList;

    const/4 v1, -0x1

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 233
    .local v3, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v4, 0x1

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 235
    .local v0, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    invoke-direct {p0, v0, p5, p4, p6}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v7

    .line 238
    .local v7, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v1, 0x6

    const/4 v2, 0x0

    const v4, 0x7f0d0070

    invoke-virtual {v7, v1, v2, v4}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 240
    invoke-virtual {v7, p3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 243
    return-void
.end method

.method public showPlaylistContextMenu(JLjava/lang/String;I[ILandroid/view/View;IZZ)V
    .registers 20
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "playlistType"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "hasRemote"
    .parameter "isCurrentlyKeptOn"

    .prologue
    .line 171
    new-instance v5, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .line 172
    .local v5, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v2, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v4, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    move-object v3, p0

    move/from16 v6, p8

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V

    .line 175
    .local v2, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, p5, v1}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v9

    .line 177
    .local v9, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v3, 0x6

    const/4 v4, 0x0

    const v6, 0x7f0d0070

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 178
    const/16 v3, 0x192

    const/4 v4, 0x1

    const v6, 0x7f0d0054

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 179
    const/16 v3, 0x190

    const/4 v4, 0x2

    const v6, 0x7f0d0052

    invoke-virtual {v9, v3, v4, v6}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 181
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1, v9}, Lcom/google/android/music/utils/ContextMenuManager;->addKeepOnMenu(ZZLcom/google/android/music/menu/MusicMenu;)V

    .line 182
    invoke-virtual {v9, p3}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v9}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 185
    return-void
.end method

.method public showShuffleAllContextMenu([ILandroid/view/View;I)V
    .registers 4
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"

    .prologue
    .line 266
    return-void
.end method

.method public showTrackContextMenu(JLjava/lang/String;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JLjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;)V
    .registers 34
    .parameter "trackId"
    .parameter "trackName"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "location"
    .parameter "rootView"
    .parameter "popupDirection"
    .parameter "editable"
    .parameter "parentList"
    .parameter "idInParent"
    .parameter "storeId"
    .parameter "isMusic"
    .parameter "hasRemote"
    .parameter "hasLocal"
    .parameter "storeService"
    .parameter "networkMonitor"

    .prologue
    .line 274
    new-instance v6, Lcom/google/android/music/medialist/SingleSongList;

    move-wide v0, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 275
    .local v6, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    sget-object v5, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->SONG:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const/4 v7, 0x1

    move-object v4, p0

    move-wide v8, p1

    move-object/from16 v10, p18

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/store/IStoreService;)V

    .line 277
    .local v3, callback:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
    move-wide/from16 v0, p4

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J
    invoke-static {v3, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 278
    move-object/from16 v0, p6

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-object/from16 v0, p14

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$202(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    if-eqz p11, :cond_e6

    move-object/from16 v0, p11

    instance-of v4, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v4, :cond_e6

    move-object/from16 v4, p11

    .line 281
    check-cast v4, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v4

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$302(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 282
    move-wide/from16 v0, p12

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J
    invoke-static {v3, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$402(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    .line 287
    :goto_3b
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    move/from16 v2, p9

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager;->createMusicMenu(Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;[II)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v9

    .line 290
    .local v9, contextMenu:Lcom/google/android/music/menu/MusicMenu;
    const/4 v10, 0x0

    .line 291
    .local v10, order:I
    const/4 v4, 0x6

    add-int/lit8 v13, v10, 0x1

    .end local v10           #order:I
    .local v13, order:I
    const v5, 0x7f0d0070

    invoke-virtual {v9, v4, v10, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 292
    if-eqz p16, :cond_f3

    .line 293
    add-int/lit8 v10, v13, 0x1

    .end local v13           #order:I
    .restart local v10       #order:I
    move-object/from16 v0, p19

    invoke-direct {p0, v0, v9, v13}, Lcom/google/android/music/utils/ContextMenuManager;->addInstantMixMenuItem(Lcom/google/android/music/dl/INetworkMonitor;Lcom/google/android/music/menu/MusicMenu;I)V

    .line 295
    :goto_58
    const/4 v4, 0x1

    add-int/lit8 v13, v10, 0x1

    .end local v10           #order:I
    .restart local v13       #order:I
    const v5, 0x7f0d0071

    invoke-virtual {v9, v4, v10, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 296
    if-eqz p10, :cond_f1

    #getter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$300(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_f1

    .line 297
    const/16 v4, 0x12d

    add-int/lit8 v10, v13, 0x1

    .end local v13           #order:I
    .restart local v10       #order:I
    const v5, 0x7f0d0089

    invoke-virtual {v9, v4, v13, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 302
    :goto_77
    if-eqz p18, :cond_86

    .line 303
    iget-object v8, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    add-int/lit8 v13, v10, 0x1

    .end local v10           #order:I
    .restart local v13       #order:I
    move-object v7, p0

    move/from16 v11, p17

    move-object/from16 v12, p19

    invoke-direct/range {v7 .. v12}, Lcom/google/android/music/utils/ContextMenuManager;->addRingtoneMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;IZLcom/google/android/music/dl/INetworkMonitor;)V

    move v10, v13

    .line 306
    .end local v13           #order:I
    .restart local v10       #order:I
    :cond_86
    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v4

    if-nez v4, :cond_bb

    .line 307
    if-eqz p11, :cond_ef

    const-wide/16 v4, -0x1

    cmp-long v4, p12, v4

    if-eqz v4, :cond_ef

    move-object/from16 v0, p11

    instance-of v4, v0, Lcom/google/android/music/medialist/ArtistSongList;

    if-nez v4, :cond_ef

    .line 308
    const/16 v4, 0x12e

    add-int/lit8 v13, v10, 0x1

    .end local v10           #order:I
    .restart local v13       #order:I
    const v5, 0x7f0d00d0

    invoke-virtual {v9, v4, v10, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 312
    :goto_a6
    if-eqz p15, :cond_b1

    invoke-static/range {p3 .. p3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 313
    invoke-static {v9}, Lcom/google/android/music/utils/ContextMenuManager;->addSearchMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 316
    :cond_b1
    const/16 v4, 0x258

    add-int/lit8 v10, v13, 0x1

    .end local v13           #order:I
    .restart local v10       #order:I
    const v5, 0x7f0d0017

    invoke-virtual {v9, v4, v13, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    :cond_bb
    move v13, v10

    .line 318
    .end local v10           #order:I
    .restart local v13       #order:I
    if-eqz p14, :cond_d1

    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/music/GPlusShareActivity;->isSharingSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 319
    const/16 v4, 0x1d

    add-int/lit8 v10, v13, 0x1

    .end local v13           #order:I
    .restart local v10       #order:I
    const v5, 0x7f0d0111

    invoke-virtual {v9, v4, v13, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move v13, v10

    .line 321
    .end local v10           #order:I
    .restart local v13       #order:I
    :cond_d1
    if-nez p16, :cond_ed

    .line 322
    const/16 v4, 0x1c

    add-int/lit8 v10, v13, 0x1

    .end local v13           #order:I
    .restart local v10       #order:I
    const v5, 0x7f0d010d

    invoke-virtual {v9, v4, v13, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 325
    :goto_dd
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v9}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 328
    return-void

    .line 284
    .end local v9           #contextMenu:Lcom/google/android/music/menu/MusicMenu;
    .end local v10           #order:I
    :cond_e6
    const-wide/16 v4, -0x1

    #setter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$302(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J

    goto/16 :goto_3b

    .restart local v9       #contextMenu:Lcom/google/android/music/menu/MusicMenu;
    .restart local v13       #order:I
    :cond_ed
    move v10, v13

    .end local v13           #order:I
    .restart local v10       #order:I
    goto :goto_dd

    :cond_ef
    move v13, v10

    .end local v10           #order:I
    .restart local v13       #order:I
    goto :goto_a6

    :cond_f1
    move v10, v13

    .end local v13           #order:I
    .restart local v10       #order:I
    goto :goto_77

    .end local v10           #order:I
    .restart local v13       #order:I
    :cond_f3
    move v10, v13

    .end local v13           #order:I
    .restart local v10       #order:I
    goto/16 :goto_58
.end method
