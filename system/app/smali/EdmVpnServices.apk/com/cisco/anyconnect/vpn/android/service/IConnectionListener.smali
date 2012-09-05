.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
.super Ljava/lang/Object;
.source "IConnectionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
