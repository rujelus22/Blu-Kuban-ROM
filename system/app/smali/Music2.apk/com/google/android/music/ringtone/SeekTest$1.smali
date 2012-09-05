.class final Lcom/google/android/music/ringtone/SeekTest$1;
.super Ljava/lang/Object;
.source "SeekTest.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/SeekTest;->CanSeekAccurately(Landroid/content/SharedPreferences;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    const-string v0, "Ringdroid"

    const-string v1, "Got callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/music/ringtone/SeekTest;->after:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
