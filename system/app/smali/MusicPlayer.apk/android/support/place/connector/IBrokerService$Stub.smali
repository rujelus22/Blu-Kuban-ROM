.class public abstract Landroid/support/place/connector/IBrokerService$Stub;
.super Landroid/os/Binder;
.source "IBrokerService.java"

# interfaces
.implements Landroid/support/place/connector/IBrokerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/IBrokerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/IBrokerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IBrokerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IBrokerService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IBrokerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/place/connector/IBrokerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_282

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 51
    .local v1, _arg0:Landroid/support/place/rpc/IEndpointStub;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 52
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/rpc/EndpointInfo;

    .line 57
    .local v2, _arg1:Landroid/support/place/rpc/EndpointInfo;
    :goto_2a
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->registerEndpoint(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/rpc/EndpointInfo;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 55
    .end local v2           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    :cond_32
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/support/place/rpc/EndpointInfo;
    goto :goto_2a

    .line 63
    .end local v1           #_arg0:Landroid/support/place/rpc/IEndpointStub;
    .end local v2           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    :sswitch_34
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Landroid/support/place/rpc/IEndpointStub;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterEndpoint(Landroid/support/place/rpc/IEndpointStub;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v0, 0x1

    goto :goto_7

    .line 72
    .end local v1           #_arg0:Landroid/support/place/rpc/IEndpointStub;
    :sswitch_49
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 76
    .restart local v1       #_arg0:Landroid/support/place/rpc/IEndpointStub;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    .line 77
    sget-object v0, Landroid/support/place/connector/ConnectorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/connector/ConnectorInfo;

    .line 82
    .local v2, _arg1:Landroid/support/place/connector/ConnectorInfo;
    :goto_64
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->registerConnector(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/connector/ConnectorInfo;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_7

    .line 80
    .end local v2           #_arg1:Landroid/support/place/connector/ConnectorInfo;
    :cond_6c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/support/place/connector/ConnectorInfo;
    goto :goto_64

    .line 88
    .end local v1           #_arg0:Landroid/support/place/rpc/IEndpointStub;
    .end local v2           #_arg1:Landroid/support/place/connector/ConnectorInfo;
    :sswitch_6e
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 91
    .restart local v1       #_arg0:Landroid/support/place/rpc/IEndpointStub;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterConnector(Landroid/support/place/rpc/IEndpointStub;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 97
    .end local v1           #_arg0:Landroid/support/place/rpc/IEndpointStub;
    :sswitch_83
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v1

    .line 101
    .local v1, _arg0:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->registerCallback(Landroid/support/place/connector/IBrokerConnection;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 108
    .end local v1           #_arg0:Landroid/support/place/connector/IBrokerConnection;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_9d
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v1

    .line 111
    .restart local v1       #_arg0:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterCallback(Landroid/support/place/connector/IBrokerConnection;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 117
    .end local v1           #_arg0:Landroid/support/place/connector/IBrokerConnection;
    :sswitch_b3
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ec

    .line 122
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/rpc/EndpointInfo;

    .line 128
    .local v2, _arg1:Landroid/support/place/rpc/EndpointInfo;
    :goto_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 130
    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IRpcCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IRpcCallback;

    move-result-object v4

    .line 132
    .local v4, _arg3:Landroid/support/place/rpc/IRpcCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v5

    .line 134
    .local v5, _arg4:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/IBrokerService$Stub;->sendRequest(Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;[BLandroid/support/place/rpc/IRpcCallback;Landroid/support/place/connector/IBrokerConnection;I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 125
    .end local v2           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:Landroid/support/place/rpc/IRpcCallback;
    .end local v5           #_arg4:Landroid/support/place/connector/IBrokerConnection;
    .end local v6           #_arg5:I
    :cond_ec
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/support/place/rpc/EndpointInfo;
    goto :goto_ca

    .line 141
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    :sswitch_ee
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v1

    .line 144
    .local v1, _arg0:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->cancelRequests(Landroid/support/place/connector/IBrokerConnection;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 150
    .end local v1           #_arg0:Landroid/support/place/connector/IBrokerConnection;
    :sswitch_104
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v1

    .line 154
    .restart local v1       #_arg0:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IPlaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IPlaceListener;

    move-result-object v2

    .line 155
    .local v2, _arg1:Landroid/support/place/connector/IPlaceListener;
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->startListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)Ljava/util/List;

    move-result-object v9

    .line 156
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/PlaceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 162
    .end local v1           #_arg0:Landroid/support/place/connector/IBrokerConnection;
    .end local v2           #_arg1:Landroid/support/place/connector/IPlaceListener;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/PlaceInfo;>;"
    :sswitch_126
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v1

    .line 166
    .restart local v1       #_arg0:Landroid/support/place/connector/IBrokerConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IPlaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IPlaceListener;

    move-result-object v2

    .line 167
    .restart local v2       #_arg1:Landroid/support/place/connector/IPlaceListener;
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->stopListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 173
    .end local v1           #_arg0:Landroid/support/place/connector/IBrokerConnection;
    .end local v2           #_arg1:Landroid/support/place/connector/IPlaceListener;
    :sswitch_144
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getPreferredPlaces()Ljava/util/List;

    move-result-object v9

    .line 175
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/PlaceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 181
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/PlaceInfo;>;"
    :sswitch_156
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->removePreferredPlace(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 190
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_168
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_184

    .line 193
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/connector/PlaceInfo;

    .line 198
    .local v1, _arg0:Landroid/support/place/connector/PlaceInfo;
    :goto_17b
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->addPreferredPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 196
    .end local v1           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :cond_184
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/support/place/connector/PlaceInfo;
    goto :goto_17b

    .line 204
    .end local v1           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :sswitch_186
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->joinPlace(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 213
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_198
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/place/connector/IBrokerService$Stub;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 223
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v7, :cond_1bd

    const/4 v0, 0x1

    :goto_1b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 224
    :cond_1bd
    const/4 v0, 0x0

    goto :goto_1b7

    .line 229
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1bf
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getCertificate()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 237
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_1d1
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->storeTrustedPeerCertificate(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 248
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_1e7
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_214

    .line 259
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/place/rpc/RpcData;

    .local v5, _arg4:Landroid/support/place/rpc/RpcData;
    :goto_20a
    move-object v0, p0

    .line 264
    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/IBrokerService$Stub;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 262
    .end local v5           #_arg4:Landroid/support/place/rpc/RpcData;
    :cond_214
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/support/place/rpc/RpcData;
    goto :goto_20a

    .line 270
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Landroid/support/place/rpc/RpcData;
    :sswitch_216
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/place/connector/IBrokerService$Stub;->getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v7

    .line 280
    .local v7, _result:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v7, :cond_23f

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    :goto_23c
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 286
    :cond_23f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23c

    .line 292
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:Landroid/support/place/rpc/RpcData;
    :sswitch_244
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/support/place/connector/IBrokerService$Stub;->setDefaultAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 303
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_25a
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getLastSyncTimestamp()J

    move-result-wide v7

    .line 305
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 311
    .end local v7           #_result:J
    :sswitch_26c
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->doSyncNow(Ljava/lang/String;)J

    move-result-wide v7

    .line 315
    .restart local v7       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_282
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_34
        0x3 -> :sswitch_49
        0x4 -> :sswitch_6e
        0x5 -> :sswitch_83
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b3
        0x8 -> :sswitch_ee
        0x9 -> :sswitch_104
        0xa -> :sswitch_126
        0xb -> :sswitch_144
        0xc -> :sswitch_156
        0xd -> :sswitch_168
        0xe -> :sswitch_186
        0xf -> :sswitch_198
        0x10 -> :sswitch_1bf
        0x11 -> :sswitch_1d1
        0x12 -> :sswitch_1e7
        0x13 -> :sswitch_216
        0x14 -> :sswitch_244
        0x15 -> :sswitch_25a
        0x16 -> :sswitch_26c
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
