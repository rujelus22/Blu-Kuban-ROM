.class public interface abstract Landroid/support/place/rpc/IRpcCallback;
.super Ljava/lang/Object;
.source "IRpcCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/rpc/IRpcCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(Landroid/support/place/rpc/RpcError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
