.class public Lorg/apache/commons/httpclient/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private closed:Z

.field private contentLength:J

.field private pos:J

.field private wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "contentLength"

    .prologue
    .line 90
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6
    .parameter "in"
    .parameter "contentLength"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 104
    iput-object p1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 105
    iput-wide p2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    .line 106
    return-void
.end method


# virtual methods
.method public available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_6

    .line 211
    const/4 v0, 0x0

    .line 217
    :cond_5
    :goto_5
    return v0

    .line 213
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 214
    .local v0, avail:I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 215
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_5
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_a

    .line 118
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 122
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    .line 125
    :cond_a
    return-void

    .line 122
    :catchall_b
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_c
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 140
    const/4 v0, -0x1

    .line 143
    :goto_15
    return v0

    .line 142
    :cond_16
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 143
    iget-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_15
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_c

    .line 160
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_c
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    .line 164
    const/4 v0, -0x1

    .line 172
    :goto_15
    return v0

    .line 167
    :cond_16
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_26

    .line 168
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 170
    :cond_26
    iget-object v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 171
    .local v0, count:I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    goto :goto_15
.end method

.method public skip(J)J
    .registers 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 200
    .local v0, length:J
    iget-object v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1a

    .line 204
    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 206
    :cond_1a
    return-wide v0
.end method