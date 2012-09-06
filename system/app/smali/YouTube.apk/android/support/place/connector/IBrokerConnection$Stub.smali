.class public abstract Landroid/support/place/connector/IBrokerConnection$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/IBrokerConnection;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.connector.IBrokerConnection"

.field static final TRANSACTION_sendBrokerConnected:I = 0x1

.field static final TRANSACTION_sendBrokerDisconnected:I = 0x4

.field static final TRANSACTION_sendPlaceConnected:I = 0x2

.field static final TRANSACTION_sendPlaceDisconnected:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerConnection;
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
    const-string v0, "android.support.place.connector.IBrokerConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IBrokerConnection;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IBrokerConnection;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IBrokerConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/place/connector/IBrokerConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_6a

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v2, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/place/connector/IBrokerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 52
    sget-object v0, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 57
    :cond_2c
    invoke-virtual {p0, v2, v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 59
    goto :goto_9

    .line 63
    :sswitch_34
    const-string v2, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    .line 66
    sget-object v0, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 71
    :cond_47
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 73
    goto :goto_9

    .line 77
    :sswitch_4f
    const-string v0, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendPlaceDisconnected()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 80
    goto :goto_9

    .line 84
    :sswitch_5c
    const-string v0, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendBrokerDisconnected()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 87
    goto :goto_9

    .line 38
    nop

    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_34
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_5c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
