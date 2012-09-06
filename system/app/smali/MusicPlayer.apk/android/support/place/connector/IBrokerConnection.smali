.class public interface abstract Landroid/support/place/connector/IBrokerConnection;
.super Ljava/lang/Object;
.source "IBrokerConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/IBrokerConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendBrokerDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPlaceDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
