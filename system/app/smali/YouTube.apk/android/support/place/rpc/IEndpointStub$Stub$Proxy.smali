.class Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/IEndpointStub;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "android.support.place.rpc.IEndpointStub"

    return-object v0
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 123
    :try_start_8
    const-string v0, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 126
    if-eqz p3, :cond_3b

    .line 127
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/place/rpc/RpcContext;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_1d
    iget-object v0, p0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 135
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 137
    invoke-virtual {p4, v2}, Landroid/support/place/rpc/RpcError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_40

    .line 141
    :cond_34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-object v0

    .line 131
    :cond_3b
    const/4 v0, 0x0

    :try_start_3c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_1d

    .line 141
    :catchall_40
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public processOneway(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    :try_start_4
    const-string v0, "android.support.place.rpc.IEndpointStub"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    if-eqz p3, :cond_25

    .line 154
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/place/rpc/RpcContext;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    :goto_19
    iget-object v0, p0, Landroid/support/place/rpc/IEndpointStub$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-void

    .line 158
    :cond_25
    const/4 v0, 0x0

    :try_start_26
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_19

    .line 163
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
