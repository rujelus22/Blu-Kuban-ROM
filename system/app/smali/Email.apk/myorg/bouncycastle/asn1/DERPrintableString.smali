.class public Lmyorg/bouncycastle/asn1/DERPrintableString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERPrintableString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "string"
    .parameter "validate"

    .prologue
    .line 75
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    if-eqz p2, :cond_13

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_13
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "string"

    .prologue
    .line 50
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    array-length v2, p1

    new-array v0, v2, [C

    .line 53
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 54
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 57
    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .registers 5
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_31

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 130
    .local v0, ch:C
    const/16 v3, 0x7f

    if-le v0, v3, :cond_12

    .line 165
    .end local v0           #ch:C
    :goto_11
    return v2

    .line 134
    .restart local v0       #ch:C
    :cond_12
    const/16 v3, 0x61

    if-gt v3, v0, :cond_1d

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1d

    .line 127
    :cond_1a
    :sswitch_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 138
    :cond_1d
    const/16 v3, 0x41

    if-gt v3, v0, :cond_25

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1a

    .line 142
    :cond_25
    const/16 v3, 0x30

    if-gt v3, v0, :cond_2d

    const/16 v3, 0x39

    if-le v0, v3, :cond_1a

    .line 146
    :cond_2d
    sparse-switch v0, :sswitch_data_34

    goto :goto_11

    .line 165
    .end local v0           #ch:C
    :cond_31
    const/4 v2, 0x1

    goto :goto_11

    .line 146
    nop

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_1a
        0x27 -> :sswitch_1a
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_1a
        0x2b -> :sswitch_1a
        0x2c -> :sswitch_1a
        0x2d -> :sswitch_1a
        0x2e -> :sswitch_1a
        0x2f -> :sswitch_1a
        0x3a -> :sswitch_1a
        0x3d -> :sswitch_1a
        0x3f -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 107
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERPrintableString;

    if-nez v1, :cond_6

    .line 108
    const/4 v1, 0x0

    .line 113
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 111
    check-cast v0, Lmyorg/bouncycastle/asn1/DERPrintableString;

    .line 113
    .local v0, s:Lmyorg/bouncycastle/asn1/DERPrintableString;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/16 v0, 0x13

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERPrintableString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 100
    return-void
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 88
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 89
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 91
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 92
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 95
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERPrintableString;->string:Ljava/lang/String;

    return-object v0
.end method
