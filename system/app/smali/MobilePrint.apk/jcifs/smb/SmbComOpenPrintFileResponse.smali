.class public Ljcifs/smb/SmbComOpenPrintFileResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComOpenPrintFileResponse.java"


# instance fields
.field fid:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 5
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 15
    invoke-static {p1, p2}, Ljcifs/smb/SmbComOpenPrintFileResponse;->readInt2([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFileResponse;->fid:J

    .line 16
    add-int/lit8 p2, p2, 0x2

    .line 17
    const/4 v0, 0x2

    return v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
