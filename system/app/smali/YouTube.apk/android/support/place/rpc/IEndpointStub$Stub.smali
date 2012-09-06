.class public abstract Landroid/support/place/rpc/IEndpointStub$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/IEndpointStub;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.place.rpc.IEndpointStub"

.field static final TRANSACTION_process:I = 0x1

.field static final TRANSACTION_processOneway:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p0, p0, v0}, Landroid/support/place/rpc/IEndpointStub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/place/rpc/IEndpointStub;
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
    const-string v0, "android.support.place.rpc.IEndpointStub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/rpc/IEndpointStub;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/rpc/IEndpointStub;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_6e

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v2, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 54
    sget-object v0, Landroid/support/place/rpc/RpcContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcContext;

    .line 60
    :cond_2c
    new-instance v4, Landroid/support/place/rpc/RpcError;

    invoke-direct {v4}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 61
    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/support/place/rpc/IEndpointStub$Stub;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v4, p3, v1}, Landroid/support/place/rpc/RpcError;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v1

    .line 69
    goto :goto_9

    .line 75
    :sswitch_43
    const-string v2, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 82
    sget-object v0, Landroid/support/place/rpc/RpcContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcContext;

    .line 88
    :cond_5e
    new-instance v4, Landroid/support/place/rpc/RpcError;

    invoke-direct {v4}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 89
    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/support/place/rpc/IEndpointStub$Stub;->processOneway(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v4, p3, v1}, Landroid/support/place/rpc/RpcError;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v1

    .line 95
    goto :goto_9

    .line 38
    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_43
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
