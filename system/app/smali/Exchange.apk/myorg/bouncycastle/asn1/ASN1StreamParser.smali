.class public Lmyorg/bouncycastle/asn1/ASN1StreamParser;
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
    .line 21
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 26
    iput p2, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 27
    return-void
.end method

.method private static findLimit(Ljava/io/InputStream;)I
    .registers 2
    .parameter "in"

    .prologue
    .line 13
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    if-eqz v0, :cond_b

    .line 14
    check-cast p0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 17
    :goto_a
    return v0

    .restart local p0
    :cond_b
    const v0, 0x7fffffff

    goto :goto_a
.end method

.method private set00Check(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 135
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 138
    :cond_d
    return-void
.end method


# virtual methods
.method public readObject()Lmyorg/bouncycastle/asn1/DEREncodable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 34
    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 35
    .local v5, tag:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_d

    .line 36
    const/4 v7, 0x0

    .line 130
    :goto_c
    return-object v7

    .line 42
    :cond_d
    invoke-direct {p0, v2}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 47
    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v8, v5}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 49
    .local v6, tagNo:I
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_1b

    move v2, v7

    .line 54
    .local v2, isConstructed:Z
    :cond_1b
    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v9, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v8, v9}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v3

    .line 56
    .local v3, length:I
    if-gez v3, :cond_91

    .line 58
    if-nez v2, :cond_2f

    .line 59
    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_2f
    new-instance v1, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v1, v7}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v1, indIn:Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_47

    .line 65
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v1, v7}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 67
    .local v4, sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    new-instance v7, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 70
    .end local v4           #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    :cond_47
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_51

    .line 71
    new-instance v7, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v5, v6, v1}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    goto :goto_c

    .line 74
    :cond_51
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v1, v7}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 78
    .restart local v4       #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    sparse-switch v6, :sswitch_data_108

    .line 89
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown BER object encountered: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 80
    :sswitch_78
    new-instance v7, Lmyorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 82
    :sswitch_7e
    new-instance v7, Lmyorg/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 84
    :sswitch_84
    new-instance v7, Lmyorg/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/BERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 86
    :sswitch_8a
    new-instance v7, Lmyorg/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/asn1/DERExternalParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 93
    .end local v1           #indIn:Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4           #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    :cond_91
    new-instance v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v8, p0, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v8, v3}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 95
    .local v0, defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_a7

    .line 96
    new-instance v7, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v2, v6, v8}, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto/16 :goto_c

    .line 99
    :cond_a7
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_b2

    .line 100
    new-instance v7, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v5, v6, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    goto/16 :goto_c

    .line 103
    :cond_b2
    if-eqz v2, :cond_f3

    .line 106
    sparse-switch v6, :sswitch_data_11a

    .line 120
    new-instance v8, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v7, v6, v9}, Lmyorg/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v7, v8

    goto/16 :goto_c

    .line 111
    :sswitch_c3
    new-instance v7, Lmyorg/bouncycastle/asn1/BEROctetStringParser;

    new-instance v8, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 113
    :sswitch_cf
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequenceParser;

    new-instance v8, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 115
    :sswitch_db
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSetParser;

    new-instance v8, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 117
    :sswitch_e7
    new-instance v7, Lmyorg/bouncycastle/asn1/DERExternalParser;

    new-instance v8, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERExternalParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 125
    :cond_f3
    packed-switch v6, :pswitch_data_12c

    .line 130
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v6, v7}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto/16 :goto_c

    .line 127
    :pswitch_100
    new-instance v7, Lmyorg/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_c

    .line 78
    nop

    :sswitch_data_108
    .sparse-switch
        0x4 -> :sswitch_78
        0x8 -> :sswitch_8a
        0x10 -> :sswitch_7e
        0x11 -> :sswitch_84
    .end sparse-switch

    .line 106
    :sswitch_data_11a
    .sparse-switch
        0x4 -> :sswitch_c3
        0x8 -> :sswitch_e7
        0x10 -> :sswitch_cf
        0x11 -> :sswitch_db
    .end sparse-switch

    .line 125
    :pswitch_data_12c
    .packed-switch 0x4
        :pswitch_100
    .end packed-switch
.end method

.method readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 144
    .local v1, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .local v0, obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v0, :cond_13

    .line 145
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 148
    :cond_13
    return-object v1
.end method
