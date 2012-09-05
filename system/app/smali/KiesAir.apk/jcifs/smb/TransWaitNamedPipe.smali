.class Ljcifs/smb/TransWaitNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransWaitNamedPipe.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "pipeName"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

    .line 25
    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/TransWaitNamedPipe;->command:B

    .line 26
    const/16 v0, 0x53

    iput-byte v0, p0, Ljcifs/smb/TransWaitNamedPipe;->subCommand:B

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/TransWaitNamedPipe;->timeout:I

    .line 28
    iput v1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxParameterCount:I

    .line 29
    iput v1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxDataCount:I

    .line 30
    iput-byte v1, p0, Ljcifs/smb/TransWaitNamedPipe;->maxSetupCount:B

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/TransWaitNamedPipe;->setupCount:I

    .line 32
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransWaitNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/TransWaitNamedPipe;->name:Ljava/lang/String;

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
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v2, 0x0

    .line 35
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Ljcifs/smb/TransWaitNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    .line 36
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 37
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v2, p1, p2

    .line 38
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 39
    const/4 v1, 0x4

    return v1
.end method
