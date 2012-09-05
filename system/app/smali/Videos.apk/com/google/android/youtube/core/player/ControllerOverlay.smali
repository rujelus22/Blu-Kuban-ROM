.class public interface abstract Lcom/google/android/youtube/core/player/ControllerOverlay;
.super Ljava/lang/Object;
.source "ControllerOverlay.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/ControllerOverlay$Style;,
        Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;
    }
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hide()V
.end method

.method public abstract resetTime()V
.end method

.method public abstract setFullscreen(Z)V
.end method

.method public abstract setHQ(Z)V
.end method

.method public abstract setHasNext(Z)V
.end method

.method public abstract setHasPrevious(Z)V
.end method

.method public abstract setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V
.end method

.method public abstract setShowFullscreen(Z)V
.end method

.method public abstract setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
.end method

.method public abstract setSupportsQualityToggle(Z)V
.end method

.method public abstract setTimes(III)V
.end method

.method public abstract showControls()V
.end method

.method public abstract showEnded()V
.end method

.method public abstract showErrorMessage(I)V
.end method

.method public abstract showErrorMessage(IZ)V
.end method

.method public abstract showErrorMessage(Ljava/lang/String;Z)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showPaused()V
.end method

.method public abstract showPlaying()V
.end method
