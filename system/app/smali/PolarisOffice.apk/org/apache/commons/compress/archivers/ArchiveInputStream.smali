.class public abstract Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.super Ljava/io/InputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private SINGLE:[B

.field private bytesRead:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->SINGLE:[B

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-void
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 3
    .parameter "ae"

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method protected count(I)V
    .registers 4
    .parameter "read"

    .prologue
    .line 91
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    .line 92
    return-void
.end method

.method protected count(J)V
    .registers 5
    .parameter "read"

    .prologue
    .line 102
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    .line 103
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    .line 105
    :cond_b
    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    long-to-int v0, v0

    return v0
.end method

.method public abstract getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected pushedBackBytes(J)V
    .registers 5
    .parameter "pushedBack"

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    .line 115
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 80
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->SINGLE:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read([BII)I

    move-result v0

    .line 81
    .local v0, num:I
    if-ne v0, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->SINGLE:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_b
.end method
