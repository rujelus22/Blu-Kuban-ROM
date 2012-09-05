.class public Lcom/samsung/client/SyncmlService;
.super Landroid/app/Service;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/SyncmlService$ServiceHandler;
    }
.end annotation


# static fields
.field private static cifumo_bootup_staus:I

.field public static current:I

.field public static dbUri:Ljava/lang/String;

.field public static description:Ljava/lang/String;

.field public static fumoRunState:I

.field public static id:I

.field private static ipcAvailable:Z

.field public static newUpdate:I

.field public static replaceStatus:I

.field public static replaceType:I

.field public static volatile resourcesCleaned:Z

.field public static sessErr:I

.field public static sessStatus:I

.field public static sessUpd:I

.field private static syncmlsvc:Lcom/samsung/client/SyncmlService;

.field public static total:I

.field public static updStatus:I

.field public static url:Ljava/lang/String;


# instance fields
.field private appsServed:I

.field private bootStart:Z

.field public dataIdx:I

.field public ddInfo:[B

.field public delayTimer:Landroid/os/CountDownTimer;

.field public hangedTimer:Landroid/os/CountDownTimer;

.field private hfaPrlFumoCheck:Z

.field public isInService:Z

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Lcom/samsung/client/ISyncmlService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/client/ISyncmlServiceDMCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGenericHandler:Lcom/samsung/client/GenericExternalHandler;

.field private mIsBatteryLow:Z

.field private final mListener:Landroid/telephony/PhoneStateListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private volatile mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private final mSprintExtensionReceiver:Landroid/content/BroadcastReceiver;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUnlockscreenReceiver:Landroid/content/BroadcastReceiver;

.field public sessionResponseTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    sput-boolean v3, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 103
    sput-object v2, Lcom/samsung/client/SyncmlService;->url:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/samsung/client/SyncmlService;->dbUri:Ljava/lang/String;

    .line 108
    sput v1, Lcom/samsung/client/SyncmlService;->current:I

    .line 109
    sput v1, Lcom/samsung/client/SyncmlService;->total:I

    .line 110
    sput v1, Lcom/samsung/client/SyncmlService;->sessErr:I

    .line 111
    sput v1, Lcom/samsung/client/SyncmlService;->sessStatus:I

    .line 112
    sput v1, Lcom/samsung/client/SyncmlService;->sessUpd:I

    .line 113
    sput v1, Lcom/samsung/client/SyncmlService;->newUpdate:I

    .line 114
    sput v1, Lcom/samsung/client/SyncmlService;->fumoRunState:I

    .line 115
    sput v1, Lcom/samsung/client/SyncmlService;->replaceType:I

    .line 116
    sput v1, Lcom/samsung/client/SyncmlService;->replaceStatus:I

    .line 117
    sput v1, Lcom/samsung/client/SyncmlService;->id:I

    .line 118
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/client/SyncmlService;->updStatus:I

    .line 119
    const-string v0, ""

    sput-object v0, Lcom/samsung/client/SyncmlService;->description:Ljava/lang/String;

    .line 120
    sput-boolean v3, Lcom/samsung/client/SyncmlService;->ipcAvailable:Z

    .line 121
    sput v1, Lcom/samsung/client/SyncmlService;->cifumo_bootup_staus:I

    .line 143
    sput-object v2, Lcom/samsung/client/SyncmlService;->syncmlsvc:Lcom/samsung/client/SyncmlService;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/samsung/client/SyncmlService;->isInService:Z

    .line 64
    iput v0, p0, Lcom/samsung/client/SyncmlService;->appsServed:I

    .line 65
    iput-boolean v0, p0, Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z

    .line 145
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 497
    new-instance v0, Lcom/samsung/client/SyncmlService$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/SyncmlService$1;-><init>(Lcom/samsung/client/SyncmlService;)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mBinder:Lcom/samsung/client/ISyncmlService$Stub;

    .line 809
    new-instance v0, Lcom/samsung/client/SyncmlService$2;

    invoke-direct {v0, p0}, Lcom/samsung/client/SyncmlService$2;-><init>(Lcom/samsung/client/SyncmlService;)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mListener:Landroid/telephony/PhoneStateListener;

    .line 827
    new-instance v0, Lcom/samsung/client/SyncmlService$3;

    invoke-direct {v0, p0}, Lcom/samsung/client/SyncmlService$3;-><init>(Lcom/samsung/client/SyncmlService;)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mSprintExtensionReceiver:Landroid/content/BroadcastReceiver;

    .line 1316
    new-instance v0, Lcom/samsung/client/SyncmlService$4;

    invoke-direct {v0, p0}, Lcom/samsung/client/SyncmlService$4;-><init>(Lcom/samsung/client/SyncmlService;)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1336
    new-instance v0, Lcom/samsung/client/SyncmlService$5;

    invoke-direct {v0, p0}, Lcom/samsung/client/SyncmlService$5;-><init>(Lcom/samsung/client/SyncmlService;)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->mUnlockscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1365
    new-instance v0, Lcom/samsung/client/SyncmlService$6;

    const-wide/32 v2, 0x2bf20

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/SyncmlService$6;-><init>(Lcom/samsung/client/SyncmlService;JJ)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    .line 1379
    new-instance v0, Lcom/samsung/client/SyncmlService$7;

    const-wide/16 v2, 0x1b58

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/SyncmlService$7;-><init>(Lcom/samsung/client/SyncmlService;JJ)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->delayTimer:Landroid/os/CountDownTimer;

    .line 1393
    new-instance v0, Lcom/samsung/client/SyncmlService$8;

    const-wide/32 v2, 0x927c0

    const-wide/32 v4, 0x493e0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/SyncmlService$8;-><init>(Lcom/samsung/client/SyncmlService;JJ)V

    iput-object v0, p0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private Bytes2HexString([B)Ljava/lang/String;
    .registers 9
    .parameter "array"

    .prologue
    .line 1298
    const-string v4, ""

    .line 1299
    .local v4, str:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_3c

    aget-byte v1, v0, v2

    .line 1300
    .local v1, b:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v1, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1299
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1303
    .end local v1           #b:B
    :cond_3c
    return-object v4
.end method

.method private CheckHFA()V
    .registers 10

    .prologue
    const/16 v1, 0xd

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 894
    const-string v0, "SyncmlService"

    const-string v2, "CheckHFA======"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sput-boolean v5, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 896
    new-array v6, v8, [B

    aput-byte v1, v6, v5

    .line 897
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 898
    .local v3, data:Ljava/lang/String;
    new-array v7, v8, [B

    aput-byte v8, v7, v5

    .line 899
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 900
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 903
    const-string v0, "SyncmlService"

    const-string v1, "CheckHFA======  mPhone.OmaDmSendData send, waiting for RIL response "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void
.end method

.method private HexBytes2Bytes([B)[B
    .registers 8
    .parameter "hex"

    .prologue
    .line 1307
    array-length v2, p1

    .line 1308
    .local v2, num:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 1309
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_27

    .line 1310
    div-int/lit8 v3, v1, 0x2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1309
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 1313
    :cond_27
    return-object v0
.end method

.method static synthetic access$000(Lcom/samsung/client/SyncmlService;[B)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/client/SyncmlService;->HexBytes2Bytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/client/SyncmlService;B[BI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/client/SyncmlService;->processRilResponse(B[BI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/client/SyncmlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/client/SyncmlService;->isInRestrictLockMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/client/SyncmlService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mSprintExtensionReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/client/SyncmlService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mUnlockscreenReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/client/SyncmlService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/client/SyncmlService;->checkStart()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/samsung/client/SyncmlService;->ipcAvailable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/samsung/client/SyncmlService;->ipcAvailable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/client/SyncmlService;)Lcom/samsung/client/SyncmlService$ServiceHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/client/SyncmlService;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/client/SyncmlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/client/SyncmlService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/client/SyncmlService;->hfaPrlFumoCheck:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/client/SyncmlService;I)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/client/SyncmlService;->convertInt2Bytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/client/SyncmlService;[B)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/client/SyncmlService;->Bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/client/SyncmlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/client/SyncmlService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/client/SyncmlService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/client/SyncmlService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private checkAndBroadCastUpdateStatus()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1414
    .line 1417
    const/16 v0, 0x14

    new-array v6, v0, [B

    .line 1423
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v0, "/data/update_success"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_7e

    .line 1424
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_c2

    .line 1425
    const/4 v0, 0x0

    :try_start_14
    const-string v4, "update success"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_c7

    move-result v0

    .line 1435
    :goto_1e
    const-string v4, "update success"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_78

    sget v4, Lcom/samsung/client/SyncmlService;->cifumo_bootup_staus:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_78

    .line 1436
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1438
    const-string v0, "update success"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v5, :cond_40

    const-string v0, "update_success"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_78

    .line 1439
    :cond_40
    const-string v0, "SyncmlService"

    const-string v4, "update success report "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :try_start_47
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1443
    new-instance v3, Ljava/lang/String;

    const-string v4, "Reported"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5d} :catch_a4

    .line 1450
    if-eqz v0, :cond_62

    .line 1451
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_be

    .line 1457
    :cond_62
    :goto_62
    sget v0, Lcom/samsung/client/SyncmlService;->cifumo_bootup_staus:I

    if-eq v0, v5, :cond_70

    .line 1459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sprint.START_FUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0, v0}, Lcom/samsung/client/SyncmlService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    :cond_70
    const-string v0, "SyncmlService"

    const-string v1, "update success reported "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 1468
    :cond_78
    if-eqz v2, :cond_7d

    .line 1469
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_c0

    .line 1474
    :cond_7d
    :goto_7d
    return v1

    .line 1426
    :catch_7e
    move-exception v0

    move-object v3, v0

    move-object v2, v4

    move-object v0, v4

    .line 1427
    :goto_82
    const-string v4, "SyncmlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndBroadCastUpdateStatus error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_7d

    .line 1432
    :catch_9e
    move-exception v3

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto/16 :goto_1e

    .line 1445
    :catch_a4
    move-exception v0

    .line 1446
    const-string v2, "SyncmlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndBroadCastUpdateStatus error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 1453
    :catch_be
    move-exception v0

    goto :goto_62

    .line 1471
    :catch_c0
    move-exception v0

    goto :goto_7d

    .line 1426
    :catch_c2
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_82

    :catch_c7
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_82
.end method

.method private checkFumoConditions()V
    .registers 10

    .prologue
    const/16 v1, 0xe

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1250
    const-string v0, "SyncmlService"

    const-string v2, "checkFumoConditions"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iput-boolean v5, p0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 1252
    new-array v6, v5, [B

    aput-byte v1, v6, v8

    .line 1253
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 1254
    .local v3, data:Ljava/lang/String;
    new-array v7, v5, [B

    aput-byte v5, v7, v8

    .line 1255
    .local v7, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 1256
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xc

    iget-object v5, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    const/16 v8, 0x7d1

    invoke-virtual {v5, v8}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1259
    return-void
.end method

.method private checkStart()V
    .registers 2

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/samsung/client/SyncmlService;->isInService:Z

    if-eqz v0, :cond_a

    .line 851
    invoke-direct {p0}, Lcom/samsung/client/SyncmlService;->CheckHFA()V

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/SyncmlService;->isInService:Z

    .line 854
    :cond_a
    return-void
.end method

.method private convertBytes2Int(BBBB)I
    .registers 7
    .parameter "b3"
    .parameter "b2"
    .parameter "b1"
    .parameter "b0"

    .prologue
    .line 1262
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private convertInt2Bytes(I)[B
    .registers 5
    .parameter "i"

    .prologue
    .line 1266
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 1267
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1268
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1269
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1270
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1272
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/client/SyncmlService;
    .registers 1

    .prologue
    .line 149
    sget-object v0, Lcom/samsung/client/SyncmlService;->syncmlsvc:Lcom/samsung/client/SyncmlService;

    return-object v0
.end method

.method private isInRestrictLockMode()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p0}, Lcom/samsung/client/SyncmlService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pattern_autolock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, lockPatternEnabled:I
    if-ne v0, v1, :cond_27

    .line 844
    .local v1, restrictLockMode:Z
    :goto_e
    const-string v2, "SyncmlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRestrictLockMode()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return v1

    .end local v1           #restrictLockMode:Z
    :cond_27
    move v1, v2

    .line 843
    goto :goto_e
.end method

.method private declared-synchronized processRilResponse(B[BI)V
    .registers 29
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    .line 907
    monitor-enter p0

    sparse-switch p1, :sswitch_data_786

    .line 1243
    :try_start_4
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse() : UNDEFINED ID"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5d

    .line 1247
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 910
    :sswitch_d
    :try_start_d
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:SESSION_TYPE value = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-byte v23, p2, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_5d

    move-result v5

    .line 912
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_34
    if-ge v13, v5, :cond_60

    .line 914
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    const/16 v22, 0x0

    aget-byte v22, p2, v22

    invoke-interface/range {v21 .. v22}, Lcom/samsung/client/ISyncmlServiceDMCallback;->set_session_type(I)V
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4b} :catch_4e

    .line 912
    :goto_4b
    add-int/lit8 v13, v13, 0x1

    goto :goto_34

    .line 915
    :catch_4e
    move-exception v10

    .line 916
    .local v10, e:Landroid/os/RemoteException;
    :try_start_4f
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5d

    goto :goto_4b

    .line 907
    .end local v5           #N:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #i:I
    :catchall_5d
    move-exception v21

    monitor-exit p0

    throw v21

    .line 919
    .restart local v5       #N:I
    .restart local v13       #i:I
    :cond_60
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_b

    .line 924
    .end local v5           #N:I
    .end local v13           #i:I
    :sswitch_6a
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:HFA_RESPONSE value = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-byte v23, p2, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 926
    const/16 v21, 0x0

    aget-byte v21, p2, v21

    sput v21, Lcom/samsung/client/SyncmlService;->cifumo_bootup_staus:I

    .line 927
    const/16 v21, 0x0

    aget-byte v21, p2, v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e4

    .line 928
    const-string v21, "SyncmlService"

    const-string v22, "StartHFA"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/samsung/client/SyncmlService;->checkAndBroadCastUpdateStatus()Z

    move-result v21

    if-nez v21, :cond_b0

    .line 931
    const-string v21, "SyncmlService"

    const-string v22, "fail to check update"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_b0
    new-instance v13, Landroid/content/Intent;

    const-string v21, "com.samsung.intent.START_HFA"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v13, i:Landroid/content/Intent;
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 937
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 938
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 939
    const/high16 v21, 0x80

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 941
    const-string v21, "SyncmlService"

    const-string v22, "starting start HFA intent2"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/client/SyncmlService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 944
    .end local v13           #i:Landroid/content/Intent;
    :cond_e4
    const-string v21, "SyncmlService"

    const-string v22, "HFA NOT REQUIRED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v21, "DMAPP_STATE"

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/client/SyncmlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 948
    .local v9, data:Landroid/content/SharedPreferences;
    const-string v21, "HFA_INITIATED"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 950
    .local v12, hfa_initiated:Z
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "hfa_initiated "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-eqz v12, :cond_131

    .line 952
    new-instance v13, Landroid/content/Intent;

    const-string v21, "com.samsung.sprint.START_PRL"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    .restart local v13       #i:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/client/SyncmlService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 955
    .end local v13           #i:Landroid/content/Intent;
    :cond_131
    invoke-direct/range {p0 .. p0}, Lcom/samsung/client/SyncmlService;->checkFumoConditions()V

    goto/16 :goto_b

    .line 965
    .end local v9           #data:Landroid/content/SharedPreferences;
    .end local v12           #hfa_initiated:Z
    :sswitch_136
    const-string v21, "SyncmlService"

    const-string v22, " !! processRilResponse:INST_ID !!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/16 v21, 0x0

    aget-byte v21, p2, v21

    const/16 v22, 0x1

    aget-byte v22, p2, v22

    const/16 v23, 0x2

    aget-byte v23, p2, v23

    const/16 v24, 0x3

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v14

    .line 967
    .local v14, inst_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_164
    .catchall {:try_start_60 .. :try_end_164} :catchall_5d

    move-result v5

    .line 968
    .restart local v5       #N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_166
    if-ge v13, v5, :cond_18d

    .line 970
    :try_start_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Lcom/samsung/client/ISyncmlServiceDMCallback;->set_instance_id(I)V
    :try_end_17b
    .catchall {:try_start_168 .. :try_end_17b} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_17b} :catch_17e

    .line 968
    :goto_17b
    add-int/lit8 v13, v13, 0x1

    goto :goto_166

    .line 971
    :catch_17e
    move-exception v10

    .line 972
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_17f
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17b

    .line 975
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 980
    .end local v5           #N:I
    .end local v13           #i:I
    .end local v14           #inst_id:I
    :sswitch_198
    const-string v21, "SyncmlService"

    const-string v22, " !!! processRilResponse:SES_PROG !!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/16 v21, 0x0

    aget-byte v21, p2, v21

    sput v21, Lcom/samsung/client/SyncmlService;->sessStatus:I

    .line 982
    const/16 v21, 0x1

    aget-byte v21, p2, v21

    sput v21, Lcom/samsung/client/SyncmlService;->sessErr:I

    .line 983
    const/16 v21, 0x2

    aget-byte v21, p2, v21

    sput v21, Lcom/samsung/client/SyncmlService;->sessUpd:I

    .line 984
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->postEvent(I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->cancel()V

    .line 987
    const-string v21, "SyncmlService"

    const-string v22, " !!!hangedTimer.cancel() !!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->cancel()V

    goto/16 :goto_b

    .line 997
    :sswitch_1d5
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:FUMO_DL_PROG"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1ec

    .line 999
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 1002
    :cond_1ec
    const/16 v21, 0x0

    aget-byte v21, p2, v21

    const/16 v22, 0x1

    aget-byte v22, p2, v22

    const/16 v23, 0x2

    aget-byte v23, p2, v23

    const/16 v24, 0x3

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v21

    sput v21, Lcom/samsung/client/SyncmlService;->current:I

    .line 1003
    const/16 v21, 0x4

    aget-byte v21, p2, v21

    const/16 v22, 0x5

    aget-byte v22, p2, v22

    const/16 v23, 0x6

    aget-byte v23, p2, v23

    const/16 v24, 0x7

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v21

    sput v21, Lcom/samsung/client/SyncmlService;->total:I

    .line 1005
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "******  current="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/samsung/client/SyncmlService;->current:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "######### total="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/samsung/client/SyncmlService;->total:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->postEvent(I)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->cancel()V

    goto/16 :goto_b

    .line 1012
    :sswitch_266
    const/4 v6, 0x0

    .line 1015
    .local v6, cur_idx:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #cur_idx:I
    .local v7, cur_idx:I
    aget-byte v17, p2, v6

    .line 1017
    .local v17, seq:I
    aget-byte v21, p2, v7

    const/16 v22, 0x2

    aget-byte v22, p2, v22

    const/16 v23, 0x3

    aget-byte v23, p2, v23

    const/16 v24, 0x4

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v8

    .line 1020
    .local v8, cur_size:I
    add-int/lit8 v6, v7, 0x4

    .line 1021
    .end local v7           #cur_idx:I
    .restart local v6       #cur_idx:I
    aget-byte v21, p2, v6

    const/16 v22, 0x6

    aget-byte v22, p2, v22

    const/16 v23, 0x7

    aget-byte v23, p2, v23

    const/16 v24, 0x8

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v19

    .line 1024
    .local v19, tot_size:I
    add-int/lit8 v6, v6, 0x4

    .line 1026
    add-int/lit8 v7, v6, 0x1

    .end local v6           #cur_idx:I
    .restart local v7       #cur_idx:I
    aget-byte v15, p2, v6

    .line 1028
    .local v15, moreData:B
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE seq: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE moreData: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE cur_idx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE cur_size: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE tot_size: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE bootStart: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    if-nez v17, :cond_783

    .line 1042
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/client/SyncmlService;->ddInfo:[B

    .line 1043
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/client/SyncmlService;->dataIdx:I

    .line 1045
    aget-byte v21, p2, v7

    const/16 v22, 0xb

    aget-byte v22, p2, v22

    const/16 v23, 0xc

    aget-byte v23, p2, v23

    const/16 v24, 0xd

    aget-byte v24, p2, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/client/SyncmlService;->convertBytes2Int(BBBB)I

    move-result v20

    .line 1047
    .local v20, upd_time:I
    add-int/lit8 v6, v7, 0x4

    .line 1048
    .end local v7           #cur_idx:I
    .restart local v6       #cur_idx:I
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE update_time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v21, "DMAPP_STATE"

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/client/SyncmlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1053
    .restart local v9       #data:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1054
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "FUMO_UPD_TIME"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1057
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1060
    .end local v9           #data:Landroid/content/SharedPreferences;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #upd_time:I
    :goto_3c1
    const/4 v13, 0x0

    .restart local v13       #i:I
    move v7, v6

    .end local v6           #cur_idx:I
    .restart local v7       #cur_idx:I
    :goto_3c3
    if-ge v13, v8, :cond_3e3

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->ddInfo:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/client/SyncmlService;->dataIdx:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/client/SyncmlService;->dataIdx:I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #cur_idx:I
    .restart local v6       #cur_idx:I
    aget-byte v23, p2, v7

    aput-byte v23, v21, v22

    .line 1060
    add-int/lit8 v13, v13, 0x1

    move v7, v6

    .end local v6           #cur_idx:I
    .restart local v7       #cur_idx:I
    goto :goto_3c3

    .line 1064
    :cond_3e3
    if-nez v15, :cond_49f

    .line 1065
    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/client/SyncmlService;->dataIdx:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_49f

    .line 1068
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:FUMO_DL_COMPLETE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->ddInfo:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->ddInfo:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljava/lang/String;-><init>([BII)V

    sput-object v21, Lcom/samsung/client/SyncmlService;->description:Ljava/lang/String;

    .line 1071
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_DL_COMPLETE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/samsung/client/SyncmlService;->description:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v21, "DMAPP_STATE"

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/client/SyncmlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1075
    .restart local v9       #data:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1076
    .restart local v11       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "FUMO_DESCRIPTION"

    sget-object v22, Lcom/samsung/client/SyncmlService;->description:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1077
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1078
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_476

    .line 1079
    const-string v21, "SyncmlService"

    const-string v22, "FUMO_UPDATE_FW"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 1081
    const/16 v21, 0x1

    sput v21, Lcom/samsung/client/SyncmlService;->id:I

    .line 1082
    const/16 v21, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->postEvent(I)V

    goto/16 :goto_b

    .line 1085
    :cond_476
    const/16 v21, 0x0

    sput v21, Lcom/samsung/client/SyncmlService;->id:I

    .line 1086
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FUMO_UPDATE_FW  id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/16 v21, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->postEvent(I)V

    .line 1091
    .end local v9           #data:Landroid/content/SharedPreferences;
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_49f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->sessionResponseTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->cancel()V

    goto/16 :goto_b

    .line 1096
    .end local v7           #cur_idx:I
    .end local v8           #cur_size:I
    .end local v13           #i:I
    .end local v15           #moreData:B
    .end local v17           #seq:I
    .end local v19           #tot_size:I
    :sswitch_4aa
    const/16 v21, 0x0

    aget-byte v16, p2, v21

    .line 1097
    .local v16, resp:I
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:FUMO_PENDING_RESP "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/client/SyncmlService;->bootStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_514

    if-nez v16, :cond_514

    .line 1100
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 1101
    const-string v21, "SyncmlService"

    const-string v22, "resourcesCleaned = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/samsung/client/SyncmlService;->checkAndBroadCastUpdateStatus()Z

    move-result v21

    if-nez v21, :cond_b

    .line 1105
    const-string v21, "SyncmlService"

    const-string v22, "START_NIA"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.samsung.client.SAN_SERVICE"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/client/SyncmlService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_b

    .line 1111
    :cond_514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 1112
    .restart local v5       #N:I
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "N="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_538
    .catchall {:try_start_17f .. :try_end_538} :catchall_5d

    .line 1113
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_539
    if-ge v13, v5, :cond_562

    .line 1115
    :try_start_53b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlServiceDMCallback;->fumo_pending_response(I)V
    :try_end_550
    .catchall {:try_start_53b .. :try_end_550} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_53b .. :try_end_550} :catch_553

    .line 1113
    :goto_550
    add-int/lit8 v13, v13, 0x1

    goto :goto_539

    .line 1116
    :catch_553
    move-exception v10

    .line 1117
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_554
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_550

    .line 1120
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 1126
    .end local v5           #N:I
    .end local v13           #i:I
    .end local v16           #resp:I
    :sswitch_56d
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:FUMO_UPD_STATUS"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/client/SyncmlService;->bootStart:Z

    .line 1128
    const/16 v21, 0x0

    aget-byte v18, p2, v21

    .line 1133
    .local v18, status:I
    if-gez v18, :cond_588

    .line 1134
    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    .line 1136
    :cond_588
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "FUMO_SEND_STATUS status : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 1138
    .restart local v5       #N:I
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "N="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c8
    .catchall {:try_start_554 .. :try_end_5c8} :catchall_5d

    .line 1139
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5c9
    if-ge v13, v5, :cond_5f2

    .line 1141
    :try_start_5cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlServiceDMCallback;->send_status(I)V
    :try_end_5e0
    .catchall {:try_start_5cb .. :try_end_5e0} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_5cb .. :try_end_5e0} :catch_5e3

    .line 1139
    :goto_5e0
    add-int/lit8 v13, v13, 0x1

    goto :goto_5c9

    .line 1142
    :catch_5e3
    move-exception v10

    .line 1143
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_5e4
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e0

    .line 1146
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_5f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 1151
    .end local v5           #N:I
    .end local v13           #i:I
    .end local v18           #status:I
    :sswitch_5fd
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:FUMO_UPD_RESET"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_60d
    .catchall {:try_start_5e4 .. :try_end_60d} :catchall_5d

    move-result v5

    .line 1153
    .restart local v5       #N:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_60f
    if-ge v13, v5, :cond_634

    .line 1155
    :try_start_611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface/range {v21 .. v21}, Lcom/samsung/client/ISyncmlServiceDMCallback;->device_reboot()V
    :try_end_622
    .catchall {:try_start_611 .. :try_end_622} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_611 .. :try_end_622} :catch_625

    .line 1153
    :goto_622
    add-int/lit8 v13, v13, 0x1

    goto :goto_60f

    .line 1156
    :catch_625
    move-exception v10

    .line 1157
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_626
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_622

    .line 1160
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 1166
    .end local v5           #N:I
    .end local v13           #i:I
    :sswitch_63f
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:AT_OMADM_CMD"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_64f
    .catchall {:try_start_626 .. :try_end_64f} :catchall_5d

    move-result v5

    .line 1168
    .restart local v5       #N:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_651
    if-ge v13, v5, :cond_67a

    .line 1170
    :try_start_653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlServiceDMCallback;->at_omadm_commands([B)V
    :try_end_668
    .catchall {:try_start_653 .. :try_end_668} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_653 .. :try_end_668} :catch_66b

    .line 1168
    :goto_668
    add-int/lit8 v13, v13, 0x1

    goto :goto_651

    .line 1171
    :catch_66b
    move-exception v10

    .line 1172
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_66c
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_668

    .line 1175
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_67a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 1181
    .end local v5           #N:I
    .end local v13           #i:I
    :sswitch_685
    const-string v21, "SyncmlService"

    const-string v22, "processRilResponse:SAN_AUTH_ERR"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_695
    .catchall {:try_start_66c .. :try_end_695} :catchall_5d

    move-result v5

    .line 1183
    .restart local v5       #N:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_697
    if-ge v13, v5, :cond_6bc

    .line 1185
    :try_start_699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface/range {v21 .. v21}, Lcom/samsung/client/ISyncmlServiceDMCallback;->san_auth_err()V
    :try_end_6aa
    .catchall {:try_start_699 .. :try_end_6aa} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_699 .. :try_end_6aa} :catch_6ad

    .line 1183
    :goto_6aa
    add-int/lit8 v13, v13, 0x1

    goto :goto_697

    .line 1186
    :catch_6ad
    move-exception v10

    .line 1187
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_6ae
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6aa

    .line 1190
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_6bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_b

    .line 1211
    .end local v5           #N:I
    .end local v13           #i:I
    :sswitch_6c7
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:hangedTimer.cancel() id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->cancel()V

    .line 1215
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:SPRINT_OMADM_WIMAX : id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_711
    .catchall {:try_start_6ae .. :try_end_711} :catchall_5d

    move-result v5

    .line 1217
    .restart local v5       #N:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_713
    if-ge v13, v5, :cond_740

    .line 1219
    :try_start_715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/client/ISyncmlServiceDMCallback;->wimaxProcessRilResponse(B[BI)V
    :try_end_72e
    .catchall {:try_start_715 .. :try_end_72e} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_715 .. :try_end_72e} :catch_731

    .line 1217
    :goto_72e
    add-int/lit8 v13, v13, 0x1

    goto :goto_713

    .line 1221
    :catch_731
    move-exception v10

    .line 1222
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_732
    const-string v21, "SyncmlService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72e

    .line 1225
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1229
    const-string v21, "SyncmlService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "processRilResponse:hangedTimer.start() id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->hangedTimer:Landroid/os/CountDownTimer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_b

    .line 1239
    .end local v5           #N:I
    .end local v13           #i:I
    :sswitch_770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/SyncmlService;->mGenericHandler:Lcom/samsung/client/GenericExternalHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/client/GenericExternalHandler;->processRilRequest(B[BI)V
    :try_end_781
    .catchall {:try_start_732 .. :try_end_781} :catchall_5d

    goto/16 :goto_b

    .restart local v7       #cur_idx:I
    .restart local v8       #cur_size:I
    .restart local v15       #moreData:B
    .restart local v17       #seq:I
    .restart local v19       #tot_size:I
    :cond_783
    move v6, v7

    .end local v7           #cur_idx:I
    .restart local v6       #cur_idx:I
    goto/16 :goto_3c1

    .line 907
    :sswitch_data_786
    .sparse-switch
        -0x80 -> :sswitch_6c7
        -0x7f -> :sswitch_770
        -0x7e -> :sswitch_770
        -0x7d -> :sswitch_770
        -0x7c -> :sswitch_770
        -0x7b -> :sswitch_770
        -0x7a -> :sswitch_770
        0x63 -> :sswitch_d
        0x64 -> :sswitch_6a
        0x65 -> :sswitch_136
        0x66 -> :sswitch_198
        0x67 -> :sswitch_1d5
        0x68 -> :sswitch_266
        0x6a -> :sswitch_56d
        0x6b -> :sswitch_4aa
        0x6c -> :sswitch_5fd
        0x6f -> :sswitch_63f
        0x70 -> :sswitch_685
        0x71 -> :sswitch_6c7
        0x72 -> :sswitch_6c7
        0x73 -> :sswitch_6c7
        0x74 -> :sswitch_6c7
        0x75 -> :sswitch_6c7
        0x76 -> :sswitch_6c7
        0x77 -> :sswitch_6c7
        0x78 -> :sswitch_6c7
        0x79 -> :sswitch_6c7
        0x7a -> :sswitch_6c7
        0x7b -> :sswitch_6c7
        0x7c -> :sswitch_6c7
        0x7d -> :sswitch_6c7
        0x7e -> :sswitch_6c7
        0x7f -> :sswitch_6c7
    .end sparse-switch
.end method


# virtual methods
.method public Int2TwoByteString(I)Ljava/lang/String;
    .registers 15
    .parameter "input"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1276
    const-string v8, "SyncmlService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Int2TwoByteString: input "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v8, 0x2

    new-array v7, v8, [B

    .line 1278
    .local v7, tmp:[B
    and-int/lit16 v8, p1, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v11

    .line 1279
    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v12

    .line 1280
    const/4 v5, 0x0

    .line 1281
    .local v5, str:Ljava/lang/String;
    aget-byte v8, v7, v12

    if-nez v8, :cond_65

    .line 1282
    new-array v4, v12, [B

    aget-byte v8, v7, v11

    aput-byte v8, v4, v11

    .line 1283
    .local v4, new_tmp:[B
    new-instance v5, Ljava/lang/String;

    .end local v5           #str:Ljava/lang/String;
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1288
    .end local v4           #new_tmp:[B
    .restart local v5       #str:Ljava/lang/String;
    :goto_39
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1289
    .local v6, test:[B
    move-object v0, v6

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_40
    if-ge v2, v3, :cond_6b

    aget-byte v1, v0, v2

    .line 1290
    .local v1, b:B
    const-string v8, "SyncmlService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Int2TwoByteString: byte "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/lit16 v10, v1, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 1285
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #test:[B
    :cond_65
    new-instance v5, Ljava/lang/String;

    .end local v5           #str:Ljava/lang/String;
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v5       #str:Ljava/lang/String;
    goto :goto_39

    .line 1294
    .restart local v0       #arr$:[B
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #test:[B
    :cond_6b
    return-object v5
.end method

.method handleStart(Landroid/content/Intent;I)V
    .registers 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 389
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 453
    :cond_e
    :goto_e
    return-void

    .line 405
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.client.SYNCML_SERVICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 406
    const-string v5, "SyncmlService"

    const-string v6, "com.samsung.client.SYNCML_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v5, "STATES"

    invoke-virtual {p0, v5, v7}, Lcom/samsung/client/SyncmlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    .local v0, data:Landroid/content/SharedPreferences;
    const-string v5, "check"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 409
    .local v3, hfaflag:I
    const-string v5, "dialog"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, dialogflag:I
    if-ne v3, v8, :cond_43

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 414
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "check"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e

    .line 418
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_43
    if-ne v1, v8, :cond_e

    .line 419
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.UPDATE_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v4, i:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 421
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    const/high16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    const-string v5, "fwUpdateDialog"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v5, "SyncmlService"

    const-string v6, "TimerTask starting DIALOG_GOTA_COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0, v4}, Lcom/samsung/client/SyncmlService;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 432
    .end local v0           #data:Landroid/content/SharedPreferences;
    .end local v1           #dialogflag:I
    .end local v3           #hfaflag:I
    .end local v4           #i:Landroid/content/Intent;
    :cond_6d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 434
    const-string v5, "SyncmlService"

    const-string v6, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 435
    :cond_81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sprint.samsung.OMADMExtension.PRL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 437
    const-string v5, "SyncmlService"

    const-string v6, "com.sprint.samsung.OMADMExtension.PRL"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 438
    :cond_96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sprint.samsung.OMADMExtension.DP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 440
    const-string v5, "SyncmlService"

    const-string v6, "com.sprint.samsung.OMADMExtension.DP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 441
    :cond_ab
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sprint.samsung.OMADMExtension.FUMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 443
    const-string v5, "SyncmlService"

    const-string v6, "com.sprint.samsung.OMADMExtension.FUMO"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 444
    :cond_c0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sprint.samsung.OMADMExtension.REG_HFA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 446
    const-string v5, "SyncmlService"

    const-string v6, "com.sprint.samsung.OMADMExtension.REG_HFA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v5, "STATES"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/samsung/client/SyncmlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    .restart local v0       #data:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 450
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "check"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_e
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter

    .prologue
    .line 459
    const-string v0, "SyncmlService"

    const-string v1, "onBind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-class v0, Lcom/samsung/client/ISyncmlService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 466
    iget v0, p0, Lcom/samsung/client/SyncmlService;->appsServed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/client/SyncmlService;->appsServed:I

    .line 467
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mBinder:Lcom/samsung/client/ISyncmlService$Stub;

    .line 469
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onCreate()V
    .registers 9

    .prologue
    .line 324
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "SyncmlService"

    const/16 v5, 0xa

    invoke-direct {v2, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 326
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 327
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/client/SyncmlService;->mServiceLooper:Landroid/os/Looper;

    .line 328
    new-instance v4, Lcom/samsung/client/SyncmlService$ServiceHandler;

    iget-object v5, p0, Lcom/samsung/client/SyncmlService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5}, Lcom/samsung/client/SyncmlService$ServiceHandler;-><init>(Lcom/samsung/client/SyncmlService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    .line 331
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/samsung/client/SyncmlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/samsung/client/SyncmlService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 332
    iget-object v4, p0, Lcom/samsung/client/SyncmlService;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/samsung/client/SyncmlService;->mListener:Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 333
    const-string v4, "SyncmlService"

    const-string v5, "onCreate "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.sprint.android.SPRINTEXTENSION_STARTED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, sprintIntentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/samsung/client/SyncmlService;->mSprintExtensionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/samsung/client/SyncmlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 341
    iget-object v4, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    const/16 v6, 0x7d0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForOmaDmSendData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/samsung/client/SyncmlService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/client/SyncmlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v3, unlockIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUN_PATTERN_LOCK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/samsung/client/SyncmlService;->mUnlockscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/client/SyncmlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    sput-object p0, Lcom/samsung/client/SyncmlService;->syncmlsvc:Lcom/samsung/client/SyncmlService;

    .line 358
    new-instance v4, Lcom/samsung/client/GenericExternalHandler;

    invoke-direct {v4}, Lcom/samsung/client/GenericExternalHandler;-><init>()V

    iput-object v4, p0, Lcom/samsung/client/SyncmlService;->mGenericHandler:Lcom/samsung/client/GenericExternalHandler;

    .line 360
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 365
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOmaDmSendData(Landroid/os/Handler;)V

    .line 366
    const-string v0, "SyncmlService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 372
    if-eqz p1, :cond_8

    .line 373
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/samsung/client/SyncmlService;->handleStart(Landroid/content/Intent;I)V

    .line 376
    :cond_8
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 383
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 384
    invoke-virtual {p0, p1, p3}, Lcom/samsung/client/SyncmlService;->handleStart(Landroid/content/Intent;I)V

    .line 385
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 476
    const-string v0, "SyncmlService"

    const-string v1, "onUnBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget v0, p0, Lcom/samsung/client/SyncmlService;->appsServed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/client/SyncmlService;->appsServed:I

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public postEvent(I)V
    .registers 6
    .parameter "evt"

    .prologue
    .line 486
    const-string v1, "SyncmlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEvent evt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 490
    iget-object v1, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/client/SyncmlService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method

.method public sendResponse(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "data"
    .parameter "len"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/samsung/client/SyncmlService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xc

    iget-object v1, p0, Lcom/samsung/client/SyncmlService;->mServiceHandler:Lcom/samsung/client/SyncmlService$ServiceHandler;

    const/16 v3, 0x7d1

    invoke-virtual {v1, v3}, Lcom/samsung/client/SyncmlService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1359
    return-void
.end method
