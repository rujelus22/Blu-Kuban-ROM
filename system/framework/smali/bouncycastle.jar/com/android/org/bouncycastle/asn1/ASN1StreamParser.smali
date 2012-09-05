.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 15
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 24
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoding"

    .prologue
    .line 29
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method private set00Check(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 224
    :cond_d
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 5
    .parameter "constructed"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_15

    .line 56
    if-nez p1, :cond_10

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 85
    :goto_14
    return-object v0

    .line 64
    :cond_15
    if-eqz p1, :cond_34

    .line 66
    sparse-switch p2, :sswitch_data_54

    .line 90
    :goto_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :sswitch_22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_14

    .line 71
    :sswitch_28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_14

    .line 73
    :sswitch_2e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_14

    .line 78
    :cond_34
    sparse-switch p2, :sswitch_data_62

    goto :goto_1a

    .line 85
    :sswitch_38
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    move-object v0, v1

    goto :goto_14

    .line 81
    :sswitch_43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :sswitch_4b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    nop

    :sswitch_data_54
    .sparse-switch
        0x4 -> :sswitch_2e
        0x10 -> :sswitch_28
        0x11 -> :sswitch_22
    .end sparse-switch

    .line 78
    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_38
        0x10 -> :sswitch_4b
        0x11 -> :sswitch_43
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 5
    .parameter "tagValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_38

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :sswitch_20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 46
    :goto_25
    return-object v0

    .line 42
    :sswitch_26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_25

    .line 44
    :sswitch_2c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_25

    .line 46
    :sswitch_32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_25

    .line 37
    :sswitch_data_38
    .sparse-switch
        0x4 -> :sswitch_26
        0x8 -> :sswitch_20
        0x10 -> :sswitch_2c
        0x11 -> :sswitch_32
    .end sparse-switch
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 119
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 120
    .local v6, tag:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_d

    .line 122
    const/4 v8, 0x0

    .line 209
    :goto_c
    return-object v8

    .line 128
    :cond_d
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 133
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v9, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    .line 135
    .local v7, tagNo:I
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1b

    move v3, v8

    .line 140
    .local v3, isConstructed:Z
    :cond_1b
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    .line 142
    .local v4, length:I
    if-gez v4, :cond_59

    .line 144
    if-nez v3, :cond_2f

    .line 146
    new-instance v8, Ljava/io/IOException;

    const-string v9, "indefinite length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_2f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v9, v10}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 150
    .local v2, indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 152
    .local v5, sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_49

    .line 154
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 157
    :cond_49
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_54

    .line 159
    new-instance v9, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v9, v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    move-object v8, v9

    goto :goto_c

    .line 162
    :cond_54
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    goto :goto_c

    .line 166
    .end local v2           #indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v5           #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v9, v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 168
    .local v0, defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_6e

    .line 170
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto :goto_c

    .line 173
    :cond_6e
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_7d

    .line 175
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 178
    :cond_7d
    if-eqz v3, :cond_bd

    .line 181
    sparse-switch v7, :sswitch_data_da

    .line 196
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v8, v7, v10}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v8, v9

    goto :goto_c

    .line 187
    :sswitch_8d
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 189
    :sswitch_99
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 191
    :sswitch_a5
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 193
    :sswitch_b1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 201
    :cond_bd
    packed-switch v7, :pswitch_data_ec

    .line 209
    :try_start_c0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_c7} :catch_d1

    move-result-object v8

    goto/16 :goto_c

    .line 204
    :pswitch_ca
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_c

    .line 211
    :catch_d1
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 181
    :sswitch_data_da
    .sparse-switch
        0x4 -> :sswitch_8d
        0x8 -> :sswitch_b1
        0x10 -> :sswitch_99
        0x11 -> :sswitch_a5
    .end sparse-switch

    .line 201
    :pswitch_data_ec
    .packed-switch 0x4
        :pswitch_ca
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 9
    .parameter "constructed"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    if-nez p1, :cond_17

    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 99
    .local v0, defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 111
    .end local v0           #defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :goto_16
    return-object v2

    .line 102
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 104
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_3b

    .line 106
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_31

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    :cond_31
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    .line 111
    :cond_3b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_4b

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    :cond_4b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 231
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v0, :cond_21

    .line 233
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_19

    .line 235
    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 239
    .restart local v0       #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_19
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 243
    :cond_21
    return-object v1
.end method
