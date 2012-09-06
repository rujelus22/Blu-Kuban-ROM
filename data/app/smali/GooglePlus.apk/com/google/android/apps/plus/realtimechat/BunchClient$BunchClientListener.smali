.class public interface abstract Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
.super Ljava/lang/Object;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BunchClientListener"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
.end method

.method public abstract onDisconnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;I)V
.end method

.method public abstract onPingReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
.end method

.method public abstract onResultsReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/realtimechat/BunchClient;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            ">;)V"
        }
    .end annotation
.end method
