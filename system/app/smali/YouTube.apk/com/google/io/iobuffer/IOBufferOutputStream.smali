.class public final Lcom/google/io/iobuffer/IOBufferOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/io/iobuffer/b;


# direct methods
.method public constructor <init>(Lcom/google/io/iobuffer/b;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    .line 53
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_5

    .line 64
    :goto_4
    return-void

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->b()V

    .line 62
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/io/iobuffer/b;->a(Z)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    goto :goto_4
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 68
    new-instance v0, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;-><init>()V

    throw v0

    .line 70
    :cond_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->b()V

    .line 71
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->a()V

    .line 72
    return-void
.end method

.method public final write(I)V
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 90
    new-instance v0, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;-><init>()V

    throw v0

    .line 92
    :cond_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1}, Lcom/google/io/iobuffer/b;->b(I)V

    .line 93
    return-void
.end method

.method public final write([B)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 76
    new-instance v0, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;-><init>()V

    throw v0

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1}, Lcom/google/io/iobuffer/b;->b([B)V

    .line 79
    return-void
.end method

.method public final write([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    if-nez v0, :cond_a

    .line 83
    new-instance v0, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;

    invoke-direct {v0}, Lcom/google/io/iobuffer/IOBufferOutputStream$IOBufferOutputStreamClosedException;-><init>()V

    throw v0

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/google/io/iobuffer/IOBufferOutputStream;->a:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/io/iobuffer/b;->b([BII)V

    .line 86
    return-void
.end method
