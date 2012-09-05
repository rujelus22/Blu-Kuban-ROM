.class public Lorg/columba/ristretto/io/MemBufferOutputStream;
.super Ljava/io/OutputStream;
.source "MemBufferOutputStream.java"


# instance fields
.field private buffer:Lorg/columba/ristretto/io/MemBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    new-instance v0, Lorg/columba/ristretto/io/MemBuffer;

    invoke-direct {v0}, Lorg/columba/ristretto/io/MemBuffer;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 63
    new-instance v0, Lorg/columba/ristretto/io/MemBuffer;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/io/MemBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/io/MemBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    .line 73
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/columba/ristretto/io/MemBuffer;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    invoke-virtual {v0, p1}, Lorg/columba/ristretto/io/MemBuffer;->append(I)V

    .line 87
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferOutputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/columba/ristretto/io/MemBuffer;->append([BII)V

    .line 80
    return-void
.end method
