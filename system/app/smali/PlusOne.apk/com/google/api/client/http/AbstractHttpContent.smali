.class public abstract Lcom/google/api/client/http/AbstractHttpContent;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private computedLength:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    return-void
.end method


# virtual methods
.method protected computeLength()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->retrySupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 63
    const-wide/16 v1, -0x1

    .line 67
    :goto_8
    return-wide v1

    .line 65
    :cond_9
    new-instance v0, Lcom/google/api/client/http/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/http/ByteCountingOutputStream;-><init>()V

    .line 66
    .local v0, countingStream:Lcom/google/api/client/http/ByteCountingOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    iget-wide v1, v0, Lcom/google/api/client/http/ByteCountingOutputStream;->count:J

    goto :goto_8
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 48
    :cond_e
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    return-wide v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
