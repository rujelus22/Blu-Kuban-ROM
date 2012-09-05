.class public Ljcifs/smb/SmbComWritePrintFile;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComWritePrintFile.java"


# instance fields
.field bufferFormat:J

.field data:[B

.field dataLength:J

.field fid:J


# direct methods
.method public constructor <init>(JJ[B)V
    .registers 8
    .parameter "fid"
    .parameter "datalength"
    .parameter "data"

    .prologue
    .line 17
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 9
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/SmbComWritePrintFile;->bufferFormat:J

    .line 18
    iput-wide p1, p0, Ljcifs/smb/SmbComWritePrintFile;->fid:J

    .line 19
    iput-wide p3, p0, Ljcifs/smb/SmbComWritePrintFile;->dataLength:J

    .line 20
    iput-object p5, p0, Ljcifs/smb/SmbComWritePrintFile;->data:[B

    .line 21
    const/16 v0, -0x3f

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 22
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 27
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

.method writeBytesWireFormat([BI)I
    .registers 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    move v1, p2

    .line 39
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/4 v2, 0x1

    aput-byte v2, p1, p2

    .line 40
    iget-wide v2, p0, Ljcifs/smb/SmbComWritePrintFile;->dataLength:J

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/SmbComWritePrintFile;->writeInt2(J[BI)V

    .line 41
    add-int/lit8 p2, v0, 0x2

    .line 43
    .end local v0           #dstIndex:I
    .restart local p2
    iget-object v2, p0, Ljcifs/smb/SmbComWritePrintFile;->data:[B

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/smb/SmbComWritePrintFile;->data:[B

    array-length v4, v4

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v2, p0, Ljcifs/smb/SmbComWritePrintFile;->data:[B

    array-length v2, v2

    add-int/2addr p2, v2

    .line 45
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 50
    iget-wide v0, p0, Ljcifs/smb/SmbComWritePrintFile;->fid:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComWritePrintFile;->writeInt2(J[BI)V

    .line 51
    const/4 v0, 0x2

    return v0
.end method
