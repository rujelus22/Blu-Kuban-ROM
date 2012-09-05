.class Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;
.super Landroid/database/ContentObserver;
.source "MusicAlbumCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicContentObs"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 340
    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->access$0()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 341
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 360
    const-string v0, "Inside deliverSelfNotifications of MusicContentObs"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 345
    const-string v0, "This is inside onChange of Music Album ContentObs"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 348
    const-string v0, "Pausing the MusicalbumThread ...."

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 349
    sput-boolean v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 356
    :goto_18
    return-void

    .line 353
    :cond_19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 354
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->loadMusicAlbums(Landroid/content/Context;Z)V

    goto :goto_18
.end method
