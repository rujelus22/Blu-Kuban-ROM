.class public abstract Landroid/support/place/connector/IBrokerConnection$Stub;
.super Landroid/os/Binder;
.source "IBrokerConnection.java"

# interfaces
.implements Landroid/support/place/connector/IBrokerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/IBrokerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/IBrokerConnection$Stub$Proxy;
    }
.end annotation


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
    const-string v1, "android.support.place.connector.IBrokerConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/connector/IBrokerConnection;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/connector/IBrokerConnection;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/connector/IBrokerConnection$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_68

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/place/connector/IBrokerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/support/place/connector/IBrokerService;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    .line 52
    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/rpc/EndpointInfo;

    .line 57
    .local v1, _arg1:Landroid/support/place/rpc/EndpointInfo;
    :goto_2a
    invoke-virtual {p0, v0, v1}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 55
    .end local v1           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/support/place/rpc/EndpointInfo;
    goto :goto_2a

    .line 63
    .end local v0           #_arg0:Landroid/support/place/connector/IBrokerService;
    .end local v1           #_arg1:Landroid/support/place/rpc/EndpointInfo;
    :sswitch_33
    const-string v3, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d

    .line 66
    sget-object v3, Landroid/support/place/connector/PlaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/PlaceInfo;

    .line 71
    .local v0, _arg0:Landroid/support/place/connector/PlaceInfo;
    :goto_46
    invoke-virtual {p0, v0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 69
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/support/place/connector/PlaceInfo;
    goto :goto_46

    .line 77
    .end local v0           #_arg0:Landroid/support/place/connector/PlaceInfo;
    :sswitch_4f
    const-string v3, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendPlaceDisconnected()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 84
    :sswitch_5b
    const-string v3, "android.support.place.connector.IBrokerConnection"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/place/connector/IBrokerConnection$Stub;->sendBrokerDisconnected()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_33
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
