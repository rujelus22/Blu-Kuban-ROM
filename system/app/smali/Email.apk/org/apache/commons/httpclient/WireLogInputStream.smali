.class Lorg/apache/commons/httpclient/WireLogInputStream;
.super Ljava/io/FilterInputStream;
.source "WireLogInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 129
    .local v0, l:I
    if-lez v0, :cond_d

    .line 131
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/Wire;->input(I)V

    .line 135
    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 147
    .local v0, l:I
    if-lez v0, :cond_e

    .line 149
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    .line 153
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 111
    .local v0, l:I
    if-lez v0, :cond_d

    .line 113
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    .line 117
    :cond_d
    return v0
.end method
