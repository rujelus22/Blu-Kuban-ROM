.class public Lcom/swype/android/connect/compat/CompatBase64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "CompatBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/compat/CompatBase64;
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
    .line 1764
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1765
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 7
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1788
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1789
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_34

    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->breakLines:Z

    .line 1790
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_36

    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->encode:Z

    .line 1791
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x3

    :goto_19
    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->bufferLength:I

    .line 1792
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    .line 1793
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    .line 1794
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->lineLength:I

    .line 1795
    iput-boolean v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->suspendEncoding:Z

    .line 1796
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->b4:[B

    .line 1797
    iput p2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->options:I

    .line 1798
    #calls: Lcom/swype/android/connect/compat/CompatBase64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/swype/android/connect/compat/CompatBase64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->decodabet:[B

    .line 1799
    return-void

    :cond_34
    move v0, v1

    .line 1789
    goto :goto_b

    :cond_36
    move v0, v1

    .line 1790
    goto :goto_12

    :cond_38
    move v0, v3

    .line 1791
    goto :goto_19
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

    .line 1913
    invoke-virtual {p0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->flushBase64()V

    .line 1917
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1919
    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    .line 1920
    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1921
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
    .line 1892
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    if-lez v0, :cond_1c

    .line 1893
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_1d

    .line 1894
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    iget v4, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->options:I

    #calls: Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/swype/android/connect/compat/CompatBase64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1895
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    .line 1902
    :cond_1c
    return-void

    .line 1898
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .registers 2

    .prologue
    .line 1947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->suspendEncoding:Z

    .line 1948
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
    .line 1934
    invoke-virtual {p0}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->flushBase64()V

    .line 1935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->suspendEncoding:Z

    .line 1936
    return-void
.end method

.method public write(I)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1818
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_c

    .line 1819
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1856
    :cond_b
    :goto_b
    return-void

    .line 1824
    :cond_c
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->encode:Z

    if-eqz v0, :cond_4e

    .line 1825
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1826
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_b

    .line 1828
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->bufferLength:I

    iget v4, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->options:I

    #calls: Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/swype/android/connect/compat/CompatBase64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1830
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->lineLength:I

    .line 1831
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->breakLines:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->lineLength:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_4b

    .line 1832
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1833
    iput v5, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->lineLength:I

    .line 1836
    :cond_4b
    iput v5, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    goto :goto_b

    .line 1843
    :cond_4e
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_7b

    .line 1844
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1845
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_b

    .line 1847
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->buffer:[B

    iget-object v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->b4:[B

    iget v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->options:I

    #calls: Lcom/swype/android/connect/compat/CompatBase64;->decode4to3([BI[BII)I
    invoke-static {v0, v5, v1, v5, v2}, Lcom/swype/android/connect/compat/CompatBase64;->access$200([BI[BII)I

    move-result v0

    .line 1848
    iget-object v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1849
    iput v5, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->position:I

    goto :goto_b

    .line 1852
    :cond_7b
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_b

    .line 1853
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 1873
    iget-boolean v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_a

    .line 1874
    iget-object v1, p0, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1882
    :cond_9
    return-void

    .line 1878
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p3, :cond_9

    .line 1879
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/compat/CompatBase64$OutputStream;->write(I)V

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
