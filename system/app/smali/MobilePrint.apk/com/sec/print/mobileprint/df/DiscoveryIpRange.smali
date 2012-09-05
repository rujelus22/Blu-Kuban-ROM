.class public Lcom/sec/print/mobileprint/df/DiscoveryIpRange;
.super Lcom/sec/print/mobileprint/df/DiscoveryBase;
.source "DiscoveryIpRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;
    }
.end annotation


# instance fields
.field private final addressScopeId:I

.field private final checkedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final concurrentRequestsNumber:I

.field private firstNonCheckedAddress:Ljava/net/InetAddress;

.field private final fromAddress:[I

.field private percentComplete:D

.field private progress:D

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private snmp1Discovery:Z

.field private snmp1ReadComunity:Ljava/lang/String;

.field private snmp2Discovery:Z

.field private snmp2ReadComunity:Ljava/lang/String;

.field private final timeout:J

.field private final toAddress:[I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;JII)V
    .registers 12
    .parameter "fromAddress"
    .parameter "toAddress"
    .parameter "timeout"
    .parameter "concurrentThreadsNumber"
    .parameter "concurrentRequestsNumber"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p6, p5}, Lcom/sec/print/mobileprint/df/DiscoveryBase;-><init>(II)V

    .line 24
    iput-wide v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->percentComplete:D

    .line 25
    iput-wide v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->progress:D

    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;

    .line 31
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1Discovery:Z

    .line 34
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2Discovery:Z

    .line 83
    iput-wide p3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->timeout:J

    .line 84
    iput p6, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->concurrentRequestsNumber:I

    .line 85
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 86
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;

    .line 87
    invoke-static {p1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressToArray(Ljava/net/InetAddress;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    .line 88
    invoke-static {p2}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressToArray(Ljava/net/InetAddress;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    .line 89
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_4f

    .line 90
    check-cast p1, Ljava/net/Inet6Address;

    .end local p1
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v1

    iput v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressScopeId:I

    .line 94
    :goto_3a
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    array-length v2, v2

    if-eq v1, v2, :cond_52

    .line 95
    const-string v1, "DiscoveryIpRange"

    const-string v2, "fromAddress length is not equal to toAddress length"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 92
    .restart local p1
    :cond_4f
    iput v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressScopeId:I

    goto :goto_3a

    .line 98
    .end local p1
    :cond_52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_53
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    array-length v1, v1

    if-ge v0, v1, :cond_79

    .line 99
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_6f

    .line 100
    const-string v1, "DiscoveryIpRange"

    const-string v2, "fromAddress is greater than toAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_6f
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_7f

    .line 107
    :cond_79
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    invoke-static {v1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->increaseAddressArray([I)V

    .line 108
    return-void

    .line 98
    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_53
.end method

.method static synthetic access$000(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1Discovery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2Discovery:Z

    return v0
.end method

.method static synthetic access$1000([I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->increaseAddressArray([I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressScopeId:I

    return v0
.end method

.method static synthetic access$1200([II)Ljava/net/InetAddress;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->arrayToAddress([II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->timeout:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1ReadComunity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2ReadComunity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$518(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;D)D
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->percentComplete:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->percentComplete:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)D
    .registers 3
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->progress:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->checkedAddresses:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;)Ljava/net/InetAddress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$900(Ljava/net/InetAddress;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressToArray(Ljava/net/InetAddress;)[I

    move-result-object v0

    return-object v0
.end method

.method private static addressToArray(Ljava/net/InetAddress;)[I
    .registers 5
    .parameter "address"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 152
    .local v1, byteArray:[B
    array-length v3, v1

    new-array v0, v3, [I

    .line 153
    .local v0, array:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 154
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 156
    :cond_14
    return-object v0
.end method

.method private static arrayToAddress([II)Ljava/net/InetAddress;
    .registers 7
    .parameter "array"
    .parameter "scopeId"

    .prologue
    .line 160
    array-length v3, p0

    new-array v2, v3, [B

    .line 161
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_f

    .line 162
    aget v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 165
    :cond_f
    :try_start_f
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1c

    if-lez p1, :cond_1c

    .line 166
    const/4 v3, 0x0

    invoke-static {v3, v2, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v3

    .line 168
    :goto_1b
    return-object v3

    :cond_1c
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_1f} :catch_21

    move-result-object v3

    goto :goto_1b

    .line 170
    :catch_21
    move-exception v0

    .line 171
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static increaseAddressArray([I)V
    .registers 4
    .parameter "array"

    .prologue
    .line 176
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_17

    .line 177
    aget v1, p0, v0

    const/16 v2, 0xff

    if-ne v1, v2, :cond_11

    .line 178
    const/4 v1, 0x0

    aput v1, p0, v0

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 180
    :cond_11
    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 184
    :cond_17
    return-void
.end method

.method private static rangeSize([I[I)I
    .registers 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 187
    const/4 v1, 0x1

    .local v1, m:I
    const/4 v2, 0x0

    .line 188
    .local v2, result:I
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_5
    if-ltz v0, :cond_13

    .line 189
    aget v3, p1, v0

    aget v4, p0, v0

    sub-int/2addr v3, v4

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 190
    mul-int/lit16 v1, v1, 0x100

    .line 188
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 192
    :cond_13
    return v2
.end method


# virtual methods
.method public bridge synthetic addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V

    return-void
.end method

.method public enableSnmp1(Ljava/lang/String;)V
    .registers 3
    .parameter "readComunity"

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1Discovery:Z

    .line 112
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp1ReadComunity:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public enableSnmp2(Ljava/lang/String;)V
    .registers 3
    .parameter "readComunity"

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2Discovery:Z

    .line 117
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->snmp2ReadComunity:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected getDiscoveryPercentComplete()D
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->percentComplete:D

    return-wide v0
.end method

.method public getFirstNonCheckedAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->firstNonCheckedAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public bridge synthetic getPercentComplete()D
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->getPercentComplete()D

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .registers 9

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 126
    iget v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->concurrentRequestsNumber:I

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 128
    .local v2, executor:Ljava/util/concurrent/ExecutorService;
    :try_start_8
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    invoke-static {v3, v4}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->rangeSize([I[I)I

    move-result v3

    int-to-double v3, v3

    div-double v3, v6, v3

    iput-wide v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->progress:D

    .line 129
    :goto_15
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->isStopped()Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->toAddress:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 130
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    iget v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->addressScopeId:I

    invoke-static {v3, v4}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->arrayToAddress([II)Ljava/net/InetAddress;

    move-result-object v0

    .line 131
    .local v0, address:Ljava/net/InetAddress;
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 132
    new-instance v3, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;

    invoke-direct {v3, p0, v0}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange$DeviceChecker;-><init>(Lcom/sec/print/mobileprint/df/DiscoveryIpRange;Ljava/net/InetAddress;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 133
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->fromAddress:[I

    invoke-static {v3}, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->increaseAddressArray([I)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_3f} :catch_40
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_3f} :catch_5c

    goto :goto_15

    .line 137
    .end local v0           #address:Ljava/net/InetAddress;
    :catch_40
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 143
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_4b
    iput-wide v6, p0, Lcom/sec/print/mobileprint/df/DiscoveryIpRange;->percentComplete:D

    .line 144
    return-void

    .line 135
    :cond_4e
    :try_start_4e
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 136
    const-wide v3, 0x7fffffffffffffffL

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_5b} :catch_40
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_4b

    .line 140
    :catch_5c
    move-exception v1

    .line 141
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_4b
.end method

.method public bridge synthetic start()V
    .registers 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->stop()V

    return-void
.end method

.method public bridge synthetic waitDiscovery()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->waitDiscovery()V

    return-void
.end method
