.class public abstract Landroid/support/place/connector/IBrokerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/IBrokerService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.connector.IBrokerService"

.field static final TRANSACTION_addPreferredPlace:I = 0xd

.field static final TRANSACTION_cancelRequests:I = 0x8

.field static final TRANSACTION_doSyncNow:I = 0x16

.field static final TRANSACTION_getCertificate:I = 0x10

.field static final TRANSACTION_getLastSyncTimestamp:I = 0x15

.field static final TRANSACTION_getPreferredPlaces:I = 0xb

.field static final TRANSACTION_getUserData:I = 0x13

.field static final TRANSACTION_hasPermission:I = 0xf

.field static final TRANSACTION_joinPlace:I = 0xe

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_registerConnector:I = 0x3

.field static final TRANSACTION_registerEndpoint:I = 0x1

.field static final TRANSACTION_removePreferredPlace:I = 0xc

.field static final TRANSACTION_saveUserData:I = 0x12

.field static final TRANSACTION_sendRequest:I = 0x7

.field static final TRANSACTION_setDefaultAccount:I = 0x14

.field static final TRANSACTION_startListeningForPlaces:I = 0x9

.field static final TRANSACTION_stopListeningForPlaces:I = 0xa

.field static final TRANSACTION_storeTrustedPeerCertificate:I = 0x11

.field static final TRANSACTION_unregisterCallback:I = 0x6

.field static final TRANSACTION_unregisterConnector:I = 0x4

.field static final TRANSACTION_unregisterEndpoint:I = 0x2


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
    .parameter

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
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IBrokerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IBrokerService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IBrokerService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/place/connector/IBrokerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_268

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    .line 42
    :sswitch_b
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 47
    :sswitch_11
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 52
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 57
    :cond_2c
    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/IBrokerService$Stub;->registerEndpoint(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/rpc/EndpointInfo;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 63
    :sswitch_33
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterEndpoint(Landroid/support/place/rpc/IEndpointStub;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 72
    :sswitch_47
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 77
    sget-object v0, Landroid/support/place/connector/ConnectorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 82
    :cond_62
    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/IBrokerService$Stub;->registerConnector(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/connector/ConnectorInfo;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 88
    :sswitch_69
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterConnector(Landroid/support/place/rpc/IEndpointStub;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 97
    :sswitch_7d
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->registerCallback(Landroid/support/place/connector/IBrokerConnection;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 108
    :sswitch_96
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->unregisterCallback(Landroid/support/place/connector/IBrokerConnection;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 117
    :sswitch_ab
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e4

    .line 122
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    move-object v2, v0

    .line 128
    :goto_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/rpc/IRpcCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IRpcCallback;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v5

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/IBrokerService$Stub;->sendRequest(Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;[BLandroid/support/place/rpc/IRpcCallback;Landroid/support/place/connector/IBrokerConnection;I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_e4
    move-object v2, v0

    .line 125
    goto :goto_c3

    .line 141
    :sswitch_e6
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->cancelRequests(Landroid/support/place/connector/IBrokerConnection;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 150
    :sswitch_fb
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v0

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/connector/IPlaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IPlaceListener;

    move-result-object v1

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->startListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 162
    :sswitch_11c
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/connector/IPlaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IPlaceListener;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->stopListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 173
    :sswitch_139
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getPreferredPlaces()Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    .line 181
    :sswitch_14a
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->removePreferredPlace(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 190
    :sswitch_15b
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16e

    .line 193
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 198
    :cond_16e
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->addPreferredPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 204
    :sswitch_176
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->joinPlace(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 213
    :sswitch_187
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/support/place/connector/IBrokerService$Stub;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v0, :cond_1ab

    move v0, v7

    :goto_1a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_1ab
    move v0, v1

    goto :goto_1a6

    .line 229
    :sswitch_1ad
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getCertificate()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 237
    :sswitch_1be
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->storeTrustedPeerCertificate(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 248
    :sswitch_1d3
    const-string v1, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_200

    .line 259
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    move-object v5, v0

    :goto_1f7
    move-object v0, p0

    .line 264
    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/IBrokerService$Stub;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_200
    move-object v5, v0

    .line 262
    goto :goto_1f7

    .line 270
    :sswitch_202
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/support/place/connector/IBrokerService$Stub;->getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v0, :cond_228

    .line 282
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v0, p3, v7}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 286
    :cond_228
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 292
    :sswitch_22d
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerService$Stub;->setDefaultAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 303
    :sswitch_242
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerService$Stub;->getLastSyncTimestamp()J

    move-result-wide v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_a

    .line 311
    :sswitch_253
    const-string v0, "android.support.place.connector.IBrokerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerService$Stub;->doSyncNow(Ljava/lang/String;)J

    move-result-wide v0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_a

    .line 38
    :sswitch_data_268
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_33
        0x3 -> :sswitch_47
        0x4 -> :sswitch_69
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_96
        0x7 -> :sswitch_ab
        0x8 -> :sswitch_e6
        0x9 -> :sswitch_fb
        0xa -> :sswitch_11c
        0xb -> :sswitch_139
        0xc -> :sswitch_14a
        0xd -> :sswitch_15b
        0xe -> :sswitch_176
        0xf -> :sswitch_187
        0x10 -> :sswitch_1ad
        0x11 -> :sswitch_1be
        0x12 -> :sswitch_1d3
        0x13 -> :sswitch_202
        0x14 -> :sswitch_22d
        0x15 -> :sswitch_242
        0x16 -> :sswitch_253
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
