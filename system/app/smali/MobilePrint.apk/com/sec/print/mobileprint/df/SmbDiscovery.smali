.class public Lcom/sec/print/mobileprint/df/SmbDiscovery;
.super Ljava/lang/Object;
.source "SmbDiscovery.java"


# static fields
.field public static final SMB_ERROR_AUTHENTICATION:I = -0x3

.field public static final SMB_ERROR_GENERAL:I = -0x1

.field public static final SMB_ERROR_UNKNOWN_HOST:I = -0x2

.field public static final SMB_STATE_GETTING_PRINTER_LIST:I = 0x1

.field public static final SMB_STATE_NONE:I


# instance fields
.field private final devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "jcifs.encoding"

    const-string v1, "US-ASCII"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const-string v0, "jcifs.smb.lmCompatibility"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    const-string v0, "jcifs.netbios.hostname"

    const-string v1, "winprint"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    const-string v0, "spoolss"

    invoke-static {}, Ljcifs/dcerpc/msrpc/spoolss;->getSyntax()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcBinding;->addInterface(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->devices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100([BI)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->readInt4([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/print/mobileprint/df/SmbDiscovery;[BII)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->readString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->devices:Ljava/util/List;

    return-object v0
.end method

.method private static readInt4([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 226
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method private readString([BII)Ljava/lang/String;
    .registers 9
    .parameter "src"
    .parameter "srcIndex"
    .parameter "maxLen"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, len:I
    const/4 v1, 0x0

    .line 209
    .local v1, str:Ljava/lang/String;
    :try_start_2
    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_8

    .line 210
    add-int/lit8 p2, p2, 0x1

    .line 213
    :cond_8
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-nez v3, :cond_16

    add-int v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_24

    .line 214
    :cond_16
    add-int/lit8 v0, v0, 0x2

    .line 215
    if-le v0, p3, :cond_8

    .line 216
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "zero termination not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :catch_22
    move-exception v3

    .line 222
    :goto_23
    return-object v1

    .line 219
    :cond_24
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2b} :catch_22

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 221
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_23
.end method


# virtual methods
.method public getDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->devices:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public startDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "host"
    .parameter "domain"
    .parameter "user"
    .parameter "password"

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_20

    .line 53
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;-><init>(Lcom/sec/print/mobileprint/df/SmbDiscovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    .line 182
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    :cond_20
    monitor-exit p0

    .line 185
    return-void

    .line 184
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public stopDiscovery()V
    .registers 2

    .prologue
    .line 188
    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 191
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 192
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery;->thread:Ljava/lang/Thread;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_12} :catch_17

    .line 197
    :cond_12
    :goto_12
    :try_start_12
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v0

    .line 195
    :catch_17
    move-exception v0

    goto :goto_12
.end method
