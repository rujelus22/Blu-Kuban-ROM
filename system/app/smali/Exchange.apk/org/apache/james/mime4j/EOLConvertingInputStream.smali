.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# instance fields
.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private previous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .parameter "in"
    .parameter "flags"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 67
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 68
    iput p2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 78
    return-void
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    .line 84
    iget-object v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 86
    .local v0, b:I
    if-ne v0, v2, :cond_e

    .line 105
    :goto_d
    return v2

    .line 90
    :cond_e
    iget v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2e

    if-ne v0, v5, :cond_2e

    .line 91
    iget-object v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 92
    .local v1, c:I
    if-eq v1, v2, :cond_23

    .line 93
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 95
    :cond_23
    if-eq v1, v4, :cond_2a

    .line 96
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 103
    .end local v1           #c:I
    :cond_2a
    :goto_2a
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    .line 105
    goto :goto_d

    .line 98
    :cond_2e
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2a

    if-ne v0, v4, :cond_2a

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2a

    .line 99
    const/16 v0, 0xd

    .line 100
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2a
.end method
