.class public interface abstract Landroid/support/place/connector/IBrokerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addPreferredPlace(Landroid/support/place/connector/PlaceInfo;)V
.end method

.method public abstract cancelRequests(Landroid/support/place/connector/IBrokerConnection;)V
.end method

.method public abstract doSyncNow(Ljava/lang/String;)J
.end method

.method public abstract getCertificate()Ljava/lang/String;
.end method

.method public abstract getLastSyncTimestamp()J
.end method

.method public abstract getPreferredPlaces()Ljava/util/List;
.end method

.method public abstract getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract joinPlace(Ljava/lang/String;)V
.end method

.method public abstract registerCallback(Landroid/support/place/connector/IBrokerConnection;Ljava/lang/String;)V
.end method

.method public abstract registerConnector(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/connector/ConnectorInfo;)V
.end method

.method public abstract registerEndpoint(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/rpc/EndpointInfo;)V
.end method

.method public abstract removePreferredPlace(Ljava/lang/String;)V
.end method

.method public abstract saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
.end method

.method public abstract sendRequest(Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;[BLandroid/support/place/rpc/IRpcCallback;Landroid/support/place/connector/IBrokerConnection;I)V
.end method

.method public abstract setDefaultAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)Ljava/util/List;
.end method

.method public abstract stopListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)V
.end method

.method public abstract storeTrustedPeerCertificate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterCallback(Landroid/support/place/connector/IBrokerConnection;)V
.end method

.method public abstract unregisterConnector(Landroid/support/place/rpc/IEndpointStub;)V
.end method

.method public abstract unregisterEndpoint(Landroid/support/place/rpc/IEndpointStub;)V
.end method
