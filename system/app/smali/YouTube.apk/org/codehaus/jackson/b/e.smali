.class public final Lorg/codehaus/jackson/b/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/b/c;

.field final b:Ljava/io/InputStream;

.field c:[B

.field d:I

.field final e:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/codehaus/jackson/b/e;->a:Lorg/codehaus/jackson/b/c;

    .line 30
    iput-object p2, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    .line 31
    iput-object p3, p0, Lorg/codehaus/jackson/b/e;->c:[B

    .line 32
    iput p4, p0, Lorg/codehaus/jackson/b/e;->d:I

    .line 33
    iput p5, p0, Lorg/codehaus/jackson/b/e;->e:I

    .line 34
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    .line 138
    if-eqz v0, :cond_10

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/b/e;->c:[B

    .line 140
    iget-object v1, p0, Lorg/codehaus/jackson/b/e;->a:Lorg/codehaus/jackson/b/c;

    if-eqz v1, :cond_10

    .line 141
    iget-object v1, p0, Lorg/codehaus/jackson/b/e;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a([B)V

    .line 144
    :cond_10
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-eqz v0, :cond_a

    .line 40
    iget v0, p0, Lorg/codehaus/jackson/b/e;->e:I

    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    sub-int/2addr v0, v1

    .line 42
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_9
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/b/e;->a()V

    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    return-void
.end method

.method public final mark(I)V
    .registers 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-nez v0, :cond_9

    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 58
    :cond_9
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final read()I
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-eqz v0, :cond_1a

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/b/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 72
    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    iget v2, p0, Lorg/codehaus/jackson/b/e;->e:I

    if-lt v1, v2, :cond_19

    .line 73
    invoke-direct {p0}, Lorg/codehaus/jackson/b/e;->a()V

    .line 77
    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_19
.end method

.method public final read([B)I
    .registers 4
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/b/e;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-eqz v0, :cond_22

    .line 90
    iget v0, p0, Lorg/codehaus/jackson/b/e;->e:I

    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    sub-int/2addr v0, v1

    .line 91
    if-le p3, v0, :cond_c

    move p3, v0

    .line 94
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v0, p0, Lorg/codehaus/jackson/b/e;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/b/e;->d:I

    .line 96
    iget v0, p0, Lorg/codehaus/jackson/b/e;->d:I

    iget v1, p0, Lorg/codehaus/jackson/b/e;->e:I

    if-lt v0, v1, :cond_21

    .line 97
    invoke-direct {p0}, Lorg/codehaus/jackson/b/e;->a()V

    .line 101
    :cond_21
    :goto_21
    return p3

    :cond_22
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    goto :goto_21
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-nez v0, :cond_9

    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 110
    :cond_9
    return-void
.end method

.method public final skip(J)J
    .registers 9
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/b/e;->c:[B

    if-eqz v0, :cond_2c

    .line 118
    iget v0, p0, Lorg/codehaus/jackson/b/e;->e:I

    iget v1, p0, Lorg/codehaus/jackson/b/e;->d:I

    sub-int v4, v0, v1

    .line 120
    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-lez v0, :cond_18

    .line 121
    iget v0, p0, Lorg/codehaus/jackson/b/e;->d:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/b/e;->d:I

    .line 132
    :goto_17
    return-wide p1

    .line 124
    :cond_18
    invoke-direct {p0}, Lorg/codehaus/jackson/b/e;->a()V

    .line 125
    int-to-long v0, v4

    add-long/2addr v0, v2

    .line 126
    int-to-long v4, v4

    sub-long/2addr p1, v4

    .line 129
    :goto_1f
    cmp-long v2, p1, v2

    if-lez v2, :cond_2a

    .line 130
    iget-object v2, p0, Lorg/codehaus/jackson/b/e;->b:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_2a
    move-wide p1, v0

    .line 132
    goto :goto_17

    :cond_2c
    move-wide v0, v2

    goto :goto_1f
.end method
