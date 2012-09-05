.class public Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;
.super Ljava/io/FilterInputStream;
.source "QuotedPrintableDecoderInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    return-void
.end method

.method private readNextOctet()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 69
    iget-object v6, p0, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 70
    .local v3, read:I
    if-ne v3, v5, :cond_b

    move v3, v5

    .line 97
    .end local v3           #read:I
    :cond_a
    :goto_a
    return v3

    .line 72
    .restart local v3       #read:I
    :cond_b
    const/16 v5, 0x3d

    if-ne v3, v5, :cond_a

    .line 73
    iget-object v5, p0, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 74
    .local v1, first:I
    packed-switch v1, :pswitch_data_48

    .line 85
    :pswitch_18
    iget-object v5, p0, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 86
    .local v4, second:I
    const/4 v5, 0x2

    new-array v2, v5, [C

    const/4 v5, 0x0

    int-to-char v6, v1

    aput-char v6, v2, v5

    const/4 v5, 0x1

    int-to-char v6, v4

    aput-char v6, v2, v5

    .line 88
    .local v2, number:[C
    :try_start_29
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_44

    move-result v3

    goto :goto_a

    .line 76
    .end local v2           #number:[C
    .end local v4           #second:I
    :pswitch_35
    iget-object v5, p0, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 77
    invoke-direct {p0}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->readNextOctet()I

    move-result v3

    goto :goto_a

    .line 81
    :pswitch_3f
    invoke-direct {p0}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->readNextOctet()I

    move-result v3

    goto :goto_a

    .line 89
    .restart local v2       #number:[C
    .restart local v4       #second:I
    :catch_44
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v3, 0x3f

    goto :goto_a

    .line 74
    :pswitch_data_48
    .packed-switch 0xa
        :pswitch_3f
        :pswitch_18
        :pswitch_18
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->readNextOctet()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 115
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;->read()I

    move-result v1

    .line 116
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 117
    if-nez v0, :cond_d

    move v0, v2

    .line 125
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 123
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 125
    goto :goto_d
.end method
