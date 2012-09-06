.class public interface abstract Landroid/support/place/connector/IBrokerConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
.end method

.method public abstract sendBrokerDisconnected()V
.end method

.method public abstract sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
.end method

.method public abstract sendPlaceDisconnected()V
.end method
