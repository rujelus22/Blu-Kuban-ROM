.class public Ljcifs/smb/SmbComOpenPrintFile;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComOpenPrintFile.java"


# instance fields
.field bufferFormat:J

.field identifierString:Ljava/lang/String;

.field mode:J

.field setupLength:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "identifierString"

    .prologue
    .line 16
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 11
    const-wide/16 v0, 0x4

    iput-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFile;->bufferFormat:J

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFile;->setupLength:J

    .line 18
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFile;->mode:J

    .line 19
    iput-object p1, p0, Ljcifs/smb/SmbComOpenPrintFile;->identifierString:Ljava/lang/String;

    .line 20
    const/16 v0, -0x40

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 21
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .registers 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method writeBytesWireFormat([BI)I
    .registers 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 37
    move v1, p2

    .line 39
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/4 v2, 0x4

    aput-byte v2, p1, p2

    .line 40
    iget-object v2, p0, Ljcifs/smb/SmbComOpenPrintFile;->identifierString:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/SmbComOpenPrintFile;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int p2, v0, v2

    .line 42
    .end local v0           #dstIndex:I
    .restart local p2
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .registers 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 47
    iget-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFile;->setupLength:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComOpenPrintFile;->writeInt2(J[BI)V

    .line 48
    iget-wide v0, p0, Ljcifs/smb/SmbComOpenPrintFile;->mode:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComOpenPrintFile;->writeInt2(J[BI)V

    .line 49
    const/4 v0, 0x4

    return v0
.end method
