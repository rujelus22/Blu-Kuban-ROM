.class Ljcifs/smb/SmbComWriteAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComWriteAndX.java"


# static fields
.field private static final CLOSE_BATCH_LIMIT:I

.field private static final READ_ANDX_BATCH_LIMIT:I


# instance fields
.field private b:[B

.field private dataLength:I

.field private dataOffset:I

.field private fid:I

.field private off:I

.field private offset:J

.field private pad:I

.field private remaining:I

.field writeMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 26
    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    .line 28
    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 45
    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    .line 46
    return-void
.end method

.method constructor <init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V
    .registers 10
    .parameter "fid"
    .parameter "offset"
    .parameter "remaining"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .parameter "andx"

    .prologue
    .line 49
    invoke-direct {p0, p8}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 50
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 51
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 52
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 53
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 54
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 55
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 56
    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/SmbComWriteAndX;->command:B

    .line 57
    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .registers 3
    .parameter "command"

    .prologue
    .line 72
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_7

    .line 73
    sget v0, Ljcifs/smb/SmbComWriteAndX;->READ_ANDX_BATCH_LIMIT:I

    .line 78
    :goto_6
    return v0

    .line 75
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 76
    sget v0, Ljcifs/smb/SmbComWriteAndX;->CLOSE_BATCH_LIMIT:I

    goto :goto_6

    .line 78
    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method setParam(IJI[BII)V
    .registers 9
    .parameter "fid"
    .parameter "offset"
    .parameter "remaining"
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 61
    iput p1, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    .line 62
    iput-wide p2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    .line 63
    iput p4, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    .line 64
    iput-object p5, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    .line 65
    iput p6, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    .line 66
    iput p7, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbComWriteAndX;->digest:Ljcifs/smb/SigningDigest;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 129
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWriteAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 112
    move v1, p2

    .line 114
    .local v1, start:I
    :goto_1
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-lez v2, :cond_11

    .line 115
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/16 v2, -0x12

    aput-byte v2, p1, p2

    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    goto :goto_1

    .line 117
    :cond_11
    iget-object v2, p0, Ljcifs/smb/SmbComWriteAndX;->b:[B

    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->off:I

    iget v4, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v2, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    add-int/2addr p2, v2

    .line 120
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 10
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v4, 0x0

    .line 81
    move v2, p2

    .line 83
    .local v2, start:I
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, 0x1a

    iput v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 85
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v5, p0, Ljcifs/smb/SmbComWriteAndX;->headerStart:I

    sub-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 86
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    if-nez v3, :cond_3e

    move v3, v4

    :goto_18
    iput v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    .line 87
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    iget v5, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    add-int/2addr v3, v5

    iput v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    .line 89
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->fid:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    .line 90
    add-int/lit8 p2, p2, 0x2

    .line 91
    iget-wide v5, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    invoke-static {v5, v6, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    .line 92
    add-int/lit8 p2, p2, 0x4

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    move v0, p2

    .end local p2
    .local v0, dstIndex:I
    :goto_32
    const/4 v3, 0x4

    if-ge v1, v3, :cond_43

    .line 94
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v3, -0x1

    aput-byte v3, p1, v0

    .line 93
    add-int/lit8 v1, v1, 0x1

    move v0, p2

    .end local p2
    .restart local v0       #dstIndex:I
    goto :goto_32

    .line 86
    .end local v0           #dstIndex:I
    .end local v1           #i:I
    .restart local p2
    :cond_3e
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->pad:I

    rsub-int/lit8 v3, v3, 0x4

    goto :goto_18

    .line 96
    .end local p2
    .restart local v0       #dstIndex:I
    .restart local v1       #i:I
    :cond_43
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v0}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    .line 97
    add-int/lit8 p2, v0, 0x2

    .line 98
    .end local v0           #dstIndex:I
    .restart local p2
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->remaining:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    .line 99
    add-int/lit8 p2, p2, 0x2

    .line 100
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v4, p1, p2

    .line 101
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v4, p1, v0

    .line 102
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataLength:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    .line 103
    add-int/lit8 p2, p2, 0x2

    .line 104
    iget v3, p0, Ljcifs/smb/SmbComWriteAndX;->dataOffset:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt2(J[BI)V

    .line 105
    add-int/lit8 p2, p2, 0x2

    .line 106
    iget-wide v3, p0, Ljcifs/smb/SmbComWriteAndX;->offset:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljcifs/smb/SmbComWriteAndX;->writeInt4(J[BI)V

    .line 107
    add-int/lit8 p2, p2, 0x4

    .line 109
    sub-int v3, p2, v2

    return v3
.end method
