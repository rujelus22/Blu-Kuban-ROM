.class public interface abstract Lcom/google/android/youtube/core/client/AdsClient;
.super Ljava/lang/Object;
.source "AdsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/client/AdsClient$Provider;
    }
.end annotation


# virtual methods
.method public abstract requestAdTag(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestVastAd(Landroid/net/Uri;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;)V"
        }
    .end annotation
.end method
