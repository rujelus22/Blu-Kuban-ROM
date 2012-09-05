.class public interface abstract Lcom/vlingo/client/core/tts/ITTSListener;
.super Ljava/lang/Object;
.source "ITTSListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/ITTSListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
