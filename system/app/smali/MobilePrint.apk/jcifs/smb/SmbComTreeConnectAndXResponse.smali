.class Ljcifs/smb/SmbComTreeConnectAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComTreeConnectAndXResponse.java"


# static fields
.field private static final SMB_SHARE_IS_IN_DFS:I = 0x2

.field private static final SMB_SUPPORT_SEARCH_BITS:I = 0x1


# instance fields
.field nativeFileSystem:Ljava/lang/String;

.field service:Ljava/lang/String;

.field shareIsInDfs:Z

.field supportSearchBits:Z


# direct methods
.method constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 3
    .parameter "andx"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 8
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 47
    move v1, p2

    .line 49
    .local v1, start:I
    const/16 v3, 0x20

    invoke-virtual {p0, p1, p2, v3}, Ljcifs/smb/SmbComTreeConnectAndXResponse;->readStringLength([BII)I

    move-result v0

    .line 51
    .local v0, len:I
    :try_start_7
    new-instance v3, Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_10} :catch_16

    .line 55
    add-int/lit8 v3, v0, 0x1

    add-int/2addr p2, v3

    .line 65
    sub-int v3, p2, v1

    :goto_15
    return v3

    .line 52
    :catch_16
    move-exception v2

    .line 53
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    goto :goto_15
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 7
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    .line 43
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_17

    :goto_12
    iput-boolean v1, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    .line 44
    return v3

    :cond_15
    move v0, v2

    .line 42
    goto :goto_a

    :cond_17
    move v1, v2

    .line 43
    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComTreeConnectAndXResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string v2, ",supportSearchBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->supportSearchBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string v2, ",shareIsInDfs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, ",nativeFileSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndXResponse;->nativeFileSystem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
