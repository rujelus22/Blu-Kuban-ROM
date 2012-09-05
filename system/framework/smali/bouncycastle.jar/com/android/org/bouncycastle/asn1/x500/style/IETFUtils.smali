.class public Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 5
    .parameter "buf"
    .parameter "typeAndValue"
    .parameter "oidSymbols"

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, sym:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :goto_f
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    return-void

    .line 167
    :cond_20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 229
    array-length v2, p0

    new-array v0, v2, [C

    .line 231
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 233
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 236
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2d

    .line 245
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    .line 247
    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_2d

    .line 249
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_2d
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    return-object v1
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .parameter "name"
    .parameter "lookUp"

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 118
    :cond_17
    :goto_17
    return-object v0

    .line 107
    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2e

    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 112
    :cond_2e
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 113
    .local v0, oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_17

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 5
    .parameter "oValue"

    .prologue
    .line 262
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 264
    :catch_e
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 21
    .parameter "name"
    .parameter "x500Style"

    .prologue
    .line 24
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 25
    .local v5, nTok:Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 27
    .local v3, builder:Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    :goto_e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_b2

    .line 29
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 30
    .local v11, token:Ljava/lang/String;
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 32
    .local v4, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 34
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "badly formated directory string"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 37
    :cond_2e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, attr:Ljava/lang/String;
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 39
    .local v14, value:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 41
    .local v8, oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/16 v17, 0x2b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_ad

    .line 43
    new-instance v13, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v17, 0x2b

    move/from16 v0, v17

    invoke-direct {v13, v14, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 44
    .local v13, vTok:Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, v:Ljava/lang/String;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 47
    .local v9, oids:Ljava/util/Vector;
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 49
    .local v15, values:Ljava/util/Vector;
    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v15, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    :goto_6b
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_9c

    .line 54
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, sv:Ljava/lang/String;
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 57
    .local v6, ndx:I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, nm:Ljava/lang/String;
    add-int/lit8 v17, v6, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, vl:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6b

    .line 64
    .end local v6           #ndx:I
    .end local v7           #nm:Ljava/lang/String;
    .end local v10           #sv:Ljava/lang/String;
    .end local v16           #vl:Ljava/lang/String;
    :cond_9c
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v17

    invoke-static {v15}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_e

    .line 68
    .end local v9           #oids:Ljava/util/Vector;
    .end local v12           #v:Ljava/lang/String;
    .end local v13           #vTok:Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v15           #values:Ljava/util/Vector;
    :cond_ad
    invoke-virtual {v3, v8, v14}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_e

    .line 72
    .end local v2           #attr:Ljava/lang/String;
    .end local v4           #index:I
    .end local v8           #oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v11           #token:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_b2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v17

    return-object v17
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    const/16 v5, 0x20

    .line 273
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v3, res:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 277
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, c1:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    const/4 v2, 0x1

    .local v2, k:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 283
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 284
    .local v1, c2:C
    if-ne v0, v5, :cond_24

    if-eq v1, v5, :cond_27

    .line 286
    :cond_24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    :cond_27
    move v0, v1

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 292
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #k:I
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .parameter "oids"

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    .local v1, tmp:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 96
    :cond_15
    return-object v1
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 4
    .parameter "values"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 79
    .local v1, tmp:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 81
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 84
    :cond_15
    return-object v1
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 9
    .parameter "str"
    .parameter "off"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x61

    .line 126
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 128
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_10
    array-length v4, v0

    if-eq v1, v4, :cond_50

    .line 130
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 131
    .local v2, left:C
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 133
    .local v3, right:C
    if-ge v2, v6, :cond_3a

    .line 135
    add-int/lit8 v4, v2, -0x30

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 141
    :goto_2c
    if-ge v3, v6, :cond_44

    .line 143
    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x30

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 128
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 139
    :cond_3a
    add-int/lit8 v4, v2, -0x61

    add-int/lit8 v4, v4, 0xa

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2c

    .line 147
    :cond_44
    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_37

    .line 151
    .end local v2           #left:C
    .end local v3           #right:C
    :cond_50
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    return-object v4
.end method

.method public static valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 10
    .parameter "value"

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v3, vBuf:Ljava/lang/StringBuffer;
    instance-of v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v4, :cond_a5

    instance-of v4, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-nez v4, :cond_a5

    .line 181
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    .end local p0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, v:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_a1

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v2           #v:Ljava/lang/String;
    :goto_3a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 197
    .local v0, end:I
    const/4 v1, 0x0

    .line 199
    .local v1, index:I
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_55

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_55

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_55

    .line 201
    add-int/lit8 v1, v1, 0x2

    .line 204
    :cond_55
    :goto_55
    if-eq v1, v0, :cond_cd

    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_9e

    .line 215
    :cond_95
    const-string v4, "\\"

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 220
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 188
    .end local v0           #end:I
    .end local v1           #index:I
    .restart local v2       #v:Ljava/lang/String;
    :cond_a1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 193
    .end local v2           #v:Ljava/lang/String;
    .restart local p0
    :cond_a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3a

    .line 223
    .end local p0
    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_cd
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
