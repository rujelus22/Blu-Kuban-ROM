.class public interface abstract Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;
.super Ljava/lang/Object;
.source "StreamingWarningHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onStreamingAccepted()V
.end method

.method public abstract onStreamingDeclined()V
.end method

.method public abstract onWifiConnected()V
.end method

.method public abstract onWifiDisconnected()V
.end method
