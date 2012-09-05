.class public Lcom/swype/android/connect/compat/CompatBase64$InputStream;
.super Ljava/io/FilterInputStream;
.source "CompatBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/compat/CompatBase64;
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
    .line 1551
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1552
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1577
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1578
    iput p2, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->options:I

    .line 1579
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_2e

    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->breakLines:Z

    .line 1580
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_30

    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->encode:Z

    .line 1581
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->encode:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    :goto_1a
    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->bufferLength:I

    .line 1582
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->buffer:[B

    .line 1583
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    .line 1584
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->lineLength:I

    .line 1585
    #calls: Lcom/swype/android/connect/compat/CompatBase64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/swype/android/connect/compat/CompatBase64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->decodabet:[B

    .line 1586
    return-void

    :cond_2e
    move v0, v1

    .line 1579
    goto :goto_c

    :cond_30
    move v0, v1

    .line 1580
    goto :goto_13

    .line 1581
    :cond_32
    const/4 v0, 0x3

    goto :goto_1a
.end method


# virtual methods
.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1599
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    if-gez v0, :cond_30

    .line 1600
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->encode:Z

    if-eqz v0, :cond_3e

    .line 1601
    new-array v0, v5, [B

    move v3, v1

    move v2, v1

    .line 1603
    :goto_10
    if-ge v3, v5, :cond_22

    .line 1604
    iget-object v4, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1607
    if-ltz v4, :cond_22

    .line 1608
    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1609
    add-int/lit8 v2, v2, 0x1

    .line 1603
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1616
    :cond_22
    if-lez v2, :cond_3c

    .line 1617
    iget-object v3, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->buffer:[B

    iget v5, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->options:I

    move v4, v1

    #calls: Lcom/swype/android/connect/compat/CompatBase64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/swype/android/connect/compat/CompatBase64;->access$100([BII[BII)[B

    .line 1618
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    .line 1619
    iput v7, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->numSigBytes:I

    .line 1659
    :cond_30
    :goto_30
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    if-ltz v0, :cond_a5

    .line 1661
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    iget v2, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->numSigBytes:I

    if-lt v0, v2, :cond_77

    move v0, v6

    .line 1680
    :goto_3b
    return v0

    :cond_3c
    move v0, v6

    .line 1622
    goto :goto_3b

    .line 1624
    :cond_3e
    new-array v0, v7, [B

    move v2, v1

    .line 1629
    :goto_41
    if-ge v2, v7, :cond_5c

    .line 1632
    :cond_43
    iget-object v3, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1634
    if-ltz v3, :cond_54

    iget-object v4, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->decodabet:[B

    and-int/lit8 v5, v3, 0x7f

    aget-byte v4, v4, v5

    const/4 v5, -0x5

    if-le v4, v5, :cond_43

    .line 1636
    :cond_54
    if-ltz v3, :cond_5c

    .line 1637
    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1630
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1643
    :cond_5c
    if-ne v2, v7, :cond_6b

    .line 1644
    iget-object v2, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->buffer:[B

    iget v3, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->options:I

    #calls: Lcom/swype/android/connect/compat/CompatBase64;->decode4to3([BI[BII)I
    invoke-static {v0, v1, v2, v1, v3}, Lcom/swype/android/connect/compat/CompatBase64;->access$200([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->numSigBytes:I

    .line 1645
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    goto :goto_30

    .line 1647
    :cond_6b
    if-nez v2, :cond_6f

    move v0, v6

    .line 1648
    goto :goto_3b

    .line 1652
    :cond_6f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_77
    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->encode:Z

    if-eqz v0, :cond_8a

    iget-boolean v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->breakLines:Z

    if-eqz v0, :cond_8a

    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_8a

    .line 1666
    iput v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->lineLength:I

    .line 1667
    const/16 v0, 0xa

    goto :goto_3b

    .line 1670
    :cond_8a
    iget v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->lineLength:I

    .line 1674
    iget-object v0, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->buffer:[B

    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    aget-byte v0, v0, v1

    .line 1676
    iget v1, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    iget v2, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->bufferLength:I

    if-lt v1, v2, :cond_a2

    .line 1677
    iput v6, p0, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->position:I

    .line 1680
    :cond_a2
    and-int/lit16 v0, v0, 0xff

    goto :goto_3b

    .line 1687
    :cond_a5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1709
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_14

    .line 1710
    invoke-virtual {p0}, Lcom/swype/android/connect/compat/CompatBase64$InputStream;->read()I

    move-result v1

    .line 1712
    if-ltz v1, :cond_11

    .line 1713
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1715
    :cond_11
    if-nez v0, :cond_14

    .line 1716
    const/4 v0, -0x1

    .line 1722
    :cond_14
    return v0
.end method
