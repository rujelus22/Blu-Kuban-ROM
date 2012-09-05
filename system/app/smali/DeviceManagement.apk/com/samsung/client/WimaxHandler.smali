.class public Lcom/samsung/client/WimaxHandler;
.super Ljava/lang/Object;
.source "WimaxHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/WimaxHandler$WimaxATHandler;
    }
.end annotation


# instance fields
.field private isATMode:Z

.field private mActivatedFlag:Z

.field private mGetRadioTemp:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSvcDisabledWimax:Z

.field private mWimaxATHandler:Lcom/samsung/client/WimaxHandler$WimaxATHandler;

.field private mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

.field private mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private final mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxTurnOffTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    .line 45
    iput-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 46
    iput-object v1, p0, Lcom/samsung/client/WimaxHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 47
    iput-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    .line 48
    iput-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->isATMode:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->mActivatedFlag:Z

    .line 51
    iput-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxATHandler:Lcom/samsung/client/WimaxHandler$WimaxATHandler;

    .line 72
    new-instance v0, Lcom/samsung/client/WimaxHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/WimaxHandler$1;-><init>(Lcom/samsung/client/WimaxHandler;)V

    iput-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    .line 521
    new-instance v0, Lcom/samsung/client/WimaxHandler$2;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/WimaxHandler$2;-><init>(Lcom/samsung/client/WimaxHandler;JJ)V

    iput-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxTurnOffTimer:Landroid/os/CountDownTimer;

    .line 55
    new-instance v0, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-direct {v0}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;-><init>()V

    iput-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    .line 59
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/client/WimaxHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 64
    iget-object v0, p0, Lcom/samsung/client/WimaxHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/client/WimaxHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const-string v0, "WimaxHandler"

    const-string v1, "..... WimaxHandler(): .... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private final Bytes2HexString([B)Ljava/lang/String;
    .registers 9
    .parameter "array"

    .prologue
    .line 498
    const-string v4, ""

    .line 499
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

    .line 500
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

    .line 501
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

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 503
    .end local v1           #b:B
    :cond_3c
    return-object v4
.end method

.method static synthetic access$000(Lcom/samsung/client/WimaxHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/client/WimaxHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/client/WimaxHandler;->postJavaWimaxDisabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/client/WimaxHandler;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/client/WimaxHandler;BBBB)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/client/WimaxHandler;->convertBytes2Int(BBBB)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/client/WimaxHandler;I)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/client/WimaxHandler;[B)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/client/WimaxHandler;->reverseBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/client/WimaxHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/client/WimaxHandler;->isATMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/client/WimaxHandler;II[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/client/WimaxHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/client/WimaxHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/client/WimaxHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/client/WimaxHandler;->postRadioTempIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/client/WimaxHandler;[B)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/client/WimaxHandler;)Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/client/WimaxHandler;[B)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v0

    return-object v0
.end method

.method private final convertBytes2Int(BBBB)I
    .registers 7
    .parameter "b3"
    .parameter "b2"
    .parameter "b1"
    .parameter "b0"

    .prologue
    .line 507
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

.method private final convertInt2Bytes(I)[B
    .registers 5
    .parameter "i"

    .prologue
    .line 478
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 479
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 480
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 481
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 482
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 484
    return-object v0
.end method

.method private getData([B)[B
    .registers 8
    .parameter "arr"

    .prologue
    .line 414
    const-string v3, "WimaxHandler"

    const-string v4, "getData()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 416
    .local v2, uri_len:I
    const-string v3, "WimaxHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData() : uri len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 419
    .local v1, data_len:I
    const-string v3, "WimaxHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData() : data len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-array v0, v1, [B

    .line 422
    .local v0, data:[B
    add-int/lit8 v3, v2, 0x5

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    return-object v0
.end method

.method private getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "str"
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 511
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, names:[Ljava/lang/String;
    const/4 v1, -0x1

    if-le p2, v1, :cond_2c

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_2c

    .line 513
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstDynamicNodeName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    aget-object v1, v0, p2

    .line 518
    :goto_2b
    return-object v1

    .line 517
    :cond_2c
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstDynamicNodeNameDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    aget-object v1, v0, v4

    goto :goto_2b
.end method

.method private getFmt([B)I
    .registers 6
    .parameter "arr"

    .prologue
    const/4 v3, 0x0

    .line 408
    const-string v0, "WimaxHandler"

    const-string v1, "getFmt()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "WimaxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getUri([B)Ljava/lang/String;
    .registers 8
    .parameter "arr"

    .prologue
    .line 397
    const-string v3, "WimaxHandler"

    const-string v4, "getUri()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 399
    .local v2, uri_len:I
    const-string v3, "WimaxHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUri() : uri len - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-array v0, v2, [B

    .line 401
    .local v0, str:[B
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 403
    .local v1, uri:Ljava/lang/String;
    const-string v3, "WimaxHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v1
.end method

.method private postJavaWimaxDisabled()V
    .registers 6

    .prologue
    .line 129
    iget-object v2, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v2}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->wimaxTurnOn()I

    .line 130
    new-instance v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;

    invoke-direct {v0}, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;-><init>()V

    .line 131
    .local v0, gen:Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
    const-string v2, "./WiMAX"

    iput-object v2, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v2, v0}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_init_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v1

    .line 133
    .local v1, ret:I
    const/16 v2, 0x18

    iget-object v3, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    .line 135
    const-string v2, "WimaxHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isATMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/client/WimaxHandler;->isATMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v2, p0, Lcom/samsung/client/WimaxHandler;->isATMode:Z

    if-eqz v2, :cond_3e

    .line 137
    iget-object v2, p0, Lcom/samsung/client/WimaxHandler;->mWimaxATHandler:Lcom/samsung/client/WimaxHandler$WimaxATHandler;

    #calls: Lcom/samsung/client/WimaxHandler$WimaxATHandler;->handleRequest()V
    invoke-static {v2}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->access$400(Lcom/samsung/client/WimaxHandler$WimaxATHandler;)V

    .line 139
    :cond_3e
    return-void
.end method

.method private postRadioTempIntent()V
    .registers 7

    .prologue
    .line 112
    new-instance v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;

    invoke-direct {v0}, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;-><init>()V

    .line 113
    .local v0, gen:Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/net4GManager$RadioInfoTemperature;->getCurrent()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, value:Ljava/lang/String;
    const-string v3, "WimaxHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wimax Temperature GET : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v2, :cond_3e

    .line 118
    const-string v2, ""

    .line 121
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 122
    const/16 v1, 0xc8

    .line 123
    .local v1, ret:I
    const/16 v3, 0x25

    iget-object v4, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v3, v1, v4}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z

    .line 126
    return-void
.end method

.method private final reverseBytes([B)[B
    .registers 8
    .parameter "i"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 489
    .local v0, b:[B
    aget-byte v1, p1, v5

    aput-byte v1, v0, v2

    .line 490
    aget-byte v1, p1, v4

    aput-byte v1, v0, v3

    .line 491
    aget-byte v1, p1, v3

    aput-byte v1, v0, v4

    .line 492
    aget-byte v1, p1, v2

    aput-byte v1, v0, v5

    .line 494
    return-object v0
.end method

.method private sendResponse(II[B)V
    .registers 18
    .parameter "id"
    .parameter "status"
    .parameter "gen_data"

    .prologue
    .line 427
    const-string v11, "WimaxHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendResponse() status=%d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v11, 0x2

    new-array v9, v11, [B

    .line 429
    .local v9, status_code:[B
    const/4 v11, 0x0

    shr-int/lit8 v12, p2, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 430
    const/4 v11, 0x1

    move/from16 v0, p2

    and-int/lit16 v12, v0, 0xff

    int-to-byte v12, v12

    aput-byte v12, v9, v11

    .line 432
    if-nez p3, :cond_3f

    .line 433
    const-string v11, "WimaxHandler"

    const-string v12, "sendResponse() data is NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v11, 0x1

    new-array v0, v11, [B

    move-object/from16 p3, v0

    .line 435
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, p3, v11

    .line 438
    :cond_3f
    move-object/from16 v0, p3

    array-length v6, v0

    .line 439
    .local v6, len:I
    const/4 v11, 0x2

    new-array v8, v11, [B

    .line 440
    .local v8, len_bytes:[B
    const/4 v11, 0x0

    shr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 441
    const/4 v11, 0x1

    and-int/lit16 v12, v6, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 443
    array-length v11, v9

    array-length v12, v8

    add-int/2addr v11, v12

    move-object/from16 v0, p3

    array-length v12, v0

    add-int v1, v11, v12

    .line 445
    .local v1, actual_data_length:I
    mul-int/lit8 v11, v1, 0x2

    invoke-direct {p0, v11}, Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B

    move-result-object v4

    .line 446
    .local v4, data_len:[B
    array-length v11, v4

    add-int/2addr v11, v1

    new-array v3, v11, [B

    .line 448
    .local v3, data_bytes:[B
    const-string v11, "WimaxHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendResponse(): actual data length :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    const/4 v11, 0x0

    array-length v12, v4

    array-length v13, v9

    invoke-static {v9, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    const/4 v11, 0x0

    array-length v12, v4

    array-length v13, v9

    add-int/2addr v12, v13

    array-length v13, v8

    invoke-static {v8, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    const/4 v11, 0x0

    array-length v12, v4

    array-length v13, v9

    add-int/2addr v12, v13

    array-length v13, v8

    add-int/2addr v12, v13

    move-object/from16 v0, p3

    array-length v13, v0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    invoke-direct {p0, v3}, Lcom/samsung/client/WimaxHandler;->Bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, data:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v7, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v7, v11

    .line 462
    .local v7, len_byte:[B
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    .line 467
    .local v10, str_len:Ljava/lang/String;
    :try_start_af
    const-string v11, "WimaxHandler"

    const-string v12, " mDmApp.getSyncmlService().wimaxSendResponse called"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/samsung/client/DMApp;->getSyncmlService()Lcom/samsung/client/ISyncmlService;

    move-result-object v11

    invoke-interface {v11, p1, v2, v10}, Lcom/samsung/client/ISyncmlService;->wimaxSendResponse(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bd} :catch_be

    .line 475
    :goto_bd
    return-void

    .line 471
    :catch_be
    move-exception v5

    .line 472
    .local v5, e:Ljava/lang/Exception;
    const-string v11, "WimaxHandler"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bd
.end method


# virtual methods
.method public disableJavaWimax()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    iget-object v3, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 143
    .local v0, status:I
    const-string v3, "WimaxHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wimax Status= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-ne v0, v1, :cond_2a

    .line 146
    const-string v2, "WimaxHandler"

    const-string v3, "Wimax Already Disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_29
    return v1

    .line 150
    :cond_2a
    const-string v3, "WimaxHandler"

    const-string v4, "Wimax Enabled : Disabling Now ..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v1, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    .line 153
    iget-object v3, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 163
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/client/DMApp;->SaveSharedPreferenceWimaxHandler(Ljava/lang/Boolean;)V

    move v1, v2

    .line 164
    goto :goto_29
.end method

.method public enableJavaWimax()V
    .registers 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 169
    .local v0, status:I
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableJavaWimax Wimax Status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v1, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    if-eqz v1, :cond_2f

    .line 171
    const-string v1, "WimaxHandler"

    const-string v2, "Wimax Disabled : Enabling Now ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 175
    :cond_2f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    .line 176
    return-void
.end method

.method public enableJavaWimaxDmApp()V
    .registers 5

    .prologue
    .line 179
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 180
    .local v0, status:I
    const-string v1, "WimaxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableJavaWimaxDmApp Wimax Status !!!= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    .line 182
    const-string v1, "WimaxHandler"

    const-string v2, "Wimax Disabled : Enabling Now ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 186
    :cond_2e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/client/WimaxHandler;->mSvcDisabledWimax:Z

    .line 187
    return-void
.end method

.method public processRilRequest(B[BI)V
    .registers 14
    .parameter "id"
    .parameter "arr"
    .parameter "len"

    .prologue
    .line 191
    new-instance v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;

    invoke-direct {v1}, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;-><init>()V

    .line 192
    .local v1, gen:Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
    const-string v5, "WimaxHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processRilResponse id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, p1, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sparse-switch p1, :sswitch_data_2c4

    .line 394
    :cond_26
    :goto_26
    return-void

    .line 196
    :sswitch_27
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 197
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 198
    .local v2, ret:I
    const/16 v5, 0x17

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto :goto_26

    .line 203
    .end local v2           #ret:I
    :sswitch_3b
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 204
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 205
    .restart local v2       #ret:I
    const/16 v5, 0x1e

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto :goto_26

    .line 211
    .end local v2           #ret:I
    :sswitch_4f
    invoke-virtual {p0}, Lcom/samsung/client/WimaxHandler;->disableJavaWimax()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 212
    invoke-direct {p0}, Lcom/samsung/client/WimaxHandler;->postJavaWimaxDisabled()V

    goto :goto_26

    .line 224
    :sswitch_59
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 225
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    const-string v6, "Ext/WorkMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 226
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->getWorkModeState()I

    move-result v4

    .line 227
    .local v4, value:I
    const-string v5, "WimaxHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WorkMode GET : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, v4}, Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/client/WimaxHandler;->reverseBytes([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 229
    const/16 v2, 0xc8

    .line 235
    .end local v4           #value:I
    .restart local v2       #ret:I
    :goto_93
    const/16 v5, 0x19

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto :goto_26

    .line 231
    .end local v2           #ret:I
    :cond_9b
    const-string v5, "./WiMAX"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 232
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 233
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .restart local v2       #ret:I
    goto :goto_93

    .line 240
    .end local v2           #ret:I
    :sswitch_ac
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 241
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    const-string v6, "Ext/WorkMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 242
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 243
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 244
    const/4 v4, 0x0

    .line 245
    .restart local v4       #value:I
    iget v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    if-nez v5, :cond_100

    .line 246
    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 251
    :goto_d8
    const-string v5, "WimaxHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WorkMode REPLACE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setWorkModeState(I)Z

    .line 253
    const/16 v2, 0xc8

    .line 266
    .end local v4           #value:I
    .restart local v2       #ret:I
    :goto_f7
    const/16 v5, 0x1a

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 248
    .end local v2           #ret:I
    .restart local v4       #value:I
    :cond_100
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    iget-object v7, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    iget-object v8, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/client/WimaxHandler;->convertBytes2Int(BBBB)I

    move-result v4

    goto :goto_d8

    .line 260
    .end local v4           #value:I
    :cond_119
    const-string v5, "./WiMAX"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 261
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 262
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 263
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    array-length v5, v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 264
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .restart local v2       #ret:I
    goto :goto_f7

    .line 271
    .end local v2           #ret:I
    :sswitch_135
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 272
    const-string v5, "./WiMAX"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 273
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 274
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 275
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    array-length v5, v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 276
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_add_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 277
    .restart local v2       #ret:I
    const/16 v5, 0x1b

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 282
    .end local v2           #ret:I
    :sswitch_15f
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 283
    const-string v5, "./WiMAX"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 284
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_del_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 285
    .restart local v2       #ret:I
    const/16 v5, 0x1c

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 290
    .end local v2           #ret:I
    :sswitch_178
    iget-boolean v5, p0, Lcom/samsung/client/WimaxHandler;->mActivatedFlag:Z

    if-eqz v5, :cond_1e4

    .line 291
    const-string v5, "WimaxHandler"

    const-string v6, "Send Activated Flag to Wimax Modem"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v5, "./WiMAXSupp/Operator"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 294
    .restart local v2       #ret:I
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_1e1

    .line 296
    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, username:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operator/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/SubscriptionParameters/PrimarySubscription/Activated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 301
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 307
    const/4 v5, 0x0

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 308
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 309
    .local v0, data:[B
    const/4 v5, 0x0

    const/16 v6, 0x54

    aput-byte v6, v0, v5

    .line 310
    const/4 v5, 0x1

    const/16 v6, 0x52

    aput-byte v6, v0, v5

    .line 311
    const/4 v5, 0x2

    const/16 v6, 0x55

    aput-byte v6, v0, v5

    .line 312
    const/4 v5, 0x3

    const/16 v6, 0x45

    aput-byte v6, v0, v5

    .line 313
    iput-object v0, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 314
    const/4 v5, 0x4

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 316
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 319
    .end local v0           #data:[B
    .end local v3           #username:Ljava/lang/String;
    :cond_1e1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/client/WimaxHandler;->mActivatedFlag:Z

    .line 322
    .end local v2           #ret:I
    :cond_1e4
    const-string v5, "./WiMAX"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 323
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_ses_done_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 324
    .restart local v2       #ret:I
    const/16 v5, 0x1d

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 329
    .end local v2           #ret:I
    :sswitch_1f7
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 330
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_init_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 331
    .restart local v2       #ret:I
    const/16 v5, 0x1f

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 336
    .end local v2           #ret:I
    :sswitch_20a
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 337
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 338
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 339
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 340
    .restart local v2       #ret:I
    const/16 v5, 0x20

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 345
    .end local v2           #ret:I
    :sswitch_229
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 346
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 347
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 348
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 349
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    array-length v5, v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 350
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 351
    .restart local v2       #ret:I
    const/16 v5, 0x21

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 356
    .end local v2           #ret:I
    :sswitch_253
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 357
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 358
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getFmt([B)I

    move-result v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 359
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getData([B)[B

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 360
    iget-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    array-length v5, v5

    iput v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 361
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_add_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 362
    .restart local v2       #ret:I
    const/16 v5, 0x22

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 367
    .end local v2           #ret:I
    :sswitch_27d
    invoke-direct {p0, p2}, Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 368
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 369
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_del_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 370
    .restart local v2       #ret:I
    const/16 v5, 0x23

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    goto/16 :goto_26

    .line 375
    .end local v2           #ret:I
    :sswitch_296
    const-string v5, "./WiMAXSupp"

    iput-object v5, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 376
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    invoke-virtual {v5, v1}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_ses_done_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v2

    .line 377
    .restart local v2       #ret:I
    const/16 v5, 0x24

    iget-object v6, v1, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    invoke-direct {p0, v5, v2, v6}, Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V

    .line 380
    iget-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxTurnOffTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_26

    .line 385
    .end local v2           #ret:I
    :sswitch_2ae
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/client/WimaxHandler;->isATMode:Z

    .line 386
    new-instance v5, Lcom/samsung/client/WimaxHandler$WimaxATHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, p2, v6}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;-><init>(Lcom/samsung/client/WimaxHandler;B[BLcom/samsung/client/WimaxHandler$1;)V

    iput-object v5, p0, Lcom/samsung/client/WimaxHandler;->mWimaxATHandler:Lcom/samsung/client/WimaxHandler$WimaxATHandler;

    .line 387
    invoke-virtual {p0}, Lcom/samsung/client/WimaxHandler;->disableJavaWimax()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 388
    invoke-direct {p0}, Lcom/samsung/client/WimaxHandler;->postJavaWimaxDisabled()V

    goto/16 :goto_26

    .line 194
    :sswitch_data_2c4
    .sparse-switch
        -0x80 -> :sswitch_2ae
        0x71 -> :sswitch_27
        0x72 -> :sswitch_4f
        0x73 -> :sswitch_59
        0x74 -> :sswitch_ac
        0x75 -> :sswitch_135
        0x76 -> :sswitch_15f
        0x77 -> :sswitch_178
        0x78 -> :sswitch_3b
        0x79 -> :sswitch_1f7
        0x7a -> :sswitch_20a
        0x7b -> :sswitch_229
        0x7c -> :sswitch_253
        0x7d -> :sswitch_27d
        0x7e -> :sswitch_296
        0x7f -> :sswitch_2ae
    .end sparse-switch
.end method
