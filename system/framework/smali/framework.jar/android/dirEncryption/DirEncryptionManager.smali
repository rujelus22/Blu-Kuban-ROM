.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final BATCH_DECRYPT:I = 0xc

.field private static final DEBUG:Z = false

.field public static final DECRYPT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/data/system/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xb

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "android.app.action.START_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BATCH_DONE:Ljava/lang/String; = "batch_done"

.field public static final STATUS_BATCH_FAIL:Ljava/lang/String; = "batch_fail"

.field public static final STATUS_BATCH_NOFS:Ljava/lang/String; = "batch_no_fs"

.field public static final STATUS_BATCH_START:Ljava/lang/String; = "batch_start"

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "checking"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-string/jumbo v0, "ro.secdirenc"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    .line 47
    const v0, -0x35014542

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 98
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 100
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 102
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_1f

    .line 103
    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 105
    :cond_1f
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_2a

    .line 106
    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 107
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 109
    :cond_2a
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .registers 1

    .prologue
    .line 150
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 94
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "path"
    .parameter "password"

    .prologue
    .line 241
    const/16 v1, 0xc8

    .line 242
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 250
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 246
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 250
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 247
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 248
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getAdditionalSpaceRequired()I
    .registers 5

    .prologue
    .line 296
    const/16 v1, 0xc8

    .line 297
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 305
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 301
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 305
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 302
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 303
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getCurrentStatus()I
    .registers 5

    .prologue
    .line 259
    const/16 v1, 0xc8

    .line 260
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 269
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 264
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 269
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 265
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 266
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 8

    .prologue
    .line 157
    iget-object v5, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 158
    .local v1, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 159
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v5, v3

    if-ge v0, v5, :cond_32

    .line 160
    aget-object v2, v3, v0

    .line 161
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, subsystem:Ljava/lang/String;
    if-eqz v4, :cond_2f

    const-string/jumbo v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 163
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 166
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #subsystem:Ljava/lang/String;
    :goto_2e
    return-object v5

    .line 159
    .restart local v2       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v4       #subsystem:Ljava/lang/String;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 166
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #subsystem:Ljava/lang/String;
    :cond_32
    const/4 v5, 0x0

    goto :goto_2e
.end method

.method public getLastError()I
    .registers 5

    .prologue
    .line 278
    const/16 v1, 0xc8

    .line 279
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 287
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 283
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 287
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 284
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 285
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 4

    .prologue
    .line 314
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_6

    .line 315
    const/4 v0, 0x0

    .line 323
    :goto_5
    return-object v0

    .line 317
    :cond_6
    const/4 v0, 0x0

    .line 319
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_7
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v0

    goto :goto_5

    .line 320
    :catch_e
    move-exception v1

    .line 321
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, result:Z
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_8

    move v2, v1

    .line 208
    .end local v1           #result:Z
    .local v2, result:I
    :goto_7
    return v2

    .line 204
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_8
    :try_start_8
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_15

    move-result v4

    if-ne v4, v3, :cond_13

    move v1, v3

    :goto_11
    move v2, v1

    .line 208
    .restart local v2       #result:I
    goto :goto_7

    .line 204
    .end local v2           #result:I
    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    .line 205
    :catch_15
    move-exception v0

    .line 206
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 118
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_5

    .line 126
    :goto_4
    return-void

    .line 122
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 123
    :catch_b
    move-exception v0

    .line 124
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 220
    const/16 v1, 0xc8

    .line 221
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 229
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 225
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 229
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 226
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 227
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 8
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    .line 182
    const/16 v1, 0xc8

    .line 183
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 191
    .end local v1           #result:I
    .local v2, result:I
    :goto_7
    return v2

    .line 187
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 191
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_7

    .line 188
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_10
    move-exception v0

    .line 189
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 134
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_5

    .line 142
    :goto_4
    return-void

    .line 138
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_4
.end method
