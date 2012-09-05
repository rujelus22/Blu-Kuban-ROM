.class public Ljcifs/smb/SmbComClosePrintFile;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComClosePrintFile.java"


# instance fields
.field fid:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .parameter "fid"

    .prologue
    .line 7
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 8
    iput-wide p1, p0, Ljcifs/smb/SmbComClosePrintFile;->fid:J

    .line 9
    const/16 v0, -0x3e

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 10
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 32
    iget-wide v0, p0, Ljcifs/smb/SmbComClosePrintFile;->fid:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComClosePrintFile;->writeInt2(J[BI)V

    .line 33
    const/4 v0, 0x2

    return v0
.end method
