.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public rawString:Ljava/lang/String;

.field private tag:I

.field public final wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "parsedString"
    .parameter "hasQorE"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 53
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 8
    .parameter "hexString"
    .parameter "encoded"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 60
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 62
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 66
    :try_start_d
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 68
    .local v2, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 70
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 72
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 83
    :goto_32
    return-void

    .line 75
    :cond_33
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_38

    goto :goto_32

    .line 78
    .end local v2           #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_38
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 80
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 81
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .registers 5
    .parameter "rawString"
    .parameter "encoded"
    .parameter "tag"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 88
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 89
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 91
    if-nez p1, :cond_1a

    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 98
    :goto_19
    return-void

    .line 95
    :cond_1a
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_19
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 106
    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_39

    const/16 v2, 0x27

    if-lt v0, v2, :cond_17

    const/16 v2, 0x29

    if-le v0, v2, :cond_39

    :cond_17
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x3a

    if-le v0, v2, :cond_39

    :cond_1f
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_39

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_39

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x5a

    if-le v0, v2, :cond_39

    :cond_2f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_37

    const/16 v2, 0x7a

    if-le v0, v2, :cond_39

    .line 113
    :cond_37
    const/4 v2, 0x0

    .line 116
    .end local v0           #ch:C
    :goto_38
    return v2

    .line 104
    .restart local v0       #ch:C
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v0           #ch:C
    :cond_3c
    const/4 v2, 0x1

    goto :goto_38
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "name"

    .prologue
    const/16 v5, 0x5c

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 187
    .local v3, length:I
    if-nez v3, :cond_9

    .line 227
    .end local p1
    :goto_8
    return-object p1

    .line 190
    .restart local p1
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_11
    if-ge v2, v3, :cond_40

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 194
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_46

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 196
    :sswitch_20
    if-eqz v2, :cond_26

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_29

    .line 198
    :cond_26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_29
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 205
    :sswitch_2f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 206
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 217
    :sswitch_39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 227
    .end local v1           #ch:C
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 194
    nop

    :sswitch_data_46
    .sparse-switch
        0x20 -> :sswitch_20
        0x22 -> :sswitch_2f
        0x23 -> :sswitch_39
        0x2b -> :sswitch_39
        0x2c -> :sswitch_39
        0x3b -> :sswitch_39
        0x3c -> :sswitch_39
        0x3d -> :sswitch_39
        0x3e -> :sswitch_39
        0x5c -> :sswitch_2f
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter "sb"

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_27

    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 165
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 166
    .local v0, c:C
    if-eq v0, v3, :cond_1e

    if-ne v0, v4, :cond_21

    .line 167
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 172
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_27
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 129
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_71

    .line 130
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_1c

    .line 132
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    :goto_1a
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 137
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6b

    .line 141
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 142
    .local v1, c:I
    if-ge v1, v5, :cond_5d

    .line 143
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :goto_43
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 149
    if-ge v1, v5, :cond_64

    .line 150
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 132
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #c:I
    .end local v2           #i:I
    :cond_54
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_1a

    .line 145
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    .restart local v1       #c:I
    .restart local v2       #i:I
    :cond_5d
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 152
    :cond_64
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 155
    .end local v1           #c:I
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 157
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_71
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    :goto_11
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 125
    :cond_13
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0

    .line 121
    :cond_16
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    goto :goto_11
.end method

.method public makeCanonical()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x23

    const/16 v7, 0x20

    .line 231
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 232
    .local v4, length:I
    if-nez v4, :cond_11

    .line 233
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 277
    :goto_10
    return-object v5

    .line 235
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 238
    .local v3, index:I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_2a

    .line 239
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 245
    :cond_2a
    :goto_2a
    if-ge v3, v4, :cond_51

    .line 246
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 248
    .local v2, ch:C
    sparse-switch v2, :sswitch_data_6e

    .line 267
    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 250
    :sswitch_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 251
    .local v1, bufLength:I
    if-eqz v1, :cond_38

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_38

    .line 254
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 264
    .end local v1           #bufLength:I
    :sswitch_4d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 272
    .end local v2           #ch:C
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 273
    .restart local v1       #bufLength:I
    :goto_57
    const/4 v5, -0x1

    if-le v1, v5, :cond_63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_63

    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    .line 275
    :cond_63
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    .line 248
    nop

    :sswitch_data_6e
    .sparse-switch
        0x20 -> :sswitch_3b
        0x22 -> :sswitch_4d
        0x2b -> :sswitch_4d
        0x2c -> :sswitch_4d
        0x3b -> :sswitch_4d
        0x3c -> :sswitch_4d
        0x3e -> :sswitch_4d
        0x5c -> :sswitch_4d
    .end sparse-switch
.end method
