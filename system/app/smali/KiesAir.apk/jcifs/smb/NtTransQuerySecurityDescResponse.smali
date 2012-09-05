.class Ljcifs/smb/NtTransQuerySecurityDescResponse;
.super Ljcifs/smb/SmbComNtTransactionResponse;
.source "NtTransQuerySecurityDescResponse.java"


# instance fields
.field securityDescriptor:Ljcifs/smb/SecurityDescriptor;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransactionResponse;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 8
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 48
    move v1, p2

    .line 50
    .local v1, start:I
    iget v2, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->errorCode:I

    if-eqz v2, :cond_7

    .line 51
    const/4 v2, 0x4

    .line 60
    :goto_6
    return v2

    .line 54
    :cond_7
    :try_start_7
    new-instance v2, Ljcifs/smb/SecurityDescriptor;

    invoke-direct {v2}, Ljcifs/smb/SecurityDescriptor;-><init>()V

    iput-object v2, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    .line 55
    iget-object v2, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    invoke-virtual {v2, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_18

    move-result v2

    add-int/2addr p2, v2

    .line 60
    sub-int v2, p2, v1

    goto :goto_6

    .line 56
    :catch_18
    move-exception v0

    .line 57
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 44
    invoke-static {p1, p2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->length:I

    .line 45
    const/4 v0, 0x4

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NtTransQuerySecurityResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComNtTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
