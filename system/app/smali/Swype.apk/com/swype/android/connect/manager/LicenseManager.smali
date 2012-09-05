.class public Lcom/swype/android/connect/manager/LicenseManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/LicenseManager$1;,
        Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "license"

.field public static LICENSE_FETCH:Ljava/lang/String; = null

.field public static LICENSE_RETRY:Ljava/lang/String; = null

.field public static final LICENSE_STATE_INVALID:I = 0x2

.field public static final LICENSE_STATE_UNKNOWN:I = 0x0

.field public static final LICENSE_STATE_VALID:I = 0x1

.field public static final LICENSE_STATUS_DISABLED:Ljava/lang/String; = "LOCKED"

.field public static REQUEST_LICENSE:Ljava/lang/String;


# instance fields
.field protected final FETCH_DELAY:I

.field protected final RETRY_DELAY:I

.field private isGettingLicense:Z

.field protected lastFetch:J

.field private licenseCheckThreshold:J

.field private licenseExpiration:J

.field private licenseFile:Ljava/io/File;

.field private licenseFileChecksum:Ljava/lang/String;

.field private licenseStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "REQUEST_LICENSE"

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager;->REQUEST_LICENSE:Ljava/lang/String;

    .line 24
    const-string v0, "LICENSE_RETRY"

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager;->LICENSE_RETRY:Ljava/lang/String;

    .line 25
    const-string v0, "LICENSE_FETCH"

    sput-object v0, Lcom/swype/android/connect/manager/LicenseManager;->LICENSE_FETCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 6
    .parameter "ctx"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 77
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->FETCH_DELAY:I

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->RETRY_DELAY:I

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 32
    iput-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    .line 33
    iput-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->version:I

    .line 79
    const-string v0, "license"

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->commandFamily:Ljava/lang/String;

    .line 80
    const v0, 0x293d795

    iput v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->alarmUniqueId:I

    .line 81
    return-void
.end method

.method private createCommand(Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;)Lcom/swype/android/connect/util/Command;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$1;->$SwitchMap$com$swype$android$connect$manager$LicenseManager$ValidCommands:[I

    invoke-virtual {p1}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 388
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 390
    :goto_17
    return-object v0

    .line 372
    :pswitch_18
    const-string v1, "licenseExpiration"

    iget-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 374
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    goto :goto_17

    .line 377
    :pswitch_30
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 378
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 379
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    goto :goto_17

    .line 382
    :pswitch_41
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 384
    iput-boolean v4, v0, Lcom/swype/android/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 385
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/swype/android/connect/util/Command;->transactionId:Ljava/lang/String;

    goto :goto_17

    .line 370
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_30
        :pswitch_41
    .end packed-switch
.end method

.method private isLicenseExpirationThresholdReached()Z
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    const-wide/high16 v3, -0x8000

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, licenseNeedsUpdating:Z
    iget-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_11

    iget-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_13

    .line 402
    :cond_11
    const/4 v0, 0x1

    .line 408
    :cond_12
    :goto_12
    return v0

    .line 403
    :cond_13
    iget-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    iget-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 404
    invoke-static {}, Lcom/swype/android/connect/manager/LicenseManager;->getCurrentTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    iget-wide v5, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_12

    .line 405
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isLicenseValid(Landroid/content/SharedPreferences;)I
    .registers 8
    .parameter

    .prologue
    const-wide/high16 v5, -0x8000

    .line 345
    const-string v0, "LICENSE_LICENSE_EXPIRATION"

    invoke-interface {p0, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 346
    const-string v2, "SwypeConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLicenseValid exp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    cmp-long v2, v0, v5

    if-nez v2, :cond_26

    .line 349
    const/4 v0, 0x0

    .line 356
    :goto_25
    return v0

    .line 352
    :cond_26
    invoke-static {}, Lcom/swype/android/connect/manager/LicenseManager;->getCurrentTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 353
    const/4 v0, 0x1

    goto :goto_25

    .line 356
    :cond_30
    const/4 v0, 0x2

    goto :goto_25
.end method

.method private loadPreferences()V
    .registers 7

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "LICENSE_TRANSID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 319
    const-string v1, "LICENSE_LICENSE_EXPIRATION"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    .line 320
    const-string v1, "LICENSE_CHECK_THRESHOLD"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 321
    const-string v1, "LICENSE_STATUS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseStatus:Ljava/lang/String;

    .line 322
    return-void
.end method

.method private processLicenseFileFetchResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter

    .prologue
    .line 246
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/LicenseManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    .line 248
    return-void
.end method

.method private processLicenseFileResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 258
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    .line 259
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->getBytesOfFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 262
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4d

    iget-object v2, p1, Lcom/swype/android/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 263
    return-void
.end method

.method private processRequestLicenseResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 7
    .parameter "response"

    .prologue
    const-wide/high16 v3, -0x8000

    .line 199
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/LicenseManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 215
    :cond_11
    :goto_11
    return-void

    .line 203
    :cond_12
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 205
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 208
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/LicenseManager;->fetchLicense()V

    .line 212
    :cond_32
    iput-wide v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 213
    iput-wide v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    goto :goto_11
.end method

.method private savePreferences()V
    .registers 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    const-string v1, "LICENSE_TRANSID"

    iget-object v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v1, "LICENSE_CHECK_THRESHOLD"

    iget-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string v1, "LICENSE_LICENSE_EXPIRATION"

    iget-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v1, "LICENSE_STATUS"

    iget-object v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    return-void
.end method

.method private setAlarmForLicense()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000

    .line 472
    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 474
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->isLicenseExpirationThresholdReached()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 483
    :cond_20
    :goto_20
    return-void

    .line 477
    :cond_21
    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    iget-wide v2, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    sub-long/2addr v0, v2

    .line 478
    const-class v2, Lcom/swype/android/connect/manager/LicenseManager;

    sget-object v3, Lcom/swype/android/connect/manager/LicenseManager;->REQUEST_LICENSE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/manager/LicenseManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 480
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmAt(JLandroid/app/PendingIntent;Z)V

    goto :goto_20
.end method


# virtual methods
.method public ackLicenseFile()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 272
    :cond_9
    const-string v1, "SwypeConnect"

    const-string v2, "ackLicenseFile() Missing transactionId or licenseFileChecksum!!!"

    invoke-static {v1, v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 274
    invoke-virtual {p0, v3}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 281
    :goto_15
    return-void

    .line 278
    :cond_16
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 279
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 280
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_15
.end method

.method public ackLicenseFileChecksum(Ljava/lang/String;)V
    .registers 2
    .parameter "checksum"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter "type"
    .parameter "data"

    .prologue
    .line 146
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager;->REQUEST_LICENSE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager;->LICENSE_RETRY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 147
    :cond_10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 150
    :cond_18
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const-wide/high16 v1, -0x8000

    .line 100
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    :cond_b
    iput-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    .line 104
    iput-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 105
    return-void
.end method

.method public fetchLicense()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 226
    const-string v1, "SwypeConnect"

    const-string v2, "fetchLicense() Missing transactionId!!!"

    invoke-static {v1, v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 228
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 229
    invoke-virtual {p0, v3}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 235
    :goto_15
    return-void

    .line 232
    :cond_16
    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-direct {p0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 233
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 234
    iget-object v1, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_15
.end method

.method public onFileResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 133
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 134
    invoke-static {}, Lcom/swype/android/connect/manager/LicenseManager;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 135
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LicenseManager;->processLicenseFileResponse(Lcom/swype/android/connect/util/Response;)V

    .line 138
    :cond_17
    return-void
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "DELAY_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 117
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 118
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LicenseManager;->processRequestLicenseResponse(Lcom/swype/android/connect/util/Response;)V

    .line 128
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->savePreferences()V

    .line 129
    return-void

    .line 119
    :cond_23
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 120
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/LicenseManager;->processRequestLicenseAckResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_1f

    .line 121
    :cond_35
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->fetch:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 122
    invoke-static {}, Lcom/swype/android/connect/manager/LicenseManager;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 123
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/LicenseManager;->processLicenseFileFetchResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_1f
.end method

.method protected processRequestLicenseAckResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 290
    iput-boolean v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 291
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->ack:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/connect/manager/LicenseManager;->preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 311
    :cond_f
    :goto_f
    return-void

    .line 296
    :cond_10
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 297
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 298
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 299
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 300
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 301
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_f

    .line 303
    :cond_3a
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v0, :cond_43

    .line 304
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 306
    :cond_43
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 307
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 308
    invoke-virtual {p0, v3}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    goto :goto_f
.end method

.method public declared-synchronized requestLicense(Z)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 158
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    if-eqz v0, :cond_e

    .line 159
    const-string v0, "We are in the process of getting a new license.  Let\'s not interfere."

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4a

    .line 191
    :goto_c
    monitor-exit p0

    return-void

    .line 162
    :cond_e
    if-eqz p1, :cond_14

    .line 164
    const-wide/16 v0, -0x1

    :try_start_12
    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 167
    :cond_14
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v0, :cond_1d

    .line 168
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    :cond_1d
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/swype/android/connect/manager/LicenseManager;->getCurrentTime()J

    move-result-wide v0

    const/16 v2, 0xf

    iget-wide v3, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    invoke-static {v2, v3, v4}, Lcom/swype/android/connect/manager/LicenseManager;->convertMinutesToTimeStamp(IJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4d

    .line 175
    const-class v0, Lcom/swype/android/connect/manager/LicenseManager;

    sget-object v1, Lcom/swype/android/connect/manager/LicenseManager;->LICENSE_RETRY:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmInMinutes(ILandroid/app/PendingIntent;Z)V
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_4a

    goto :goto_c

    .line 158
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_4d
    const/4 v0, 0x1

    :try_start_4e
    iput-boolean v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->lastFetch:J

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 183
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    .line 184
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    .line 186
    sget-object v0, Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;->request:Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;

    invoke-direct {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->createCommand(Lcom/swype/android/connect/manager/LicenseManager$ValidCommands;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/LicenseManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 189
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V
    :try_end_73
    .catchall {:try_start_4e .. :try_end_73} :catchall_4a

    goto :goto_c
.end method

.method public setLicenseCheckThreshold(Ljava/lang/String;)V
    .registers 4
    .parameter "threshold"

    .prologue
    .line 437
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->convertSecondsToMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_15

    .line 441
    :goto_e
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->savePreferences()V

    .line 442
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 443
    return-void

    .line 439
    :catch_15
    move-exception v0

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    goto :goto_e
.end method

.method public setLicenseExpiration(Ljava/lang/String;)V
    .registers 4
    .parameter "expiration"

    .prologue
    .line 419
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->convertSecondsToMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_15

    .line 423
    :goto_e
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->savePreferences()V

    .line 424
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 425
    return-void

    .line 421
    :catch_15
    move-exception v0

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    goto :goto_e
.end method

.method public setLicenseStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseStatus:Ljava/lang/String;

    .line 452
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->savePreferences()V

    .line 453
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000

    .line 85
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 87
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->loadPreferences()V

    .line 88
    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 89
    :cond_18
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 90
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 94
    :goto_26
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 95
    iget-object v0, p0, Lcom/swype/android/connect/manager/LicenseManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 96
    return-void

    .line 92
    :cond_36
    invoke-direct {p0}, Lcom/swype/android/connect/manager/LicenseManager;->setAlarmForLicense()V

    goto :goto_26
.end method
