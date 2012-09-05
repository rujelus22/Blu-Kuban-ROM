.class public Lcom/sprint/w/installer/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 1906
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sprint/w/installer/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1907
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 7
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1933
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1934
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_33

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->breakLines:Z

    .line 1935
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_35

    :goto_11
    iput-boolean v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->encode:Z

    .line 1936
    iget-boolean v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x3

    :goto_18
    iput v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->bufferLength:I

    .line 1937
    iget v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    .line 1938
    iput v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    .line 1939
    iput v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->lineLength:I

    .line 1940
    iput-boolean v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->suspendEncoding:Z

    .line 1941
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->b4:[B

    .line 1942
    iput p2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->options:I

    .line 1943
    #calls: Lcom/sprint/w/installer/util/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/sprint/w/installer/util/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->decodabet:[B

    .line 1944
    return-void

    :cond_33
    move v0, v2

    .line 1934
    goto :goto_b

    :cond_35
    move v1, v2

    .line 1935
    goto :goto_11

    :cond_37
    move v0, v3

    .line 1936
    goto :goto_18
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
    const/4 v0, 0x0

    .line 2048
    invoke-virtual {p0}, Lcom/sprint/w/installer/util/Base64$OutputStream;->flushBase64()V

    .line 2052
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2054
    iput-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    .line 2055
    iput-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 2056
    return-void
.end method

.method public flushBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2028
    iget v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_1c

    .line 2029
    iget-boolean v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1d

    .line 2030
    iget-object v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->options:I

    #calls: Lcom/sprint/w/installer/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/sprint/w/installer/util/Base64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2031
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    .line 2038
    :cond_1c
    return-void

    .line 2034
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .registers 2

    .prologue
    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->suspendEncoding:Z

    .line 2078
    return-void
.end method

.method public suspendEncoding()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/sprint/w/installer/util/Base64$OutputStream;->flushBase64()V

    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->suspendEncoding:Z

    .line 2068
    return-void
.end method

.method public write(I)V
    .registers 9
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1958
    iget-boolean v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_c

    .line 1959
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1996
    :cond_b
    :goto_b
    return-void

    .line 1964
    :cond_c
    iget-boolean v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_4e

    .line 1965
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1966
    iget v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_b

    .line 1968
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->options:I

    #calls: Lcom/sprint/w/installer/util/Base64;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lcom/sprint/w/installer/util/Base64;->access$300([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1970
    iget v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->lineLength:I

    .line 1971
    iget-boolean v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_4b

    iget v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_4b

    .line 1972
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1973
    iput v6, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->lineLength:I

    .line 1976
    :cond_4b
    iput v6, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    goto :goto_b

    .line 1983
    :cond_4e
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_7b

    .line 1984
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1985
    iget v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_b

    .line 1987
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->b4:[B

    iget v3, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->options:I

    #calls: Lcom/sprint/w/installer/util/Base64;->decode4to3([BI[BII)I
    invoke-static {v1, v6, v2, v6, v3}, Lcom/sprint/w/installer/util/Base64;->access$200([BI[BII)I

    move-result v0

    .line 1988
    .local v0, len:I
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1989
    iput v6, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->position:I

    goto :goto_b

    .line 1992
    .end local v0           #len:I
    :cond_7b
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_b

    .line 1993
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .registers 6
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2010
    iget-boolean v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_a

    .line 2011
    iget-object v1, p0, Lcom/sprint/w/installer/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2019
    :cond_9
    return-void

    .line 2015
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p3, :cond_9

    .line 2016
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/util/Base64$OutputStream;->write(I)V

    .line 2015
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method