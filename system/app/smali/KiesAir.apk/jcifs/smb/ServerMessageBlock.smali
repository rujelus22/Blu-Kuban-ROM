.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;
.source "ServerMessageBlock.java"

# interfaces
.implements Ljcifs/util/transport/Request;
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field static final SMB_COM_DELETE:B = 0x6t

.field static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field static final SMB_COM_ECHO:B = 0x2bt

.field static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field static final SMB_COM_MOVE:B = 0x2at

.field static final SMB_COM_NEGOTIATE:B = 0x72t

.field static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field static final SMB_COM_NT_TRANSACT:B = -0x60t

.field static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field static final SMB_COM_READ_ANDX:B = 0x2et

.field static final SMB_COM_RENAME:B = 0x7t

.field static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field static final SMB_COM_TRANSACTION:B = 0x25t

.field static final SMB_COM_TRANSACTION2:B = 0x32t

.field static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field static final SMB_COM_WRITE:B = 0xbt

.field static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field static final header:[B

.field static log:Ljcifs/util/LogStream;


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field batchLevel:I

.field byteCount:I

.field command:B

.field digest:Ljcifs/smb/SigningDigest;

.field errorCode:I

.field extendedSecurity:Z

.field flags:B

.field flags2:I

.field headerStart:I

.field length:I

.field mid:I

.field path:Ljava/lang/String;

.field pid:I

.field received:Z

.field response:Ljcifs/smb/ServerMessageBlock;

.field responseTimeout:J

.field signSeq:I

.field tid:I

.field uid:I

.field useUnicode:Z

.field verifyFailed:Z

.field wordCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    return-void

    :array_10
    .array-data 0x1
        0xfft
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    .line 180
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 183
    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 185
    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 189
    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 190
    sget v0, Ljcifs/smb/ServerMessageBlock;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 192
    return-void
.end method

.method static readInt2([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 56
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .registers 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 60
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

.method static readInt8([BI)J
    .registers 7
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 66
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static readTime([BI)J
    .registers 12
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 80
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    .line 81
    .local v1, low:I
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    .line 82
    .local v0, hi:I
    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long v2, v4, v6

    .line 83
    .local v2, t:J
    const-wide/16 v4, 0x2710

    div-long v4, v2, v4

    const-wide v6, 0xa9730b66800L

    sub-long v2, v4, v6

    .line 84
    return-wide v2
.end method

.method static readUTime([BI)J
    .registers 6
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 93
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static writeInt2(J[BI)V
    .registers 6
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 46
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 47
    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 48
    return-void
.end method

.method static writeInt4(J[BI)V
    .registers 6
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v1, 0x8

    .line 50
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 51
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 52
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 53
    add-int/lit8 p3, p3, 0x1

    shr-long v0, p0, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 54
    return-void
.end method

.method static writeInt8(J[BI)V
    .registers 6
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v1, 0x8

    .line 70
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 71
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 72
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 73
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 74
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 75
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 76
    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v1

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 77
    add-int/lit8 p3, p3, 0x1

    shr-long v0, p0, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 78
    return-void
.end method

.method static writeTime(J[BI)V
    .registers 8
    .parameter "t"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_10

    .line 88
    const-wide v0, 0xa9730b66800L

    add-long/2addr v0, p0

    const-wide/16 v2, 0x2710

    mul-long p0, v0, v2

    .line 90
    :cond_10
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 91
    return-void
.end method

.method static writeUTime(J[BI)V
    .registers 10
    .parameter "t"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const-wide/32 v4, 0x36ee80

    const-wide/16 v2, -0x1

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    cmp-long v0, p0, v2

    if-nez v0, :cond_13

    .line 97
    :cond_f
    invoke-static {v2, v3, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 120
    :goto_12
    return-void

    .line 100
    :cond_13
    sget-object v1, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    monitor-enter v1

    .line 101
    :try_start_16
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 103
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 118
    :cond_30
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_4c

    .line 119
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    goto :goto_12

    .line 107
    :cond_3b
    sub-long/2addr p0, v4

    goto :goto_30

    .line 111
    :cond_3d
    :try_start_3d
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 113
    add-long/2addr p0, v4

    goto :goto_30

    .line 118
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_4c

    throw v0
.end method


# virtual methods
.method decode([BI)I
    .registers 10
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v6, 0x5

    .line 348
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    move v2, p2

    .line 350
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 352
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v3, p1, p2

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 353
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v3, :cond_97

    .line 355
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v1

    .local v1, n:I
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_49

    .line 356
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_49

    .line 357
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wordCount * 2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_49
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int p2, v0, v3

    .line 364
    .end local v0           #bufferIndex:I
    .end local v1           #n:I
    .restart local p2
    :goto_4f
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 365
    add-int/lit8 p2, p2, 0x2

    .line 367
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v3, :cond_90

    .line 369
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result v1

    .restart local v1       #n:I
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq v1, v3, :cond_8d

    .line 370
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_8d

    .line 371
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but readBytesWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_8d
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    .line 381
    .end local v1           #n:I
    :cond_90
    sub-int v3, p2, v2

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 382
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v3

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_97
    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto :goto_4f
.end method

.method encode([BI)I
    .registers 11
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 327
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    move v7, p2

    .line 329
    .local v7, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 330
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 331
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .local v6, dstIndex:I
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 332
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int p2, v6, v0

    .line 333
    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 334
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 335
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .restart local v6       #dstIndex:I
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 336
    add-int/lit8 p2, v6, 0x1

    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 337
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v0

    .line 339
    sub-int v0, p2, v7

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 341
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_59

    .line 342
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 345
    :cond_59
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 441
    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_e

    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .end local p1
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method isResponse()Z
    .registers 3

    .prologue
    .line 408
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method abstract readBytesWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 397
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 398
    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 399
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 400
    add-int/lit8 v0, p2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 401
    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 402
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 403
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 404
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 405
    const/16 v0, 0x20

    return v0
.end method

.method abstract readParameterWordsWireFormat([BI)I
.end method

.method readString([BI)Ljava/lang/String;
    .registers 5
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 232
    const/16 v0, 0x100

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readString([BIIIZ)Ljava/lang/String;
    .registers 12
    .parameter "src"
    .parameter "srcIndex"
    .parameter "srcEnd"
    .parameter "maxLen"
    .parameter "useUnicode"

    .prologue
    const/16 v4, 0x80

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, len:I
    const/4 v1, 0x0

    .line 274
    .local v1, str:Ljava/lang/String;
    if-eqz p5, :cond_58

    .line 276
    :try_start_6
    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_10

    .line 277
    add-int/lit8 p2, p2, 0x1

    .line 279
    :cond_10
    const/4 v0, 0x0

    :goto_11
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    if-ge v5, p3, :cond_25

    .line 280
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_2e

    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_2e

    .line 289
    :cond_25
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 307
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-object v1

    .line 283
    :cond_2e
    if-le v0, p4, :cond_55

    .line 284
    sget-object v5, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_3f

    .line 285
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_3c

    add-int/lit8 v4, p4, 0x8

    :cond_3c
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 286
    :cond_3f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_47} :catch_47

    .line 303
    :catch_47
    move-exception v3

    .line 304
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2d

    .line 305
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2d

    .line 279
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_55
    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    .line 291
    :cond_58
    const/4 v0, 0x0

    :goto_59
    if-ge p2, p3, :cond_61

    .line 292
    add-int v5, p2, v0

    :try_start_5d
    aget-byte v5, p1, v5

    if-nez v5, :cond_6a

    .line 301
    :cond_61
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_2d

    .line 295
    :cond_6a
    if-le v0, p4, :cond_83

    .line 296
    sget-object v5, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_7b

    .line 297
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_78

    add-int/lit8 v4, p4, 0x8

    :cond_78
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 298
    :cond_7b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_83
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_83} :catch_47

    .line 291
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method

.method readString([BIIZ)Ljava/lang/String;
    .registers 11
    .parameter "src"
    .parameter "srcIndex"
    .parameter "maxLen"
    .parameter "useUnicode"

    .prologue
    const/16 v4, 0x80

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, len:I
    const/4 v1, 0x0

    .line 238
    .local v1, str:Ljava/lang/String;
    if-eqz p4, :cond_50

    .line 240
    :try_start_6
    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_10

    .line 241
    add-int/lit8 p2, p2, 0x1

    .line 244
    :cond_10
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_1e

    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-eqz v5, :cond_47

    .line 245
    :cond_1e
    add-int/lit8 v0, v0, 0x2

    .line 246
    if-le v0, p3, :cond_10

    .line 247
    sget-object v5, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_31

    .line 248
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_2e

    add-int/lit8 v4, p3, 0x8

    :cond_2e
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 249
    :cond_31
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_39} :catch_39

    .line 264
    :catch_39
    move-exception v3

    .line 265
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_46

    .line 266
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 268
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_46
    :goto_46
    return-object v1

    .line 252
    :cond_47
    :try_start_47
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_46

    .line 254
    :cond_50
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-eqz v5, :cond_71

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    if-le v0, p3, :cond_50

    .line 257
    sget-object v5, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_69

    .line 258
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_66

    add-int/lit8 v4, p3, 0x8

    :cond_66
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 259
    :cond_69
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    :cond_71
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_78} :catch_39

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_46
.end method

.method readStringLength([BII)I
    .registers 9
    .parameter "src"
    .parameter "srcIndex"
    .parameter "max"

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, len:I
    :goto_1
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eqz v2, :cond_24

    .line 320
    add-int/lit8 v1, v0, 0x1

    .end local v0           #len:I
    .local v1, len:I
    if-le v0, p3, :cond_25

    .line 321
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zero termination not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1           #len:I
    .restart local v0       #len:I
    :cond_24
    return v0

    .end local v0           #len:I
    .restart local v1       #len:I
    :cond_25
    move v0, v1

    .end local v1           #len:I
    .restart local v0       #len:I
    goto :goto_1
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 195
    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 196
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 197
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 198
    iput-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 200
    return-void
.end method

.method stringWireLength(Ljava/lang/String;I)I
    .registers 5
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 311
    .local v0, len:I
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_18

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 313
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 315
    :cond_18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 445
    iget-byte v2, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v2, :sswitch_data_11c

    .line 519
    const-string v0, "UNKNOWN"

    .line 521
    .local v0, c:Ljava/lang/String;
    :goto_8
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v2, :cond_113

    const-string v1, "0"

    .line 522
    .local v1, str:Ljava/lang/String;
    :goto_e
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flags2=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",signSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",wordCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",byteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 447
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :sswitch_b3
    const-string v0, "SMB_COM_NEGOTIATE"

    .line 448
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 450
    .end local v0           #c:Ljava/lang/String;
    :sswitch_b7
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    .line 451
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 453
    .end local v0           #c:Ljava/lang/String;
    :sswitch_bb
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    .line 454
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 456
    .end local v0           #c:Ljava/lang/String;
    :sswitch_bf
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    .line 457
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 459
    .end local v0           #c:Ljava/lang/String;
    :sswitch_c3
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    .line 460
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 462
    .end local v0           #c:Ljava/lang/String;
    :sswitch_c7
    const-string v0, "SMB_COM_TRANSACTION"

    .line 463
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 465
    .end local v0           #c:Ljava/lang/String;
    :sswitch_cb
    const-string v0, "SMB_COM_TRANSACTION2"

    .line 466
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 468
    .end local v0           #c:Ljava/lang/String;
    :sswitch_cf
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    .line 469
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 471
    .end local v0           #c:Ljava/lang/String;
    :sswitch_d3
    const-string v0, "SMB_COM_FIND_CLOSE2"

    .line 472
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 474
    .end local v0           #c:Ljava/lang/String;
    :sswitch_d7
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    .line 475
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 477
    .end local v0           #c:Ljava/lang/String;
    :sswitch_db
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    .line 478
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 480
    .end local v0           #c:Ljava/lang/String;
    :sswitch_df
    const-string v0, "SMB_COM_ECHO"

    .line 481
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 483
    .end local v0           #c:Ljava/lang/String;
    :sswitch_e3
    const-string v0, "SMB_COM_MOVE"

    .line 484
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 486
    .end local v0           #c:Ljava/lang/String;
    :sswitch_e7
    const-string v0, "SMB_COM_RENAME"

    .line 487
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 489
    .end local v0           #c:Ljava/lang/String;
    :sswitch_eb
    const-string v0, "SMB_COM_DELETE"

    .line 490
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 492
    .end local v0           #c:Ljava/lang/String;
    :sswitch_ef
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    .line 493
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 495
    .end local v0           #c:Ljava/lang/String;
    :sswitch_f3
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    .line 496
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 498
    .end local v0           #c:Ljava/lang/String;
    :sswitch_f7
    const-string v0, "SMB_COM_OPEN_ANDX"

    .line 499
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 501
    .end local v0           #c:Ljava/lang/String;
    :sswitch_fb
    const-string v0, "SMB_COM_READ_ANDX"

    .line 502
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 504
    .end local v0           #c:Ljava/lang/String;
    :sswitch_ff
    const-string v0, "SMB_COM_CLOSE"

    .line 505
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 507
    .end local v0           #c:Ljava/lang/String;
    :sswitch_103
    const-string v0, "SMB_COM_WRITE_ANDX"

    .line 508
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 510
    .end local v0           #c:Ljava/lang/String;
    :sswitch_107
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    .line 511
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 513
    .end local v0           #c:Ljava/lang/String;
    :sswitch_10b
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 514
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 516
    .end local v0           #c:Ljava/lang/String;
    :sswitch_10f
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    .line 517
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 521
    :cond_113
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v2}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 445
    nop

    :sswitch_data_11c
    .sparse-switch
        -0x60 -> :sswitch_10b
        -0x5f -> :sswitch_10f
        -0x5e -> :sswitch_f3
        0x0 -> :sswitch_107
        0x1 -> :sswitch_ef
        0x4 -> :sswitch_ff
        0x6 -> :sswitch_eb
        0x7 -> :sswitch_e7
        0x8 -> :sswitch_bf
        0x10 -> :sswitch_c3
        0x25 -> :sswitch_c7
        0x26 -> :sswitch_cf
        0x2a -> :sswitch_e3
        0x2b -> :sswitch_df
        0x2d -> :sswitch_f7
        0x2e -> :sswitch_fb
        0x2f -> :sswitch_103
        0x32 -> :sswitch_cb
        0x34 -> :sswitch_d3
        0x71 -> :sswitch_d7
        0x72 -> :sswitch_b3
        0x73 -> :sswitch_b7
        0x74 -> :sswitch_db
        0x75 -> :sswitch_bb
    .end sparse-switch
.end method

.method abstract writeBytesWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 385
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->header:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    .line 387
    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    .line 388
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 389
    add-int/lit8 p2, p2, 0x18

    .line 390
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 391
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 392
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 393
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x6

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 394
    const/16 v0, 0x20

    return v0
.end method

.method abstract writeParameterWordsWireFormat([BI)I
.end method

.method writeString(Ljava/lang/String;[BI)I
    .registers 5
    .parameter "str"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 202
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result v0

    return v0
.end method

.method writeString(Ljava/lang/String;[BIZ)I
    .registers 12
    .parameter "str"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "useUnicode"

    .prologue
    .line 205
    move v2, p3

    .line 208
    .local v2, start:I
    if-eqz p4, :cond_35

    .line 210
    :try_start_3
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v4, p3, v4

    rem-int/lit8 v4, v4, 0x2
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_49

    if-eqz v4, :cond_11

    .line 211
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, dstIndex:I
    const/4 v4, 0x0

    :try_start_e
    aput-byte v4, p2, p3
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_10} :catch_57

    move p3, v1

    .line 213
    .end local v1           #dstIndex:I
    .restart local p3
    :cond_11
    :try_start_11
    const-string v4, "UTF-16LE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v5, p2, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_24} :catch_49

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    .line 216
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_2b
    aput-byte v4, p2, p3
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_2d} :catch_57

    .line 217
    add-int/lit8 p3, v1, 0x1

    .end local v1           #dstIndex:I
    .restart local p3
    const/4 v4, 0x0

    :try_start_30
    aput-byte v4, p2, v1

    .line 229
    :cond_32
    :goto_32
    sub-int v4, p3, v2

    return v4

    .line 219
    :cond_35
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 220
    .local v0, b:[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, p2, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    array-length v4, v0
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_41} :catch_49

    add-int/2addr p3, v4

    .line 222
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_45
    aput-byte v4, p2, p3
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_47} :catch_57

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_32

    .line 224
    .end local v0           #b:[B
    :catch_49
    move-exception v3

    .line 225
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    :goto_4a
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_32

    .line 226
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_32

    .line 224
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    .end local p3
    .restart local v1       #dstIndex:I
    :catch_57
    move-exception v3

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_4a
.end method
