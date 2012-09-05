.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;
.source "ServerMessageBlock.java"

# interfaces
.implements Ljcifs/util/transport/Request;
.implements Ljcifs/smb/SmbConstants;


# static fields
.field static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field static final SMB_COM_CLOSE:B = 0x4t

.field static final SMB_COM_CLOSE_PRINT_FILE:B = -0x3et

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

.field static final SMB_COM_OPEN_PRINT_FILE:B = -0x40t

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

.field static final SMB_COM_WRITE_PRINT_FILE:B = -0x3ft

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
    .registers 3

    .prologue
    .line 34
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 37
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    .line 36
    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    .line 32
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    .line 184
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 187
    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 189
    iput-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 193
    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 194
    sget v0, Ljcifs/smb/ServerMessageBlock;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 196
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

    .line 57
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 56
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

    .line 61
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 60
    add-int/2addr v0, v1

    .line 62
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 60
    add-int/2addr v0, v1

    .line 63
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 60
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

    .line 67
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 66
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

    if-eqz v0, :cond_3c

    .line 103
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 107
    sub-long/2addr p0, v4

    .line 100
    :cond_31
    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_4b

    .line 119
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    goto :goto_12

    .line 111
    :cond_3c
    :try_start_3c
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->TZ:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 113
    add-long/2addr p0, v4

    goto :goto_31

    .line 100
    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4b

    throw v0
.end method


# virtual methods
.method decode([BI)I
    .registers 10
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v6, 0x5

    .line 352
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    move v2, p2

    .line 354
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 356
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v3, p1, p2

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 357
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v3, :cond_8b

    .line 359
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v1

    .local v1, n:I
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v1, v3, :cond_43

    .line 360
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_43

    .line 361
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wordCount * 2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 362
    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 365
    :cond_43
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int p2, v0, v3

    .line 368
    .end local v0           #bufferIndex:I
    .end local v1           #n:I
    .restart local p2
    :goto_49
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 369
    add-int/lit8 p2, p2, 0x2

    .line 371
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v3, :cond_84

    .line 373
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result v1

    .restart local v1       #n:I
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq v1, v3, :cond_81

    .line 374
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v6, :cond_81

    .line 375
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "byteCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    const-string v5, " but readBytesWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_81
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    .line 385
    .end local v1           #n:I
    :cond_84
    sub-int v3, p2, v2

    iput v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 386
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v3

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_8b
    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto :goto_49
.end method

.method encode([BI)I
    .registers 11
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 331
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    move v7, p2

    .line 333
    .local v7, start:I
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 334
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 335
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .local v6, dstIndex:I
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 336
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int p2, v6, v0

    .line 337
    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 338
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 339
    add-int/lit8 v6, p2, 0x1

    .end local p2
    .restart local v6       #dstIndex:I
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 340
    add-int/lit8 p2, v6, 0x1

    .end local v6           #dstIndex:I
    .restart local p2
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 341
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v0

    .line 343
    sub-int v0, p2, v7

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 345
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v0, :cond_59

    .line 346
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 349
    :cond_59
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 445
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
    .line 442
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method isResponse()Z
    .registers 3

    .prologue
    .line 412
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
    .line 401
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 402
    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 403
    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 404
    add-int/lit8 v0, p2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 405
    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 406
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 407
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 408
    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 409
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
    .line 236
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

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, len:I
    const/4 v1, 0x0

    .line 278
    .local v1, str:Ljava/lang/String;
    if-eqz p5, :cond_54

    .line 280
    :try_start_6
    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_10

    .line 281
    add-int/lit8 p2, p2, 0x1

    .line 283
    :cond_10
    const/4 v0, 0x0

    :goto_11
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    if-lt v5, p3, :cond_20

    .line 293
    :cond_17
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 311
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v1

    .line 284
    :cond_20
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_2e

    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-eqz v5, :cond_17

    .line 287
    :cond_2e
    if-le v0, p4, :cond_51

    .line 288
    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_3d

    .line 289
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_3a

    add-int/lit8 v4, p4, 0x8

    :cond_3a
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 290
    :cond_3d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_45} :catch_45

    .line 307
    :catch_45
    move-exception v3

    .line 308
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    .line 309
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1f

    .line 283
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_51
    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    .line 295
    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-lt p2, p3, :cond_60

    .line 305
    :cond_57
    :try_start_57
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_1f

    .line 296
    :cond_60
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-eqz v5, :cond_57

    .line 299
    if-le v0, p4, :cond_7d

    .line 300
    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_75

    .line 301
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v4, :cond_72

    add-int/lit8 v4, p4, 0x8

    :cond_72
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 302
    :cond_75
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_57 .. :try_end_7d} :catch_45

    .line 295
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method readString([BIIZ)Ljava/lang/String;
    .registers 11
    .parameter "src"
    .parameter "srcIndex"
    .parameter "maxLen"
    .parameter "useUnicode"

    .prologue
    const/16 v4, 0x80

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, len:I
    const/4 v1, 0x0

    .line 242
    .local v1, str:Ljava/lang/String;
    if-eqz p4, :cond_65

    .line 244
    :try_start_6
    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v5, p2, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_10

    .line 245
    add-int/lit8 p2, p2, 0x1

    .line 247
    :cond_10
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_27

    .line 248
    add-int v5, p2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_27

    .line 256
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #str:Ljava/lang/String;
    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .line 272
    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    :cond_26
    :goto_26
    return-object v1

    .line 249
    :cond_27
    add-int/lit8 v0, v0, 0x2

    .line 250
    if-le v0, p3, :cond_10

    .line 251
    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_38

    .line 252
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_35

    add-int/lit8 v4, p3, 0x8

    :cond_35
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 253
    :cond_38
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_40} :catch_40

    .line 268
    :catch_40
    move-exception v3

    .line 269
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_26

    .line 270
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_26

    .line 259
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    .line 260
    if-le v0, p3, :cond_65

    .line 261
    :try_start_50
    sget v5, Ljcifs/util/LogStream;->level:I

    if-lez v5, :cond_5d

    .line 262
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v4, :cond_5a

    add-int/lit8 v4, p3, 0x8

    :cond_5a
    invoke-static {v5, p1, p2, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 263
    :cond_5d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "zero termination not found"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_65
    add-int v5, p2, v0

    aget-byte v5, p1, v5

    if-nez v5, :cond_4c

    .line 266
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_72} :catch_40

    .end local v1           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #str:Ljava/lang/String;
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_26
.end method

.method readStringLength([BII)I
    .registers 9
    .parameter "src"
    .parameter "srcIndex"
    .parameter "max"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, len:I
    :goto_1
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-nez v2, :cond_8

    .line 328
    return v0

    .line 324
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .end local v0           #len:I
    .local v1, len:I
    if-le v0, p3, :cond_21

    .line 325
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zero termination not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    move v0, v1

    .end local v1           #len:I
    .restart local v0       #len:I
    goto :goto_1
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 200
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 201
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 202
    iput-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 204
    return-void
.end method

.method stringWireLength(Ljava/lang/String;I)I
    .registers 5
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 315
    .local v0, len:I
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_18

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 317
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 319
    :cond_18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 449
    iget-byte v2, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v2, :sswitch_data_118

    .line 523
    const-string v0, "UNKNOWN"

    .line 525
    .local v0, c:Ljava/lang/String;
    :goto_8
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v2, :cond_10f

    const-string v1, "0"

    .line 526
    .local v1, str:Ljava/lang/String;
    :goto_e
    new-instance v2, Ljava/lang/String;

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "command="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 528
    const-string v4, ",received="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 529
    const-string v4, ",errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    const-string v4, ",flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 531
    const-string v4, ",flags2=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    const-string v4, ",signSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 533
    const-string v4, ",tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 534
    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 535
    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 536
    const-string v4, ",mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 537
    const-string v4, ",wordCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 538
    const-string v4, ",byteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 527
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 451
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :sswitch_af
    const-string v0, "SMB_COM_NEGOTIATE"

    .line 452
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 454
    .end local v0           #c:Ljava/lang/String;
    :sswitch_b3
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    .line 455
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 457
    .end local v0           #c:Ljava/lang/String;
    :sswitch_b7
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    .line 458
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 460
    .end local v0           #c:Ljava/lang/String;
    :sswitch_bb
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    .line 461
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 463
    .end local v0           #c:Ljava/lang/String;
    :sswitch_bf
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    .line 464
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 466
    .end local v0           #c:Ljava/lang/String;
    :sswitch_c3
    const-string v0, "SMB_COM_TRANSACTION"

    .line 467
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 469
    .end local v0           #c:Ljava/lang/String;
    :sswitch_c7
    const-string v0, "SMB_COM_TRANSACTION2"

    .line 470
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 472
    .end local v0           #c:Ljava/lang/String;
    :sswitch_cb
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    .line 473
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 475
    .end local v0           #c:Ljava/lang/String;
    :sswitch_cf
    const-string v0, "SMB_COM_FIND_CLOSE2"

    .line 476
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 478
    .end local v0           #c:Ljava/lang/String;
    :sswitch_d3
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    .line 479
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 481
    .end local v0           #c:Ljava/lang/String;
    :sswitch_d7
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    .line 482
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 484
    .end local v0           #c:Ljava/lang/String;
    :sswitch_db
    const-string v0, "SMB_COM_ECHO"

    .line 485
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 487
    .end local v0           #c:Ljava/lang/String;
    :sswitch_df
    const-string v0, "SMB_COM_MOVE"

    .line 488
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 490
    .end local v0           #c:Ljava/lang/String;
    :sswitch_e3
    const-string v0, "SMB_COM_RENAME"

    .line 491
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 493
    .end local v0           #c:Ljava/lang/String;
    :sswitch_e7
    const-string v0, "SMB_COM_DELETE"

    .line 494
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 496
    .end local v0           #c:Ljava/lang/String;
    :sswitch_eb
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    .line 497
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 499
    .end local v0           #c:Ljava/lang/String;
    :sswitch_ef
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    .line 500
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 502
    .end local v0           #c:Ljava/lang/String;
    :sswitch_f3
    const-string v0, "SMB_COM_OPEN_ANDX"

    .line 503
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 505
    .end local v0           #c:Ljava/lang/String;
    :sswitch_f7
    const-string v0, "SMB_COM_READ_ANDX"

    .line 506
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 508
    .end local v0           #c:Ljava/lang/String;
    :sswitch_fb
    const-string v0, "SMB_COM_CLOSE"

    .line 509
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 511
    .end local v0           #c:Ljava/lang/String;
    :sswitch_ff
    const-string v0, "SMB_COM_WRITE_ANDX"

    .line 512
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 514
    .end local v0           #c:Ljava/lang/String;
    :sswitch_103
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    .line 515
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 517
    .end local v0           #c:Ljava/lang/String;
    :sswitch_107
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 518
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 520
    .end local v0           #c:Ljava/lang/String;
    :sswitch_10b
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    .line 521
    .restart local v0       #c:Ljava/lang/String;
    goto/16 :goto_8

    .line 525
    :cond_10f
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v2}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 449
    nop

    :sswitch_data_118
    .sparse-switch
        -0x60 -> :sswitch_107
        -0x5f -> :sswitch_10b
        -0x5e -> :sswitch_ef
        0x0 -> :sswitch_103
        0x1 -> :sswitch_eb
        0x4 -> :sswitch_fb
        0x6 -> :sswitch_e7
        0x7 -> :sswitch_e3
        0x8 -> :sswitch_bb
        0x10 -> :sswitch_bf
        0x25 -> :sswitch_c3
        0x26 -> :sswitch_cb
        0x2a -> :sswitch_df
        0x2b -> :sswitch_db
        0x2d -> :sswitch_f3
        0x2e -> :sswitch_f7
        0x2f -> :sswitch_ff
        0x32 -> :sswitch_c7
        0x34 -> :sswitch_cf
        0x71 -> :sswitch_d3
        0x72 -> :sswitch_af
        0x73 -> :sswitch_b3
        0x74 -> :sswitch_d7
        0x75 -> :sswitch_b7
    .end sparse-switch
.end method

.method abstract writeBytesWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 389
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/ServerMessageBlock;->header:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    .line 391
    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    .line 392
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 393
    add-int/lit8 p2, p2, 0x18

    .line 394
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 395
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 396
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 397
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x6

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 398
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
    .line 206
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
    .line 209
    move v2, p3

    .line 212
    .local v2, start:I
    if-eqz p4, :cond_35

    .line 214
    :try_start_3
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v4, p3, v4

    rem-int/lit8 v4, v4, 0x2
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_49

    if-eqz v4, :cond_11

    .line 215
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, dstIndex:I
    const/4 v4, 0x0

    :try_start_e
    aput-byte v4, p2, p3
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_10} :catch_55

    move p3, v1

    .line 217
    .end local v1           #dstIndex:I
    .restart local p3
    :cond_11
    :try_start_11
    const-string v4, "UTF-16LE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 217
    invoke-static {v4, v5, p2, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_24} :catch_49

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    .line 220
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_2b
    aput-byte v4, p2, p3
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_2d} :catch_55

    .line 221
    add-int/lit8 p3, v1, 0x1

    .end local v1           #dstIndex:I
    .restart local p3
    const/4 v4, 0x0

    :try_start_30
    aput-byte v4, p2, v1

    .line 233
    :cond_32
    :goto_32
    sub-int v4, p3, v2

    return v4

    .line 223
    :cond_35
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 224
    .local v0, b:[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, p2, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    array-length v4, v0
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_41} :catch_49

    add-int/2addr p3, v4

    .line 226
    add-int/lit8 v1, p3, 0x1

    .end local p3
    .restart local v1       #dstIndex:I
    const/4 v4, 0x0

    :try_start_45
    aput-byte v4, p2, p3
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_47} :catch_55

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_32

    .line 228
    .end local v0           #b:[B
    :catch_49
    move-exception v3

    .line 229
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    :goto_4a
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_32

    .line 230
    sget-object v4, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_32

    .line 228
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    .end local p3
    .restart local v1       #dstIndex:I
    :catch_55
    move-exception v3

    move p3, v1

    .end local v1           #dstIndex:I
    .restart local p3
    goto :goto_4a
.end method
