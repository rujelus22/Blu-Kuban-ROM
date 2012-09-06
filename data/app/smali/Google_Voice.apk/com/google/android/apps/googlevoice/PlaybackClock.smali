.class public interface abstract Lcom/google/android/apps/googlevoice/PlaybackClock;
.super Ljava/lang/Object;
.source "PlaybackClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;,
        Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V
.end method

.method public abstract addStepListener(Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;)V
.end method

.method public abstract getLength()J
.end method

.method public abstract getPosition()J
.end method

.method public abstract isPaused()Z
.end method

.method public abstract pause()V
.end method

.method public abstract removeListener(Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;)V
.end method

.method public abstract resume()V
.end method

.method public abstract seekPosition(J)V
.end method

.method public abstract setLength(J)V
.end method

.method public abstract start(J)V
.end method
