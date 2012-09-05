.class final Lcom/google/android/music/MusicUtils$1;
.super Landroid/database/ContentObserver;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicUtils;->openPlaylistCursor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 528
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v1

    monitor-enter v1

    .line 529
    :try_start_5
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->requery()Z

    .line 530
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->moveToFirst()Z

    .line 531
    monitor-exit v1

    .line 532
    return-void

    .line 531
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method
