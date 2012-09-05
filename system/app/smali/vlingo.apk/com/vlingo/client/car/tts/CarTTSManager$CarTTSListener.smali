.class public interface abstract Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;
.super Ljava/lang/Object;
.source "CarTTSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/tts/CarTTSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarTTSListener"
.end annotation


# virtual methods
.method public abstract onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method

.method public abstract onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method

.method public abstract onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method

.method public abstract onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method
