.class Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;
.super Ljava/lang/Object;
.source "VideoUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 1356
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1359
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 1360
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_10

    .line 1361
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1362
    :cond_10
    monitor-exit p0

    return-void

    .line 1359
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 1365
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_a

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1367
    :cond_a
    monitor-exit p0

    return-void

    .line 1365
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
