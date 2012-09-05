.class Ljcifs/smb/TransCallNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "TransCallNamedPipeResponse.java"


# instance fields
.field private pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 2
    .parameter "pipe"

    .prologue
    .line 25
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 26
    iput-object p1, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 27
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 45
    iget-object v1, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget-object v1, v1, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-eqz v1, :cond_18

    .line 46
    iget-object v1, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget-object v0, v1, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    check-cast v0, Ljcifs/smb/TransactNamedPipeInputStream;

    .line 47
    .local v0, in:Ljcifs/smb/TransactNamedPipeInputStream;
    iget-object v2, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_f
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/TransactNamedPipeInputStream;->receive([BII)I

    .line 49
    iget-object v1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v2

    .line 52
    .end local v0           #in:Ljcifs/smb/TransactNamedPipeInputStream;
    :cond_18
    return p3

    .line 50
    .restart local v0       #in:Ljcifs/smb/TransactNamedPipeInputStream;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v1
.end method

.method readParametersWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransCallNamedPipeResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

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
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
