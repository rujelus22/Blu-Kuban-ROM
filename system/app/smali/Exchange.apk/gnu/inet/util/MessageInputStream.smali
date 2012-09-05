.class public Lgnu/inet/util/MessageInputStream;
.super Ljava/io/FilterInputStream;
.source "MessageInputStream.java"


# instance fields
.field protected buf1:I

.field protected buf2:I

.field protected eof:Z

.field protected markBuf1:I

.field protected markBuf2:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    .line 69
    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    .line 81
    return-void
.end method


# virtual methods
.method public mark(I)V
    .registers 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 190
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf1:I

    .line 191
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf2:I

    .line 192
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/16 v3, 0xa

    const/4 v0, -0x1

    .line 91
    iget-boolean v1, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    if-eqz v1, :cond_b

    .line 137
    :goto_a
    return v0

    .line 96
    :cond_b
    iget v1, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-eq v1, v0, :cond_35

    .line 98
    iget v1, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    .line 99
    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iput v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    .line 100
    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    .line 106
    :goto_17
    if-ne v1, v3, :cond_33

    .line 108
    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v2, v0, :cond_3a

    .line 110
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    .line 111
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v0, v5, :cond_33

    .line 113
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    .line 114
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_33

    .line 116
    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    :cond_33
    :goto_33
    move v0, v1

    .line 137
    goto :goto_a

    .line 104
    :cond_35
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    goto :goto_17

    .line 121
    :cond_3a
    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v2, v5, :cond_33

    .line 123
    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v2, v0, :cond_4f

    .line 125
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    .line 126
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_33

    .line 128
    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    goto :goto_33

    .line 131
    :cond_4f
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_33

    .line 133
    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    goto :goto_33
.end method

.method public read([B)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/MessageInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 161
    iget-boolean v1, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    if-eqz v1, :cond_7

    move p3, v0

    .line 179
    :cond_6
    :goto_6
    return p3

    .line 165
    :cond_7
    add-int v2, p2, p3

    move v1, p2

    .line 166
    :goto_a
    if-ge v1, v2, :cond_6

    .line 168
    invoke-virtual {p0}, Lgnu/inet/util/MessageInputStream;->read()I

    move-result v3

    .line 169
    if-ne v3, v0, :cond_15

    .line 171
    sub-int p3, v1, p2

    .line 172
    goto :goto_6

    .line 176
    :cond_15
    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 198
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    .line 199
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf2:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    .line 200
    return-void
.end method
