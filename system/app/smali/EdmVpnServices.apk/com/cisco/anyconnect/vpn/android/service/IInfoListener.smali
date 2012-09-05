.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
.super Ljava/lang/Object;
.source "IInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
