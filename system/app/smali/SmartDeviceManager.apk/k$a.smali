.class public final Lk$a;
.super Ljava/io/FilterOutputStream;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1909
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1910
    iput-boolean v1, p0, Lk$a;->f:Z

    .line 1911
    iput-boolean v2, p0, Lk$a;->a:Z

    .line 1912
    iget-boolean v0, p0, Lk$a;->a:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    :goto_f
    iput v0, p0, Lk$a;->d:I

    .line 1913
    iget v0, p0, Lk$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lk$a;->c:[B

    .line 1914
    iput v1, p0, Lk$a;->b:I

    .line 1915
    iput v1, p0, Lk$a;->e:I

    .line 1916
    iput-boolean v1, p0, Lk$a;->h:Z

    .line 1917
    new-array v0, v3, [B

    iput-object v0, p0, Lk$a;->g:[B

    .line 1918
    iput v2, p0, Lk$a;->i:I

    .line 1919
    invoke-static {}, Lk;->a()[B

    move-result-object v0

    iput-object v0, p0, Lk$a;->j:[B

    .line 1920
    return-void

    :cond_2a
    move v0, v3

    .line 1912
    goto :goto_f
.end method


# virtual methods
.method public final close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2034
    iget v0, p0, Lk$a;->b:I

    if-lez v0, :cond_1d

    iget-boolean v0, p0, Lk$a;->a:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lk$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lk$a;->g:[B

    iget-object v2, p0, Lk$a;->c:[B

    iget v3, p0, Lk$a;->b:I

    iget v4, p0, Lk$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lk;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lk$a;->b:I

    .line 2038
    :cond_1d
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2040
    iput-object v5, p0, Lk$a;->c:[B

    .line 2041
    iput-object v5, p0, Lk$a;->out:Ljava/io/OutputStream;

    .line 2042
    return-void

    .line 2034
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
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

    .line 1939
    iget-boolean v0, p0, Lk$a;->h:Z

    if-eqz v0, :cond_c

    .line 1940
    iget-object v0, p0, Lk$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1977
    :cond_b
    :goto_b
    return-void

    .line 1945
    :cond_c
    iget-boolean v0, p0, Lk$a;->a:Z

    if-eqz v0, :cond_4e

    .line 1946
    iget-object v0, p0, Lk$a;->c:[B

    iget v1, p0, Lk$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1947
    iget v0, p0, Lk$a;->b:I

    iget v1, p0, Lk$a;->d:I

    if-lt v0, v1, :cond_b

    .line 1949
    iget-object v0, p0, Lk$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lk$a;->g:[B

    iget-object v2, p0, Lk$a;->c:[B

    iget v3, p0, Lk$a;->d:I

    iget v4, p0, Lk$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lk;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1951
    iget v0, p0, Lk$a;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lk$a;->e:I

    .line 1952
    iget-boolean v0, p0, Lk$a;->f:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lk$a;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_4b

    .line 1953
    iget-object v0, p0, Lk$a;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1954
    iput v5, p0, Lk$a;->e:I

    .line 1957
    :cond_4b
    iput v5, p0, Lk$a;->b:I

    goto :goto_b

    .line 1964
    :cond_4e
    iget-object v0, p0, Lk$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_7b

    .line 1965
    iget-object v0, p0, Lk$a;->c:[B

    iget v1, p0, Lk$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1966
    iget v0, p0, Lk$a;->b:I

    iget v1, p0, Lk$a;->d:I

    if-lt v0, v1, :cond_b

    .line 1968
    iget-object v0, p0, Lk$a;->c:[B

    iget-object v1, p0, Lk$a;->g:[B

    iget v2, p0, Lk$a;->i:I

    invoke-static {v0, v1, v2}, Lk;->a([B[BI)I

    move-result v0

    .line 1969
    iget-object v1, p0, Lk$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lk$a;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1970
    iput v5, p0, Lk$a;->b:I

    goto :goto_b

    .line 1973
    :cond_7b
    iget-object v0, p0, Lk$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_b

    .line 1974
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1994
    iget-boolean v0, p0, Lk$a;->h:Z

    if-eqz v0, :cond_a

    .line 1995
    iget-object v0, p0, Lk$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2003
    :cond_9
    return-void

    .line 1999
    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_9

    .line 2000
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lk$a;->write(I)V

    .line 1999
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
