.class public Lmyorg/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private content:Lmyorg/bouncycastle/cms/CMSProcessable;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digestCalculator:Lmyorg/bouncycastle/cms/DigestCalculator;

.field private encryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;

.field private resultDigest:[B

.field private sid:Lmyorg/bouncycastle/cms/SignerId;

.field private signature:[B

.field private final signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

.field private final unsignedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/SignerInfo;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/cms/CMSProcessable;Lmyorg/bouncycastle/cms/DigestCalculator;)V
    .registers 11
    .parameter "info"
    .parameter "contentType"
    .parameter "content"
    .parameter "digestCalculator"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lmyorg/bouncycastle/cms/SignerInformation;->info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    .line 70
    new-instance v4, Lmyorg/bouncycastle/cms/SignerId;

    invoke-direct {v4}, Lmyorg/bouncycastle/cms/SignerId;-><init>()V

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    .line 71
    iput-object p2, p0, Lmyorg/bouncycastle/cms/SignerInformation;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 74
    :try_start_e
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    .line 76
    .local v3, s:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 77
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 79
    .local v2, octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    iget-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/cms/SignerId;->setSubjectKeyIdentifier([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_29} :catch_73

    .line 90
    .end local v2           #octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :goto_29
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 92
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 93
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 94
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signature:[B

    .line 96
    iput-object p3, p0, Lmyorg/bouncycastle/cms/SignerInformation;->content:Lmyorg/bouncycastle/cms/CMSProcessable;

    .line 97
    iput-object p4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestCalculator:Lmyorg/bouncycastle/cms/DigestCalculator;

    .line 98
    return-void

    .line 81
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 83
    .local v1, iAnds:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    iget-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/cms/SignerId;->setIssuer([B)V

    .line 84
    iget-object v4, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/cms/SignerId;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_72} :catch_73

    goto :goto_29

    .line 86
    .end local v1           #iAnds:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .end local v3           #s:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    :catch_73
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid sid in SignerInfo"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private derDecode([B)Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    .registers 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_f

    .line 450
    new-instance v2, Ljava/io/IOException;

    const-string v3, "not a digest info object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_f
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 455
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 459
    .local v1, digInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    if-eq v2, v3, :cond_2f

    .line 460
    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "malformed RSA signature"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_2f
    return-object v1
.end method

.method private doVerify(Ljava/security/PublicKey;Ljava/security/Provider;)Z
    .registers 26
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 286
    sget-object v20, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getDigestAlgOID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, digestName:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "with"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, signatureName:Ljava/lang/String;
    sget-object v20, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v12

    .line 290
    .local v12, sig:Ljava/security/Signature;
    sget-object v20, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 319
    .local v7, digest:Ljava/security/MessageDigest;
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->digestCalculator:Lmyorg/bouncycastle/cms/DigestCalculator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_87

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->digestCalculator:Lmyorg/bouncycastle/cms/DigestCalculator;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lmyorg/bouncycastle/cms/DigestCalculator;->getDigest()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/cms/SignerInformation;->resultDigest:[B
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_59} :catch_aa

    .line 338
    :goto_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v20, v0

    sget-object v21, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v20 .. v21}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 342
    .local v11, isCounterSignature:Z
    sget-object v20, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v21, "content-type"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v18

    .line 344
    .local v18, validContentType:Lmyorg/bouncycastle/asn1/DERObject;
    if-nez v18, :cond_c7

    .line 345
    if-nez v11, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    move-object/from16 v20, v0

    if-eqz v20, :cond_fb

    .line 346
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 322
    .end local v11           #isCounterSignature:Z
    .end local v18           #validContentType:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_87
    :try_start_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->content:Lmyorg/bouncycastle/cms/CMSProcessable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b7

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->content:Lmyorg/bouncycastle/cms/CMSProcessable;

    move-object/from16 v20, v0

    new-instance v21, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;-><init>(Ljava/security/MessageDigest;)V

    invoke-interface/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 331
    :cond_9f
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/cms/SignerInformation;->resultDigest:[B
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a9} :catch_aa

    goto :goto_59

    .line 333
    :catch_aa
    move-exception v9

    .line 334
    .local v9, e:Ljava/io/IOException;
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "can\'t process mime object to create signature."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20

    .line 324
    .end local v9           #e:Ljava/io/IOException;
    :cond_b7
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    move-object/from16 v20, v0

    if-nez v20, :cond_9f

    .line 327
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "data not encapsulated in signature - use detached constructor."

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c7} :catch_aa

    .line 350
    .restart local v11       #isCounterSignature:Z
    .restart local v18       #validContentType:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_c7
    if-eqz v11, :cond_d1

    .line 351
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 355
    :cond_d1
    move-object/from16 v0, v18

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move/from16 v20, v0

    if-nez v20, :cond_e1

    .line 356
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_e1
    move-object/from16 v15, v18

    .line 360
    check-cast v15, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 362
    .local v15, signedContentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_fb

    .line 363
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "content-type attribute value does not match eContentType"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 371
    .end local v15           #signedContentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_fb
    sget-object v20, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v21, "message-digest"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v19

    .line 373
    .local v19, validMessageDigest:Lmyorg/bouncycastle/asn1/DERObject;
    if-nez v19, :cond_11b

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    move-object/from16 v20, v0

    if-eqz v20, :cond_147

    .line 375
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 379
    :cond_11b
    move-object/from16 v0, v19

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move/from16 v20, v0

    if-nez v20, :cond_12b

    .line 380
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_12b
    move-object/from16 v16, v19

    .line 384
    check-cast v16, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 386
    .local v16, signedMessageDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v20

    if-nez v20, :cond_147

    .line 387
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "message-digest attribute value does not match calculated value"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 395
    .end local v16           #signedMessageDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_147
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v14

    .line 396
    .local v14, signedAttrTable:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v14, :cond_163

    sget-object v20, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v20

    if-lez v20, :cond_163

    .line 398
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 402
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v17

    .line 403
    .local v17, unsignedAttrTable:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v17, :cond_19d

    .line 404
    sget-object v20, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    .line 406
    .local v6, csAttrs:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_174
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_19d

    .line 407
    invoke-virtual {v6, v10}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/cms/Attribute;

    .line 408
    .local v5, csAttr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19a

    .line 409
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 406
    :cond_19a
    add-int/lit8 v10, v10, 0x1

    goto :goto_174

    .line 420
    .end local v5           #csAttr:Lmyorg/bouncycastle/asn1/cms/Attribute;
    .end local v6           #csAttrs:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v10           #i:I
    :cond_19d
    :try_start_19d
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    move-object/from16 v20, v0

    if-nez v20, :cond_1ee

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->digestCalculator:Lmyorg/bouncycastle/cms/DigestCalculator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1cb

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lmyorg/bouncycastle/cms/SignerInformation;->verifyDigest([BLjava/security/PublicKey;[BLjava/security/Provider;)Z

    move-result v20

    .line 434
    :goto_1ca
    return v20

    .line 426
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->content:Lmyorg/bouncycastle/cms/CMSProcessable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e3

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/cms/SignerInformation;->content:Lmyorg/bouncycastle/cms/CMSProcessable;

    move-object/from16 v20, v0

    new-instance v21, Lmyorg/bouncycastle/cms/CMSSignedGenerator$SigOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lmyorg/bouncycastle/cms/CMSSignedGenerator$SigOutputStream;-><init>(Ljava/security/Signature;)V

    invoke-interface/range {v20 .. v21}, Lmyorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 434
    :cond_1e3
    :goto_1e3
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v20

    goto :goto_1ca

    .line 431
    :cond_1ee
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/security/Signature;->update([B)V
    :try_end_1f7
    .catch Ljava/security/InvalidKeyException; {:try_start_19d .. :try_end_1f7} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1f7} :catch_205
    .catch Ljava/security/SignatureException; {:try_start_19d .. :try_end_1f7} :catch_212

    goto :goto_1e3

    .line 435
    :catch_1f8
    move-exception v9

    .line 436
    .local v9, e:Ljava/security/InvalidKeyException;
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "key not appropriate to signature in message."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20

    .line 437
    .end local v9           #e:Ljava/security/InvalidKeyException;
    :catch_205
    move-exception v9

    .line 438
    .local v9, e:Ljava/io/IOException;
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    const-string v21, "can\'t process mime object to create signature."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20

    .line 439
    .end local v9           #e:Ljava/io/IOException;
    :catch_212
    move-exception v9

    .line 440
    .local v9, e:Ljava/security/SignatureException;
    new-instance v20, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "invalid signature format in message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20
.end method

.method private getSigningTime()Lmyorg/bouncycastle/asn1/cms/Time;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v2, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "signing-time"

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 608
    .local v1, validSigningTime:Lmyorg/bouncycastle/asn1/DERObject;
    if-nez v1, :cond_c

    .line 609
    const/4 v2, 0x0

    .line 613
    :goto_b
    return-object v2

    :cond_c
    :try_start_c
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Time;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_b

    .line 614
    :catch_11
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSingleValuedSignedAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;
    .registers 11
    .parameter "attrOID"
    .parameter "printableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 572
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    .line 573
    .local v3, unsignedAttrTable:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v3, :cond_31

    invoke-virtual {v3, p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    if-lez v6, :cond_31

    .line 574
    new-instance v5, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 578
    :cond_31
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 579
    .local v1, signedAttrTable:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    if-nez v1, :cond_38

    .line 595
    :goto_37
    :pswitch_37
    return-object v5

    .line 583
    :cond_38
    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 584
    .local v4, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_9c

    .line 598
    new-instance v5, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 588
    :pswitch_62
    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/cms/Attribute;

    .line 589
    .local v2, t:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 590
    .local v0, attrValues:Lmyorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_92

    .line 591
    new-instance v5, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute MUST have a single attribute value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 595
    :cond_92
    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    goto :goto_37

    .line 584
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_62
    .end packed-switch
.end method

.method private isNull(Lmyorg/bouncycastle/asn1/DEREncodable;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 445
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private verifyDigest([BLjava/security/PublicKey;[BLjava/security/Provider;)Z
    .registers 14
    .parameter "digest"
    .parameter "key"
    .parameter "signature"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 468
    sget-object v7, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, algorithm:Ljava/lang/String;
    :try_start_b
    const-string v7, "RSA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 473
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    const-string v8, "RSA/ECB/PKCS1Padding"

    invoke-virtual {v7, v8, p4}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getCipherInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 476
    .local v1, c:Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    invoke-virtual {v1, v7, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 478
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/SignerInformation;->derDecode([B)Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v2

    .line 480
    .local v2, digInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    iget-object v8, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 499
    .end local v1           #c:Ljavax/crypto/Cipher;
    .end local v2           #digInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    :cond_3b
    :goto_3b
    return v6

    .line 484
    .restart local v1       #c:Ljavax/crypto/Cipher;
    .restart local v2       #digInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    :cond_3c
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/SignerInformation;->isNull(Lmyorg/bouncycastle/asn1/DEREncodable;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 488
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v5

    .line 490
    .local v5, sigHash:[B
    invoke-static {p1, v5}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    goto :goto_3b

    .line 491
    .end local v1           #c:Ljavax/crypto/Cipher;
    .end local v2           #digInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v5           #sigHash:[B
    :cond_53
    const-string v6, "DSA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 492
    sget-object v6, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    const-string v7, "NONEwithDSA"

    invoke-virtual {v6, v7, p4}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v4

    .line 495
    .local v4, sig:Ljava/security/Signature;
    invoke-virtual {v4, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 497
    invoke-virtual {v4, p1}, Ljava/security/Signature;->update([B)V

    .line 499
    invoke-virtual {v4, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    goto :goto_3b

    .line 501
    .end local v4           #sig:Ljava/security/Signature;
    :cond_6e
    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported in base signatures."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8d
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_8d} :catch_8d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_8d} :catch_a7

    .line 504
    :catch_8d
    move-exception v3

    .line 505
    .local v3, e:Ljava/security/GeneralSecurityException;
    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception processing signature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 506
    .end local v3           #e:Ljava/security/GeneralSecurityException;
    :catch_a7
    move-exception v3

    .line 507
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception decoding signature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method


# virtual methods
.method public getDigestAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_d

    .line 278
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 281
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Lmyorg/bouncycastle/cms/SignerId;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->sid:Lmyorg/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getSignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 178
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lmyorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    .line 181
    :cond_11
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 190
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lmyorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    .line 193
    :cond_11
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public toSignerInfo()Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SignerInformation;->info:Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 4
    .parameter "cert"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/SignerInformation;->verify(Ljava/security/cert/X509Certificate;Ljava/security/Provider;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/Provider;)Z
    .registers 5
    .parameter "cert"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSigningTime()Lmyorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    .line 554
    .local v0, signingTime:Lmyorg/bouncycastle/asn1/cms/Time;
    if-eqz v0, :cond_d

    .line 555
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 558
    :cond_d
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lmyorg/bouncycastle/cms/SignerInformation;->doVerify(Ljava/security/PublicKey;Ljava/security/Provider;)Z

    move-result v1

    return v1
.end method
