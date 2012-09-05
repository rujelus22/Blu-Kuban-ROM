.class Ljcifs/smb/SmbComBlankResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComBlankResponse.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComBlankResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
