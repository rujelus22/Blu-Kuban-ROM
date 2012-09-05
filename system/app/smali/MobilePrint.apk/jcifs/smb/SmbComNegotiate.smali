.class Ljcifs/smb/SmbComNegotiate;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComNegotiate.java"


# static fields
.field private static final DIALECTS:Ljava/lang/String; = "\u0002NT LM 0.12\u0000"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 28
    const/16 v0, 0x72

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 29
    sget v0, Ljcifs/smb/SmbComNegotiate;->DEFAULT_FLAGS2:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 30
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComNegotiate["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string v2, ",wordCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string v2, ",dialects=NT LM 0.12]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v2, 0x0

    .line 38
    :try_start_1
    const-string v3, "\u0002NT LM 0.12\u0000"

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 42
    .local v0, dialects:[B
    array-length v3, v0

    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    array-length v2, v0

    .end local v0           #dialects:[B
    :goto_e
    return v2

    .line 39
    :catch_f
    move-exception v1

    .line 40
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_e
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
