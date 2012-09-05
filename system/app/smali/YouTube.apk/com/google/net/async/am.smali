.class final Lcom/google/net/async/am;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lorg/apache/http/util/ByteArrayBuffer;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    .line 74
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 34
    if-nez p1, :cond_a

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newOut cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_16

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v1, "setUnderlyingOutputStream() cannot be called more than once"

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_16
    iget-object v0, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    .line 45
    iput-object p1, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    .line 46
    return-void
.end method

.method public final write(I)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 51
    iget-object v0, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 55
    :goto_a
    return-void

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_a
.end method

.method public final write([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 60
    iget-object v0, p0, Lcom/google/net/async/am;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 64
    :goto_9
    return-void

    .line 62
    :cond_a
    iget-object v0, p0, Lcom/google/net/async/am;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9
.end method
