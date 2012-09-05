.class public interface abstract Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarTTSCachedRequestsListener"
.end annotation


# virtual methods
.method public abstract onCachingCancelled()V
.end method

.method public abstract onCachingFinished(ZLjava/lang/String;)V
.end method

.method public abstract onCachingStarted()V
.end method

.method public abstract onCachingUpdated(F)V
.end method
