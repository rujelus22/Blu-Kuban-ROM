.class public interface abstract Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;
.super Ljava/lang/Object;
.source "PlaybackClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PlaybackClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPlaybackClockDidFinish(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
.end method

.method public abstract onPlaybackClockDidPause(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
.end method

.method public abstract onPlaybackClockDidResume(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
.end method

.method public abstract onPlaybackClockPositionDidSeek(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V
.end method
