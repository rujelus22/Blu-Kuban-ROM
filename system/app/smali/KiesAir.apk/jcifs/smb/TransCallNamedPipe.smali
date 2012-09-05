.class Ljcifs/smb/TransCallNamedPipe;
.super Ljcifs/smb/SmbComTransaction;
.source "TransCallNamedPipe.java"


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I


# direct methods
.method constructor <init>(Ljava/lang/String;[BII)V
    .registers 7
    .parameter "pipeName"
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 27
    iput-object p1, p0, Ljcifs/smb/TransCallNamedPipe;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Ljcifs/smb/TransCallNamedPipe;->pipeData:[B

    .line 29
    iput p3, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataOff:I

    .line 30
    iput p4, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    .line 31
    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/TransCallNamedPipe;->command:B

    .line 32
    const/16 v0, 0x54

    iput-byte v0, p0, Ljcifs/smb/TransCallNamedPipe;->subCommand:B

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->timeout:I

    .line 34
    iput v1, p0, Ljcifs/smb/TransCallNamedPipe;->maxParameterCount:I

    .line 35
    const v0, 0xffff

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->maxDataCount:I

    .line 36
    iput-byte v1, p0, Ljcifs/smb/TransCallNamedPipe;->maxSetupCount:B

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/TransCallNamedPipe;->setupCount:I

    .line 38
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransCallNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/TransCallNamedPipe;->name:Ljava/lang/String;

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
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 55
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_16

    .line 56
    sget-object v0, Ljcifs/smb/TransCallNamedPipe;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    .line 57
    sget-object v0, Ljcifs/smb/TransCallNamedPipe;->log:Ljcifs/util/LogStream;

    const-string v1, "TransCallNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 58
    :cond_14
    const/4 v0, 0x0

    .line 61
    :goto_15
    return v0

    .line 60
    :cond_16
    iget-object v0, p0, Ljcifs/smb/TransCallNamedPipe;->pipeData:[B

    iget v1, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataOff:I

    iget v2, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p0, Ljcifs/smb/TransCallNamedPipe;->pipeDataLen:I

    goto :goto_15
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v2, 0x0

    .line 41
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Ljcifs/smb/TransCallNamedPipe;->subCommand:B

    aput-byte v1, p1, p2

    .line 42
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 44
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v2, p1, p2

    .line 45
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 46
    const/4 v1, 0x4

    return v1
.end method
