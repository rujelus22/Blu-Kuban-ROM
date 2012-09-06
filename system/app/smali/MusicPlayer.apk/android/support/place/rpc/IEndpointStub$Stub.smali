.class public abstract Landroid/support/place/rpc/IEndpointStub$Stub;
.super Landroid/os/Binder;
.source "IEndpointStub.java"

# interfaces
.implements Landroid/support/place/rpc/IEndpointStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/rpc/IEndpointStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;
    }
.end annotation


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
    const-string v1, "android.support.place.rpc.IEndpointStub"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/place/rpc/IEndpointStub;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/support/place/rpc/IEndpointStub;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
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
    .registers 13
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_7c

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 42
    :sswitch_a
    const-string v6, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v6, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 53
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 54
    sget-object v6, Landroid/support/place/rpc/RpcContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/rpc/RpcContext;

    .line 60
    .local v2, _arg2:Landroid/support/place/rpc/RpcContext;
    :goto_2b
    new-instance v3, Landroid/support/place/rpc/RpcError;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 61
    .local v3, _arg3:Landroid/support/place/rpc/RpcError;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/place/rpc/IEndpointStub$Stub;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v4

    .line 62
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    if-eqz v3, :cond_45

    .line 65
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v3, p3, v5}, Landroid/support/place/rpc/RpcError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 57
    .end local v2           #_arg2:Landroid/support/place/rpc/RpcContext;
    .end local v3           #_arg3:Landroid/support/place/rpc/RpcError;
    .end local v4           #_result:[B
    :cond_43
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/support/place/rpc/RpcContext;
    goto :goto_2b

    .line 69
    .restart local v3       #_arg3:Landroid/support/place/rpc/RpcError;
    .restart local v4       #_result:[B
    :cond_45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:Landroid/support/place/rpc/RpcContext;
    .end local v3           #_arg3:Landroid/support/place/rpc/RpcError;
    .end local v4           #_result:[B
    :sswitch_49
    const-string v6, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 81
    .restart local v1       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    .line 82
    sget-object v6, Landroid/support/place/rpc/RpcContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/rpc/RpcContext;

    .line 88
    .restart local v2       #_arg2:Landroid/support/place/rpc/RpcContext;
    :goto_64
    new-instance v3, Landroid/support/place/rpc/RpcError;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 89
    .restart local v3       #_arg3:Landroid/support/place/rpc/RpcError;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/place/rpc/IEndpointStub$Stub;->processOneway(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V

    .line 90
    if-eqz v3, :cond_77

    .line 91
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v3, p3, v5}, Landroid/support/place/rpc/RpcError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 85
    .end local v2           #_arg2:Landroid/support/place/rpc/RpcContext;
    .end local v3           #_arg3:Landroid/support/place/rpc/RpcError;
    :cond_75
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/support/place/rpc/RpcContext;
    goto :goto_64

    .line 95
    .restart local v3       #_arg3:Landroid/support/place/rpc/RpcError;
    :cond_77
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_49
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
