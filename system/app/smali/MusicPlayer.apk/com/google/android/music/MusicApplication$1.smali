.class Lcom/google/android/music/MusicApplication$1;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicApplication;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 97
    :try_start_0
    instance-of v2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_b

    .line 98
    move-object v0, p2

    check-cast v0, Ljava/lang/OutOfMemoryError;

    move-object v1, v0

    .line 99
    .local v1, oom:Ljava/lang/OutOfMemoryError;
    invoke-static {v1}, Lcom/google/android/music/utils/AlbumArtUtils;->report(Ljava/lang/OutOfMemoryError;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_13

    .line 103
    .end local v1           #oom:Ljava/lang/OutOfMemoryError;
    :cond_b
    iget-object v2, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v2, v2, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 105
    :goto_12
    return-void

    .line 101
    :catch_13
    move-exception v2

    .line 103
    iget-object v2, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v2, v2, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_12

    :catchall_1c
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v3, v3, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v2
.end method
