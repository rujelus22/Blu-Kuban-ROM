.class public Lcom/android/emailcommon/smime/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/CertificateUtil$1;,
        Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;,
        Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;,
        Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method public static varargs checkCertValidity([Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 496
    .local v1, cert:Ljava/security/cert/Certificate;
    instance-of v4, v1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_10

    .line 498
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1           #cert:Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 493
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 502
    :cond_13
    return-void
.end method

.method private static convertOIDtoAlgorithm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .registers 4
    .parameter "algorithm"
    .parameter "algorithmParam"

    .prologue
    .line 463
    const-string v1, "1.2.840.113549.3.7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 464
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    .line 488
    :goto_a
    return-object v1

    .line 466
    :cond_b
    const-string v1, "1.3.14.3.2.7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 467
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 468
    :cond_16
    const-string v1, "1.2.840.113549.3.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz p1, :cond_33

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 471
    .local v0, bits:I
    sparse-switch v0, :sswitch_data_54

    .line 488
    .end local v0           #bits:I
    :cond_27
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 473
    .restart local v0       #bits:I
    :sswitch_2a
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 475
    :sswitch_2d
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 477
    :sswitch_30
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC240_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 481
    .end local v0           #bits:I
    :cond_33
    const-string v1, "2.16.840.1.101.3.4.1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 482
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 483
    :cond_3e
    const-string v1, "2.16.840.1.101.3.4.1.22"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 484
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES192_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 485
    :cond_49
    const-string v1, "2.16.840.1.101.3.4.1.42"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 486
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES256_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_a

    .line 471
    :sswitch_data_54
    .sparse-switch
        0x28 -> :sswitch_30
        0x40 -> :sswitch_2d
        0x80 -> :sswitch_2a
    .end sparse-switch
.end method

.method public static convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "certificateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, certificate:Ljava/security/cert/X509Certificate;
    :try_start_1
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 74
    .local v0, cert:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n-----END CERTIFICATE-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1           #certificate:Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    .line 82
    .restart local v1       #certificate:Ljava/security/cert/X509Certificate;
    return-object v1

    .line 78
    .end local v0           #cert:Ljava/security/cert/CertificateFactory;
    .end local v1           #certificate:Ljava/security/cert/X509Certificate;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_30
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error while converting certificate. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static easIdToEncryptionAlgorith(I)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .registers 2
    .parameter "id"

    .prologue
    .line 321
    packed-switch p0, :pswitch_data_12

    .line 331
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    :goto_5
    return-object v0

    .line 323
    :pswitch_6
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_5

    .line 325
    :pswitch_9
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_5

    .line 327
    :pswitch_c
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_5

    .line 329
    :pswitch_f
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_5

    .line 321
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static evaluateBestAlghorithm(Lmyorg/bouncycastle/asn1/ASN1Set;II)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .registers 16
    .parameter "signerCapabilities"
    .parameter "requiredPolicy"
    .parameter "allowNegotiation"

    .prologue
    .line 347
    invoke-static {p1}, Lcom/android/emailcommon/smime/CertificateUtil;->easIdToEncryptionAlgorith(I)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v0

    .line 349
    .local v0, algRequiredByPolicy:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    if-nez p0, :cond_7

    .line 448
    .end local v0           #algRequiredByPolicy:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    :cond_6
    :goto_6
    return-object v0

    .line 353
    .restart local v0       #algRequiredByPolicy:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v4, algorithmsFromMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;>;"
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    .line 356
    .local v8, obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v11, v8, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v11, :cond_64

    move-object v10, v8

    .line 357
    check-cast v10, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 358
    .local v10, seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_19
    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v7, v11, :cond_64

    .line 359
    invoke-virtual {v10, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    .line 360
    .local v6, encodable:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v11, v6, Lmyorg/bouncycastle/asn1/DERSequence;

    if-eqz v11, :cond_47

    move-object v1, v6

    .line 361
    check-cast v1, Lmyorg/bouncycastle/asn1/DERSequence;

    .line 362
    .local v1, algSeq:Lmyorg/bouncycastle/asn1/DERSequence;
    const/4 v2, 0x0

    .line 363
    .local v2, algorithm:Ljava/lang/String;
    const/4 v3, 0x0

    .line 364
    .local v3, algorithmParam:Ljava/lang/String;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERSequence;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4a

    .line 365
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    :cond_3c
    :goto_3c
    invoke-static {v2, v3}, Lcom/android/emailcommon/smime/CertificateUtil;->convertOIDtoAlgorithm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v5

    .line 372
    .local v5, convertedAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    if-eq v5, v11, :cond_47

    .line 374
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v1           #algSeq:Lmyorg/bouncycastle/asn1/DERSequence;
    .end local v2           #algorithm:Ljava/lang/String;
    .end local v3           #algorithmParam:Ljava/lang/String;
    .end local v5           #convertedAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 366
    .restart local v1       #algSeq:Lmyorg/bouncycastle/asn1/DERSequence;
    .restart local v2       #algorithm:Ljava/lang/String;
    .restart local v3       #algorithmParam:Ljava/lang/String;
    :cond_4a
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERSequence;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3c

    .line 367
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    .line 386
    .end local v1           #algSeq:Lmyorg/bouncycastle/asn1/DERSequence;
    .end local v2           #algorithm:Ljava/lang/String;
    .end local v3           #algorithmParam:Ljava/lang/String;
    .end local v6           #encodable:Lmyorg/bouncycastle/asn1/DEREncodable;
    .end local v7           #i:I
    .end local v10           #seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6c

    if-gez p1, :cond_6

    .line 393
    :cond_6c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_84

    if-ltz p1, :cond_84

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->DO_NOT_NEGOTIATE:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_84

    .line 397
    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 400
    const/4 v0, 0x0

    goto :goto_6

    .line 409
    :cond_84
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_c0

    if-ltz p1, :cond_c0

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_c0

    .line 414
    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 422
    invoke-static {v0}, Lcom/android/emailcommon/smime/CertificateUtil;->getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I

    move-result v9

    .line 423
    .local v9, requiredStrength:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_9f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_bd

    .line 425
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    invoke-static {v11}, Lcom/android/emailcommon/smime/CertificateUtil;->getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I

    move-result v11

    if-gt v11, v9, :cond_ba

    .line 426
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-object v0, v11

    goto/16 :goto_6

    .line 423
    :cond_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 431
    :cond_bd
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 436
    .end local v7           #i:I
    .end local v9           #requiredStrength:I
    :cond_c0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_de

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_ANY:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_de

    .line 439
    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 445
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-object v0, v11

    goto/16 :goto_6

    .line 448
    :cond_de
    const/4 v0, 0x0

    goto/16 :goto_6
.end method

.method private static getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I
    .registers 3
    .parameter "algorithm"

    .prologue
    .line 300
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$1;->$SwitchMap$com$android$emailcommon$smime$CertificateUtil$EncryptionAlgorithm:[I

    invoke-virtual {p0}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 316
    const/16 v0, 0x64

    :goto_d
    return v0

    .line 303
    :pswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 306
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_d

    .line 309
    :pswitch_12
    const/4 v0, 0x2

    goto :goto_d

    .line 311
    :pswitch_14
    const/4 v0, 0x3

    goto :goto_d

    .line 313
    :pswitch_16
    const/4 v0, 0x4

    goto :goto_d

    .line 300
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public static getCertificates([Ljavax/mail/Address;JLandroid/content/Context;)Ljava/util/ArrayList;
    .registers 26
    .parameter "addresses"
    .parameter "accountId"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavax/mail/Address;",
            "J",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateUtilExcpetion;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v17, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    move-object/from16 v0, p0

    array-length v1, v0

    new-array v7, v1, [Ljavax/mail/internet/InternetAddress;

    .line 98
    .local v7, addr:[Ljavax/mail/internet/InternetAddress;
    const-string v1, "content://com.android.exchange.directory.provider/resolverecipients/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    .local v2, uri_RESOLVERECIPIENTS:Landroid/net/Uri;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_11
    move-object/from16 v0, p0

    array-length v1, v0

    if-ge v14, v1, :cond_1f

    .line 102
    aget-object v1, p0, v14

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    aput-object v1, v7, v14

    .line 101
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 105
    :cond_1f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v18, selection:Ljava/lang/StringBuilder;
    const-string v1, "accountId=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    array-length v1, v7

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 108
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 109
    array-length v1, v7

    const/4 v4, 0x1

    if-le v1, v4, :cond_72

    .line 110
    const/4 v14, 0x0

    :goto_42
    array-length v1, v7

    if-ge v14, v1, :cond_87

    .line 111
    if-nez v14, :cond_67

    .line 112
    const-string v1, "(to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_4e
    :goto_4e
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_5a

    .line 117
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_5a
    add-int/lit8 v1, v14, 0x1

    aget-object v4, v7, v14

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 110
    add-int/lit8 v14, v14, 0x1

    goto :goto_42

    .line 113
    :cond_67
    const/4 v1, 0x1

    if-lt v14, v1, :cond_4e

    .line 114
    const-string v1, " OR to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 123
    :cond_72
    array-length v1, v7

    const/4 v4, 0x1

    if-ne v1, v4, :cond_184

    .line 124
    const-string v1, "to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v1, 0x1

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 132
    :cond_87
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "to"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "email"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "certificate"

    aput-object v4, v3, v1

    .line 136
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 138
    .local v13, galCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 139
    .local v11, email:Ljava/lang/String;
    const/4 v8, 0x0

    .line 140
    .local v8, cert:Ljava/lang/String;
    const/16 v19, 0x0

    .line 142
    .local v19, to:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v9, delSelection:Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 145
    .local v12, firstSelection:Z
    :goto_b5
    if-eqz v13, :cond_15d

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 146
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 147
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    if-eqz v12, :cond_123

    .line 151
    const-string v1, "email"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/4 v12, 0x0

    .line 159
    :goto_e4
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 161
    .local v15, insert:Landroid/content/ContentProviderOperation$Builder;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v20, values:Landroid/content/ContentValues;
    const-string v1, "email"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "certificate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    if-eqz v8, :cond_13f

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13f

    .line 167
    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    invoke-static {v8}, Lcom/android/emailcommon/smime/CertificateUtil;->convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-direct {v1, v11, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 155
    .end local v15           #insert:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_123
    const-string v1, " OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e4

    .line 168
    .restart local v15       #insert:Landroid/content/ContentProviderOperation$Builder;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_13f
    if-eqz v11, :cond_14e

    .line 169
    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/4 v4, 0x0

    invoke-direct {v1, v11, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b5

    .line 171
    :cond_14e
    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b5

    .line 175
    .end local v15           #insert:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_15d
    if-eqz v13, :cond_162

    .line 176
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_162
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_184

    .line 181
    :try_start_168
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v4, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "com.android.email.provider"

    move-object/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_184
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_184} :catch_185
    .catch Landroid/content/OperationApplicationException; {:try_start_168 .. :try_end_184} :catch_18a

    .line 191
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #cert:Ljava/lang/String;
    .end local v9           #delSelection:Ljava/lang/StringBuilder;
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #firstSelection:Z
    .end local v13           #galCursor:Landroid/database/Cursor;
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v19           #to:Ljava/lang/String;
    :cond_184
    :goto_184
    return-object v17

    .line 184
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v8       #cert:Ljava/lang/String;
    .restart local v9       #delSelection:Ljava/lang/StringBuilder;
    .restart local v11       #email:Ljava/lang/String;
    .restart local v12       #firstSelection:Z
    .restart local v13       #galCursor:Landroid/database/Cursor;
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19       #to:Ljava/lang/String;
    :catch_185
    move-exception v10

    .line 185
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_184

    .line 186
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_18a
    move-exception v10

    .line 187
    .local v10, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_184
.end method

.method public static getSignerCapabilities(Lmyorg/bouncycastle/cms/SignerInformation;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .registers 5
    .parameter "signer"

    .prologue
    .line 289
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 290
    .local v1, table:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.9.15"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->get(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 291
    .local v0, att:Lmyorg/bouncycastle/asn1/cms/Attribute;
    if-nez v0, :cond_13

    .line 292
    const/4 v2, 0x0

    .line 294
    :goto_12
    return-object v2

    :cond_13
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    goto :goto_12
.end method

.method private static isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z
    .registers 4
    .parameter
    .parameter "required"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;",
            ">;",
            "Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 454
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_f

    .line 455
    const/4 v1, 0x1

    .line 458
    :goto_e
    return v1

    .line 453
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;
    .registers 18
    .parameter "certificates"
    .parameter "accountId"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;",
            "J",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v11, 0x0

    .line 211
    .local v11, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v12, selection:Ljava/lang/StringBuilder;
    const-string v0, "accountId=?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v13, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v0, "content://com.android.exchange.directory.provider/validatecert/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, uri_VALIDATE_CERT:Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1e
    :try_start_1e
    array-length v0, p0

    if-ge v9, v0, :cond_45

    .line 223
    const-string v0, " AND certificates=\'?\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, base64Cert:Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1e .. :try_end_36} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_36} :catch_3f

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 232
    .end local v6           #base64Cert:Ljava/lang/String;
    :catch_39
    move-exception v8

    .line 233
    .local v8, ex:Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v8}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 234
    const/4 v0, 0x0

    .line 255
    .end local v8           #ex:Ljava/security/cert/CertificateEncodingException;
    :goto_3e
    return-object v0

    .line 235
    :catch_3f
    move-exception v10

    .line 236
    .local v10, npe:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 237
    const/4 v0, 0x0

    goto :goto_3e

    .line 240
    .end local v10           #npe:Ljava/lang/NullPointerException;
    :cond_45
    const-string v0, " AND checkCRL=\'?\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "true"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 246
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_89

    .line 247
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .restart local v11       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_6d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 250
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_84

    const/4 v0, 0x1

    :goto_7c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_84
    const/4 v0, 0x0

    goto :goto_7c

    .line 252
    :cond_86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_89
    move-object v0, v11

    .line 255
    goto :goto_3e
.end method
