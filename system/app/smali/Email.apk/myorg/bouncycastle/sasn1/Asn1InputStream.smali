.class public Lmyorg/bouncycastle/sasn1/Asn1InputStream;
.super Ljava/lang/Object;
.source "Asn1InputStream.java"


# instance fields
.field private _eofFound:Z

.field _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    .line 19
    const v0, 0x7fffffff

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    .line 20
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    .line 29
    array-length v0, p1

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    .line 30
    return-void
.end method

.method private readLength()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 38
    .local v1, length:I
    if-gez v1, :cond_10

    .line 39
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_10
    const/16 v4, 0x80

    if-ne v1, v4, :cond_16

    .line 43
    const/4 v4, -0x1

    .line 74
    :goto_15
    return v4

    .line 46
    :cond_16
    const/16 v4, 0x7f

    if-le v1, v4, :cond_58

    .line 47
    and-int/lit8 v3, v1, 0x7f

    .line 49
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_27

    .line 50
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DER length more than 4 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_27
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v3, :cond_42

    .line 55
    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 57
    .local v2, next:I
    if-gez v2, :cond_3b

    .line 58
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_3b
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 64
    .end local v2           #next:I
    :cond_42
    if-gez v1, :cond_4c

    .line 65
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_4c
    iget v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    if-lt v1, v4, :cond_58

    .line 70
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_58
    move v4, v1

    .line 74
    goto :goto_15
.end method


# virtual methods
.method public readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 78
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 79
    .local v5, tag:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1a

    .line 80
    iget-boolean v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    if-eqz v7, :cond_16

    .line 81
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "attempt to read past end of file."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_16
    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    .line 86
    const/4 v7, 0x0

    .line 168
    :goto_19
    return-object v7

    .line 92
    :cond_1a
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    instance-of v7, v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    if-eqz v7, :cond_28

    .line 93
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    check-cast v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 99
    :cond_28
    and-int/lit8 v1, v5, -0x21

    .line 100
    .local v1, baseTagNo:I
    move v6, v1

    .line 102
    .local v6, tagNo:I
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_5d

    .line 103
    and-int/lit8 v6, v5, 0x1f

    .line 109
    const/16 v7, 0x1f

    if-ne v6, v7, :cond_5d

    .line 110
    const/4 v6, 0x0

    .line 112
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 114
    .local v0, b:I
    :goto_3c
    if-ltz v0, :cond_4e

    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_4e

    .line 115
    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    .line 116
    shl-int/lit8 v6, v6, 0x7

    .line 117
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_3c

    .line 120
    :cond_4e
    if-gez v0, :cond_5a

    .line 121
    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    .line 123
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "EOF encountered inside tag value."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_5a
    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    .line 133
    .end local v0           #b:I
    :cond_5d
    invoke-direct {p0}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readLength()I

    move-result v4

    .line 135
    .local v4, length:I
    if-gez v4, :cond_8b

    .line 137
    new-instance v3, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v3, v7}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v3, indIn:Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
    sparse-switch v1, :sswitch_data_da

    .line 149
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v3}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto :goto_19

    .line 141
    :sswitch_73
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto :goto_19

    .line 143
    :sswitch_79
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerOctetString;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerOctetString;-><init>(ILjava/io/InputStream;)V

    goto :goto_19

    .line 145
    :sswitch_7f
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSequence;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSequence;-><init>(ILjava/io/InputStream;)V

    goto :goto_19

    .line 147
    :sswitch_85
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSet;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSet;-><init>(ILjava/io/InputStream;)V

    goto :goto_19

    .line 152
    .end local v3           #indIn:Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
    :cond_8b
    new-instance v2, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v2, v7, v4}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 154
    .local v2, defIn:Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;
    sparse-switch v1, :sswitch_data_ec

    .line 168
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v2}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto/16 :goto_19

    .line 156
    :sswitch_9c
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Integer;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1Integer;-><init>(I[B)V

    goto/16 :goto_19

    .line 158
    :sswitch_a7
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto/16 :goto_19

    .line 160
    :sswitch_ae
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;-><init>(I[B)V

    goto/16 :goto_19

    .line 162
    :sswitch_b9
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerOctetString;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerOctetString;-><init>(I[B)V

    goto/16 :goto_19

    .line 164
    :sswitch_c4
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSequence;-><init>(I[B)V

    goto/16 :goto_19

    .line 166
    :sswitch_cf
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSet;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSet;-><init>(I[B)V

    goto/16 :goto_19

    .line 139
    :sswitch_data_da
    .sparse-switch
        0x4 -> :sswitch_79
        0x5 -> :sswitch_73
        0x10 -> :sswitch_7f
        0x11 -> :sswitch_85
    .end sparse-switch

    .line 154
    :sswitch_data_ec
    .sparse-switch
        0x2 -> :sswitch_9c
        0x4 -> :sswitch_b9
        0x5 -> :sswitch_a7
        0x6 -> :sswitch_ae
        0x10 -> :sswitch_c4
        0x11 -> :sswitch_cf
    .end sparse-switch
.end method
