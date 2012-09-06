.class Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/security/ISecurityService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 184
    return-void
.end method


# virtual methods
.method public addCertificate(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 198
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_2b

    .line 200
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 204
    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_17

    .line 211
    :catchall_30
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 220
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    if-eqz p1, :cond_2b

    .line 222
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

    .line 233
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 226
    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_17

    .line 233
    :catchall_30
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addTrustedPeerCert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 366
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 370
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 373
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    return-void

    .line 373
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAccounts(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 243
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 246
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 247
    sget-object v0, Landroid/support/place/connector/security/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result-object v0

    .line 250
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-object v0

    .line 250
    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCertificates(Landroid/support/place/connector/security/Account;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 261
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    if-eqz p1, :cond_2c

    .line 263
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_17
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 271
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    move-result-object v0

    .line 274
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-object v0

    .line 267
    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 274
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    const-string v0, "android.support.place.connector.security.ISecurityService"

    return-object v0
.end method

.method public getRoles(Landroid/support/place/connector/security/Account;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 285
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_2c

    .line 287
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_17
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 294
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 295
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    move-result-object v0

    .line 298
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    return-object v0

    .line 291
    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 298
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isGuestModeEnabled()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 383
    :try_start_9
    const-string v3, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 385
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 386
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v0, 0x1

    .line 389
    :cond_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    return v0

    .line 389
    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public revokeAccount(Landroid/support/place/connector/security/Account;)V
    .registers 7
    .parameter

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 308
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_28

    .line 310
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    :goto_17
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 317
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    .line 320
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    return-void

    .line 314
    :cond_28
    const/4 v0, 0x0

    :try_start_29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 320
    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public revokeCertificate(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 329
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 332
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 335
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 335
    :catchall_21
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public revokeRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 344
    :try_start_8
    const-string v0, "android.support.place.connector.security.ISecurityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    if-eqz p1, :cond_2c

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/place/connector/security/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 352
    :goto_17
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Landroid/support/place/connector/security/ISecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 354
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 357
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    return-void

    .line 350
    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 357
    :catchall_31
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
