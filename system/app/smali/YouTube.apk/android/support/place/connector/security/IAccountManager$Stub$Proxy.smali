.class Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/security/IAccountManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 148
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/security/AccountWithRoles;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 163
    :try_start_8
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    if-eqz p2, :cond_39

    .line 166
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_1a
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    .line 175
    sget-object v0, Landroid/support/place/connector/security/AccountWithRoles;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/security/AccountWithRoles;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3e

    .line 182
    :goto_32
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-object v0

    .line 170
    :cond_39
    const/4 v0, 0x0

    :try_start_3a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_1a

    .line 182
    :catchall_3e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 178
    :cond_46
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public configure(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/RpcData;
    .registers 7
    .parameter

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 214
    :try_start_8
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    if-eqz p1, :cond_36

    .line 216
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    :goto_17
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 225
    sget-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 232
    :goto_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-object v0

    .line 220
    :cond_36
    const/4 v0, 0x0

    :try_start_37
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 232
    :catchall_3b
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 228
    :cond_43
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const-string v0, "android.support.place.connector.security.IAccountManager"

    return-object v0
.end method

.method public onGuestModeChanged(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 280
    :try_start_9
    const-string v3, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 283
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    .line 286
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    return-void

    .line 286
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public revoke(Landroid/support/place/connector/security/Account;)V
    .registers 7
    .parameter

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 192
    :try_start_8
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    if-eqz p1, :cond_28

    .line 194
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_17
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 201
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    .line 204
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    return-void

    .line 198
    :cond_28
    const/4 v0, 0x0

    :try_start_29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 204
    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setSecurityService(Landroid/support/place/connector/security/ISecurityService;)V
    .registers 7
    .parameter

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 242
    :try_start_8
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/support/place/connector/security/ISecurityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    .line 243
    :cond_27
    const/4 v0, 0x0

    goto :goto_13

    .line 248
    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 257
    :try_start_8
    const-string v0, "android.support.place.connector.security.IAccountManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    if-eqz p1, :cond_2e

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 266
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Landroid/support/place/connector/security/IAccountManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 268
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_33

    .line 271
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 263
    :cond_2e
    const/4 v0, 0x0

    :try_start_2f
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_17

    .line 271
    :catchall_33
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
