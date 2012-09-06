.class public interface abstract Landroid/support/place/connector/BrokerConnection$Listener;
.super Ljava/lang/Object;
.source "BrokerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/BrokerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBrokerConnected(Landroid/support/place/connector/Broker;)V
.end method

.method public abstract onBrokerDisconnected()V
.end method

.method public abstract onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V
.end method

.method public abstract onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
.end method

.method public abstract onPlaceDisconnected()V
.end method

.method public abstract onPlaceNameChanged(Ljava/lang/String;)V
.end method
