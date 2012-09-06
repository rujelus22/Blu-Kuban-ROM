.class public abstract Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
.super Ljava/lang/Object;
.source "BrokerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/api/broker/BrokerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 2
    .parameter "broker"

    .prologue
    .line 102
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public onConnectedToRegistry(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, allConnectorInfos:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/ConnectorInfo;>;"
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter "connector"

    .prologue
    .line 174
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter "connector"

    .prologue
    .line 181
    return-void
.end method

.method public onFailToConnect()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter "place"

    .prologue
    .line 143
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter "place"

    .prologue
    .line 119
    return-void
.end method

.method public onPlaceDisconnected()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method public onPlaceNameChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newName"

    .prologue
    .line 135
    return-void
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter "place"

    .prologue
    .line 151
    return-void
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter "place"

    .prologue
    .line 158
    return-void
.end method
