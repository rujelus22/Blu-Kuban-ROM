.class Ljcifs/smb/SmbComQueryInformationResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComQueryInformationResponse.java"

# interfaces
.implements Ljcifs/smb/Info;


# instance fields
.field private fileAttributes:I

.field private fileSize:I

.field private lastWriteTime:J

.field private serverTimeZoneOffset:J


# direct methods
.method constructor <init>(J)V
    .registers 6
    .parameter "serverTimeZoneOffset"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 26
    iput v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 29
    iput v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 32
    iput-wide p1, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    .line 33
    const/16 v0, 0x8

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 34
    return-void
.end method


# virtual methods
.method public getAttributes()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    return v0
.end method

.method public getCreateTime()J
    .registers 5

    .prologue
    .line 40
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastWriteTime()J
    .registers 5

    .prologue
    .line 43
    iget-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    iget-wide v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->serverTimeZoneOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 46
    iget v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 55
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-nez v0, :cond_6

    .line 56
    const/4 v0, 0x0

    .line 63
    :goto_5
    return v0

    .line 58
    :cond_6
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    .line 59
    add-int/lit8 p2, p2, 0x2

    .line 60
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readUTime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    .line 61
    add-int/lit8 p2, p2, 0x4

    .line 62
    invoke-static {p1, p2}, Ljcifs/smb/SmbComQueryInformationResponse;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    .line 63
    const/16 v0, 0x14

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 69
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComQueryInformationResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/SmbComQueryInformationResponse;->lastWriteTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComQueryInformationResponse;->fileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
