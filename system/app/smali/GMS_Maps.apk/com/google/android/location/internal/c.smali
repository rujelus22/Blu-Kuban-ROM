.class Lcom/google/android/location/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/internal/INetworkLocationInternal;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/location/internal/ILocationListener;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 128
    :try_start_8
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    if-eqz p2, :cond_2d

    invoke-interface {p2}, Lcom/google/android/location/internal/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 130
    :cond_2d
    const/4 v0, 0x0

    goto :goto_16

    .line 136
    :catchall_2f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lcom/google/android/location/internal/ILocationListener;)V
    .registers 7
    .parameter

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 146
    :try_start_8
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/google/android/location/internal/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-void

    .line 147
    :cond_27
    const/4 v0, 0x0

    goto :goto_13

    .line 152
    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 202
    :try_start_9
    const-string v3, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 205
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    .line 208
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    return-void

    .line 208
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Landroid/location/Location;)[B
    .registers 7
    .parameter

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    :try_start_8
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_2c

    .line 169
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    :goto_17
    iget-object v0, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 177
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    move-result-object v0

    .line 180
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-object v0

    .line 173
    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 180
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/internal/c;->a:Landroid/os/IBinder;

    return-object v0
.end method
