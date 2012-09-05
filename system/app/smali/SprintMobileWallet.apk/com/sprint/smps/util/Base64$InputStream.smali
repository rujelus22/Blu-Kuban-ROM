.class public Lcom/sprint/smps/util/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sprint/smps/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1659
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1684
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1685
    iput p2, p0, Lcom/sprint/smps/util/Base64$InputStream;->options:I

    .line 1686
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_2d

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->breakLines:Z

    .line 1687
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_2f

    :goto_12
    iput-boolean v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->encode:Z

    .line 1688
    iget-boolean v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x4

    :goto_19
    iput v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->bufferLength:I

    .line 1689
    iget v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->buffer:[B

    .line 1690
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    .line 1691
    iput v2, p0, Lcom/sprint/smps/util/Base64$InputStream;->lineLength:I

    .line 1692
    #calls: Lcom/sprint/smps/util/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/sprint/smps/util/Base64;->access$0(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/smps/util/Base64$InputStream;->decodabet:[B

    .line 1693
    return-void

    :cond_2d
    move v0, v2

    .line 1686
    goto :goto_c

    :cond_2f
    move v1, v2

    .line 1687
    goto :goto_12

    .line 1688
    :cond_31
    const/4 v0, 0x3

    goto :goto_19
.end method


# virtual methods
.method public read()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1706
    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    if-gez v3, :cond_20

    .line 1707
    iget-boolean v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_3e

    .line 1708
    new-array v0, v4, [B

    .line 1709
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 1710
    .local v2, numBinaryBytes:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    if-lt v8, v4, :cond_2c

    .line 1723
    :cond_12
    if-lez v2, :cond_3c

    .line 1724
    iget-object v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/sprint/smps/util/Base64$InputStream;->options:I

    move v4, v1

    #calls: Lcom/sprint/smps/util/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/sprint/smps/util/Base64;->access$1([BII[BII)[B

    .line 1725
    iput v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    .line 1726
    iput v10, p0, Lcom/sprint/smps/util/Base64$InputStream;->numSigBytes:I

    .line 1766
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_20
    :goto_20
    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    if-ltz v3, :cond_a7

    .line 1768
    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    iget v4, p0, Lcom/sprint/smps/util/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_79

    move v1, v9

    .line 1787
    :goto_2b
    return v1

    .line 1711
    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v8       #i:I
    :cond_2c
    iget-object v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1714
    .local v6, b:I
    if-ltz v6, :cond_12

    .line 1715
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1716
    add-int/lit8 v2, v2, 0x1

    .line 1710
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .end local v6           #b:I
    :cond_3c
    move v1, v9

    .line 1729
    goto :goto_2b

    .line 1735
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v8           #i:I
    :cond_3e
    new-array v7, v10, [B

    .line 1736
    .local v7, b4:[B
    const/4 v8, 0x0

    .line 1737
    .restart local v8       #i:I
    const/4 v8, 0x0

    :goto_42
    if-lt v8, v10, :cond_53

    .line 1750
    :cond_44
    if-ne v8, v10, :cond_6d

    .line 1751
    iget-object v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/sprint/smps/util/Base64$InputStream;->options:I

    #calls: Lcom/sprint/smps/util/Base64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/sprint/smps/util/Base64;->access$2([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->numSigBytes:I

    .line 1752
    iput v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    goto :goto_20

    .line 1739
    :cond_53
    const/4 v6, 0x0

    .line 1740
    .restart local v6       #b:I
    :cond_54
    iget-object v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1741
    if-ltz v6, :cond_65

    iget-object v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_54

    .line 1743
    :cond_65
    if-ltz v6, :cond_44

    .line 1747
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1737
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 1754
    .end local v6           #b:I
    :cond_6d
    if-nez v8, :cond_71

    move v1, v9

    .line 1755
    goto :goto_2b

    .line 1759
    :cond_71
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1772
    .end local v7           #b4:[B
    .end local v8           #i:I
    :cond_79
    iget-boolean v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_8c

    iget-boolean v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_8c

    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_8c

    .line 1773
    iput v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->lineLength:I

    .line 1774
    const/16 v1, 0xa

    goto :goto_2b

    .line 1777
    :cond_8c
    iget v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->lineLength:I

    .line 1781
    iget-object v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->buffer:[B

    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1783
    .restart local v6       #b:I
    iget v1, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    iget v3, p0, Lcom/sprint/smps/util/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_a4

    .line 1784
    iput v9, p0, Lcom/sprint/smps/util/Base64$InputStream;->position:I

    .line 1787
    :cond_a4
    and-int/lit16 v1, v6, 0xff

    goto :goto_2b

    .line 1794
    .end local v6           #b:I
    :cond_a7
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .registers 8
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, p3, :cond_4

    .line 1829
    .end local v1           #i:I
    :cond_3
    :goto_3
    return v1

    .line 1817
    .restart local v1       #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/sprint/smps/util/Base64$InputStream;->read()I

    move-result v0

    .line 1819
    .local v0, b:I
    if-ltz v0, :cond_12

    .line 1820
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1816
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1822
    :cond_12
    if-nez v1, :cond_3

    .line 1823
    const/4 v1, -0x1

    goto :goto_3
.end method
