.class Ljava/util/zip/ZipFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field bytesRead:J

.field entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .registers 7
    .parameter "is"
    .parameter "inf"
    .parameter "bsize"
    .parameter "entry"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    .line 431
    iput-object p4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 432
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v1, :cond_6

    .line 451
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_5
.end method

.method public read([BII)I
    .registers 9
    .parameter "buffer"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 437
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 438
    iget-wide v1, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    .line 440
    :cond_d
    return v0
.end method
