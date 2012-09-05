.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 8
    .parameter "provider"
    .parameter "keyAlgorithm"
    .parameter "certAlgorithm"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 88
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 89
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 90
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 91
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 110
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 162
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 163
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 167
    if-eqz p1, :cond_3d

    .line 169
    :try_start_34
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 180
    :goto_3c
    return-void

    .line 173
    :cond_3d
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_3c

    .line 176
    :catch_46
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .registers 13
    .parameter "oid"
    .parameter "salt"
    .parameter "itCount"
    .parameter "password"
    .parameter "wrongPkcs12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1552
    .local v2, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1553
    .local v0, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1554
    .local v4, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 1555
    .local v1, key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1557
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1558
    .local v3, mac:Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1559
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1560
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 6
    .parameter "pubKey"

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 190
    .local v1, info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    .line 192
    .end local v1           #info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_15
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .registers 65
    .parameter "stream"
    .parameter "password"
    .parameter "useDEREncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    if-nez p2, :cond_a

    .line 1156
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1162
    :cond_a
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1165
    .local v47, keyS:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    .line 1167
    .local v50, ks:Ljava/util/Enumeration;
    :goto_17
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 1169
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    .line 1171
    .local v45, kSalt:[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1173
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1174
    .local v53, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    .line 1175
    .local v58, privKey:Ljava/security/PrivateKey;
    new-instance v44, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1176
    .local v44, kParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    .line 1177
    .local v41, kBytes:[B
    new-instance v39, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1178
    .local v39, kAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v42, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1179
    .local v42, kInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v18, 0x0

    .line 1180
    .local v18, attrSet:Z
    new-instance v43, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1182
    .local v43, kName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v58

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_10e

    move-object/from16 v21, v58

    .line 1184
    check-cast v21, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1188
    .local v21, bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1189
    .local v54, nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_a0

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 1191
    :cond_a0
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1197
    :cond_ae
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_d1

    .line 1199
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1201
    .local v32, ct:Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1204
    .end local v32           #ct:Ljava/security/cert/Certificate;
    :cond_d1
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1206
    .local v35, e:Ljava/util/Enumeration;
    :goto_d5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 1208
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1209
    .local v55, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1211
    .local v46, kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1212
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1214
    const/16 v18, 0x1

    .line 1216
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_d5

    .line 1220
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v46           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_10e
    if-nez v18, :cond_16d

    .line 1225
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1226
    .restart local v46       #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1228
    .restart local v32       #ct:Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1229
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1231
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1233
    new-instance v46, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v46           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1235
    .restart local v46       #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1236
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1238
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1241
    .end local v32           #ct:Ljava/security/cert/Certificate;
    .end local v46           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_16d
    new-instance v40, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1242
    .local v40, kBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_17

    .line 1245
    .end local v18           #attrSet:Z
    .end local v39           #kAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40           #kBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v41           #kBytes:[B
    .end local v42           #kInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43           #kName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v44           #kParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v45           #kSalt:[B
    .end local v53           #name:Ljava/lang/String;
    .end local v58           #privKey:Ljava/security/PrivateKey;
    :cond_18a
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v48

    .line 1246
    .local v48, keySEncoded:[B
    new-instance v49, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 1251
    .local v49, keyString:Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 1253
    .local v26, cSalt:[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1255
    new-instance v30, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1256
    .local v30, certSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1257
    .local v25, cParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1258
    .local v6, cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 1260
    .local v34, doneCerts:Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1261
    .local v31, cs:Ljava/util/Enumeration;
    :goto_1d7
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_329

    .line 1265
    :try_start_1dd
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1266
    .restart local v53       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    .line 1267
    .local v27, cert:Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1268
    .local v22, cAttrSet:Z
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1271
    .local v23, cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1273
    .local v36, fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_28e

    .line 1275
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1279
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1280
    .restart local v54       #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_228

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_236

    .line 1282
    :cond_228
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1288
    :cond_236
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_251

    .line 1290
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1293
    :cond_251
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1295
    .restart local v35       #e:Ljava/util/Enumeration;
    :goto_255
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 1297
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1298
    .restart local v55       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1300
    .local v37, fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1301
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1302
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1304
    const/16 v22, 0x1

    .line 1305
    goto :goto_255

    .line 1308
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_28e
    if-nez v22, :cond_2e5

    .line 1310
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1312
    .restart local v37       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1313
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1314
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1316
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1318
    .restart local v37       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1319
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1321
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1324
    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2e5
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1326
    .local v60, sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1328
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_309
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1dd .. :try_end_309} :catch_30b

    goto/16 :goto_1d7

    .line 1330
    .end local v22           #cAttrSet:Z
    .end local v23           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v36           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v53           #name:Ljava/lang/String;
    .end local v60           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_30b
    move-exception v35

    .line 1332
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1336
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1337
    :cond_331
    :goto_331
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_456

    .line 1341
    :try_start_337
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1342
    .local v29, certId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1343
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1345
    .restart local v22       #cAttrSet:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_331

    .line 1350
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1353
    .restart local v23       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1355
    .restart local v36       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_3e7

    .line 1357
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1361
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1362
    .restart local v54       #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v54, :cond_392

    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a0

    .line 1364
    :cond_392
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1367
    :cond_3a0
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1369
    .local v35, e:Ljava/util/Enumeration;
    :cond_3a4
    :goto_3a4
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3e7

    .line 1371
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1377
    .restart local v55       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a4

    .line 1382
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1384
    .restart local v37       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1385
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1386
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1388
    const/16 v22, 0x1

    .line 1389
    goto :goto_3a4

    .line 1392
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v55           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3e7
    if-nez v22, :cond_412

    .line 1394
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1396
    .restart local v37       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1397
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1399
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1402
    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_412
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1404
    .restart local v60       #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1406
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_436
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_337 .. :try_end_436} :catch_438

    goto/16 :goto_331

    .line 1408
    .end local v22           #cAttrSet:Z
    .end local v23           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Ljava/lang/String;
    .end local v36           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_438
    move-exception v35

    .line 1410
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1414
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1415
    :cond_45e
    :goto_45e
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_523

    .line 1419
    :try_start_464
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1420
    .local v29, certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1422
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_45e

    .line 1427
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1430
    .restart local v23       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v36, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1432
    .restart local v36       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_506

    .line 1434
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1435
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1437
    .local v35, e:Ljava/util/Enumeration;
    :cond_4a7
    :goto_4a7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_506

    .line 1439
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1445
    .restart local v55       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a7

    .line 1450
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1452
    .restart local v37       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1453
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1454
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_4e7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_464 .. :try_end_4e7} :catch_4e8

    goto :goto_4a7

    .line 1462
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v36           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v37           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_4e8
    move-exception v35

    .line 1464
    .local v35, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1458
    .end local v35           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v23       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v27       #cert:Ljava/security/cert/Certificate;
    .restart local v29       #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v36       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_506
    :try_start_506
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1460
    .restart local v60       #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_521
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_506 .. :try_end_521} :catch_4e8

    goto/16 :goto_45e

    .line 1468
    .end local v23           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v27           #cert:Ljava/security/cert/Certificate;
    .end local v29           #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v36           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v60           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_523
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v9

    .line 1469
    .local v9, certSeqEncoded:[B
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    .line 1470
    .local v28, certBytes:[B
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1472
    .local v24, cInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    .line 1478
    .local v38, info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v19, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1480
    .local v19, auth:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1482
    .local v20, bOut:Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_5f8

    .line 1484
    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1491
    .local v17, asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_580
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1493
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    .line 1495
    .local v57, pkg:[B
    new-instance v52, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1500
    .local v52, mainInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 1501
    .local v11, mSalt:[B
    const/16 v12, 0x400

    .line 1503
    .local v12, itCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1505
    invoke-virtual/range {v52 .. v52}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 1511
    .local v15, data:[B
    :try_start_5b2
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    .line 1514
    .local v59, res:[B
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1516
    .local v16, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v33, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1518
    .local v33, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v51, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_5da
    .catch Ljava/lang/Exception; {:try_start_5b2 .. :try_end_5da} :catch_603

    .line 1528
    .local v51, mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    new-instance v56, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1530
    .local v56, pfx:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_621

    .line 1532
    new-instance v17, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    .end local v17           #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1539
    .restart local v17       #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_5f0
    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1540
    return-void

    .line 1488
    .end local v11           #mSalt:[B
    .end local v12           #itCount:I
    .end local v15           #data:[B
    .end local v16           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v17           #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .end local v33           #dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v51           #mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v52           #mainInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v56           #pfx:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v57           #pkg:[B
    .end local v59           #res:[B
    :cond_5f8
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17       #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto/16 :goto_580

    .line 1520
    .restart local v11       #mSalt:[B
    .restart local v12       #itCount:I
    .restart local v15       #data:[B
    .restart local v52       #mainInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v57       #pkg:[B
    :catch_603
    move-exception v35

    .line 1522
    .local v35, e:Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1536
    .end local v35           #e:Ljava/lang/Exception;
    .restart local v16       #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v33       #dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local v51       #mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v56       #pfx:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v59       #res:[B
    :cond_621
    new-instance v17, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    .end local v17           #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17       #asn1Out:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto :goto_5f0
.end method


# virtual methods
.method protected cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .registers 19
    .parameter "forEncryption"
    .parameter "algId"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, algorithm:Ljava/lang/String;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 645
    .local v8, pbeParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 649
    .local v9, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_1a
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 650
    .local v6, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 653
    .local v3, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 655
    .local v5, key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 657
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 658
    .local v2, cipher:Ljavax/crypto/Cipher;
    if-eqz p1, :cond_4f

    const/4 v7, 0x1

    .line 659
    .local v7, mode:I
    :goto_45
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 660
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4d} :catch_51

    move-result-object v10

    return-object v10

    .line 658
    .end local v7           #mode:I
    :cond_4f
    const/4 v7, 0x2

    goto :goto_45

    .line 662
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5           #key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .end local v6           #keyFact:Ljavax/crypto/SecretKeyFactory;
    :catch_51
    move-exception v4

    .line 664
    .local v4, e:Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .registers 6

    .prologue
    .line 206
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 208
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 209
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 211
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 214
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 215
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 217
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 220
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 224
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 8
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 243
    .local v2, k:Ljava/security/Key;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 245
    .local v0, c:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_20

    .line 247
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_20
    if-eqz v2, :cond_44

    .line 252
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 255
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 257
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_34
    if-eqz v0, :cond_44

    .line 259
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v1           #id:Ljava/lang/String;
    :cond_44
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "alias"

    .prologue
    .line 278
    if-nez p1, :cond_a

    .line 280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 288
    .local v0, c:Ljava/security/cert/Certificate;
    if-nez v0, :cond_26

    .line 290
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 293
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 301
    .end local v1           #id:Ljava/lang/String;
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_26
    :goto_26
    return-object v0

    .line 297
    .restart local v1       #id:Ljava/lang/String;
    :cond_27
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0       #c:Ljava/security/cert/Certificate;
    goto :goto_26
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .parameter "cert"

    .prologue
    .line 307
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 308
    .local v0, c:Ljava/util/Enumeration;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 310
    .local v1, k:Ljava/util/Enumeration;
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 312
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 313
    .local v3, tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    .local v2, ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 335
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :goto_24
    return-object v2

    .line 321
    :cond_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 322
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 324
    :cond_31
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 326
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 327
    .restart local v3       #tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 329
    .restart local v2       #ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_24

    .line 335
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 22
    .parameter "alias"

    .prologue
    .line 341
    if-nez p1, :cond_a

    .line 343
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 346
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 348
    const/4 v7, 0x0

    .line 439
    :cond_11
    :goto_11
    return-object v7

    .line 351
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 353
    .local v6, c:Ljava/security/cert/Certificate;
    if-eqz v6, :cond_e5

    .line 355
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 357
    .local v9, cs:Ljava/util/Vector;
    :goto_1d
    if-eqz v6, :cond_ca

    move-object/from16 v16, v6

    .line 359
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 360
    .local v16, x509c:Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 362
    .local v13, nextC:Ljava/security/cert/Certificate;
    sget-object v17, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 363
    .local v5, bytes:[B
    if-eqz v5, :cond_72

    .line 367
    :try_start_30
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 369
    .local v3, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 370
    .local v4, authBytes:[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v3           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 372
    .restart local v3       #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 373
    .local v12, id:Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_72

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #nextC:Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_72} :catch_bc

    .line 385
    .end local v3           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #authBytes:[B
    .end local v12           #id:Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_72
    if-nez v13, :cond_b4

    .line 390
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 391
    .local v11, i:Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 393
    .local v14, s:Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b4

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 397
    .local v10, e:Ljava/util/Enumeration;
    :cond_8c
    :goto_8c
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_b4

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 400
    .local v8, crt:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 401
    .local v15, sub:Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8c

    .line 405
    :try_start_ac
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_e8

    .line 406
    move-object v13, v8

    .line 418
    .end local v8           #crt:Ljava/security/cert/X509Certificate;
    .end local v10           #e:Ljava/util/Enumeration;
    .end local v11           #i:Ljava/security/Principal;
    .end local v14           #s:Ljava/security/Principal;
    .end local v15           #sub:Ljava/security/Principal;
    :cond_b4
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 419
    if-eq v13, v6, :cond_c7

    .line 421
    move-object v6, v13

    goto/16 :goto_1d

    .line 379
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    :catch_bc
    move-exception v10

    .line 381
    .local v10, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 425
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_c7
    const/4 v6, 0x0

    goto/16 :goto_1d

    .line 429
    .end local v5           #bytes:[B
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    .end local v16           #x509c:Ljava/security/cert/X509Certificate;
    :cond_ca
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    .line 431
    .local v7, certChain:[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_d3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_11

    .line 433
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    .line 431
    add-int/lit8 v11, v11, 0x1

    goto :goto_d3

    .line 439
    .end local v7           #certChain:[Ljava/security/cert/Certificate;
    .end local v9           #cs:Ljava/util/Vector;
    .end local v11           #i:I
    :cond_e5
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 409
    .restart local v5       #bytes:[B
    .restart local v8       #crt:Ljava/security/cert/X509Certificate;
    .restart local v9       #cs:Ljava/util/Vector;
    .local v10, e:Ljava/util/Enumeration;
    .local v11, i:Ljava/security/Principal;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    .restart local v14       #s:Ljava/security/Principal;
    .restart local v15       #sub:Ljava/security/Principal;
    .restart local v16       #x509c:Ljava/security/cert/X509Certificate;
    :catch_e8
    move-exception v17

    goto :goto_8c
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "alias"

    .prologue
    .line 445
    if-nez p1, :cond_a

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 449
    const/4 v0, 0x0

    .line 452
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1b
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 460
    if-nez p1, :cond_a

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 57
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    if-nez p1, :cond_3

    .line 1108
    :cond_2
    return-void

    .line 678
    :cond_3
    if-nez p2, :cond_d

    .line 680
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 683
    :cond_d
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 685
    .local v25, bufIn:Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 687
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    .line 689
    .local v38, head:I
    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_2f

    .line 691
    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 694
    :cond_2f
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    .line 696
    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 697
    .local v22, bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v45

    check-cast v45, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 698
    .local v45, obj:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 699
    .local v23, bag:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    .line 700
    .local v40, info:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 701
    .local v30, chain:Ljava/util/Vector;
    const/16 v53, 0x0

    .line 702
    .local v53, unmarkedKey:Z
    const/4 v13, 0x0

    .line 704
    .local v13, wrongPKCS12Zero:Z
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_e2

    .line 706
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v43

    .line 707
    .local v43, mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v33

    .line 708
    .local v33, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 709
    .local v16, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    .line 710
    .local v4, salt:[B
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 712
    .local v5, itCount:I
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 716
    .local v8, data:[B
    :try_start_7e
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 717
    .local v50, res:[B
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    .line 719
    .local v34, dig:[B
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_e2

    .line 721
    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_a6

    .line 723
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_a4} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a4} :catch_c3

    .line 737
    .end local v34           #dig:[B
    .end local v50           #res:[B
    :catch_a4
    move-exception v35

    .line 739
    .local v35, e:Ljava/io/IOException;
    throw v35

    .line 727
    .end local v35           #e:Ljava/io/IOException;
    .restart local v34       #dig:[B
    .restart local v50       #res:[B
    :cond_a6
    :try_start_a6
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 729
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 731
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_c3} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c3} :catch_c3

    .line 741
    .end local v34           #dig:[B
    .end local v50           #res:[B
    :catch_c3
    move-exception v35

    .line 743
    .local v35, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    .end local v35           #e:Ljava/lang/Exception;
    .restart local v34       #dig:[B
    .restart local v50       #res:[B
    :cond_e1
    const/4 v13, 0x1

    .line 747
    .end local v4           #salt:[B
    .end local v5           #itCount:I
    .end local v8           #data:[B
    .end local v16           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33           #dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v34           #dig:[B
    .end local v43           #mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v50           #res:[B
    :cond_e2
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 748
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 750
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_522

    .line 752
    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v22           #bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 754
    .restart local v22       #bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v20, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 755
    .local v20, authSafe:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    .line 757
    .local v26, c:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v39, 0x0

    .local v39, i:I
    :goto_125
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_522

    .line 759
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29c

    .line 761
    new-instance v32, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 762
    .local v32, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 764
    .local v51, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .local v41, j:I
    :goto_155
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_51e

    .line 766
    new-instance v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 767
    .local v21, b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 769
    new-instance v36, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 770
    .local v36, eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .local v49, privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 775
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 776
    .local v24, bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 777
    .local v17, alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 779
    .local v42, localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_226

    .line 781
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 782
    .local v35, e:Ljava/util/Enumeration;
    :cond_1ad
    :goto_1ad
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_226

    .line 784
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 785
    .local v52, sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 786
    .local v15, aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 787
    .local v19, attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 789
    .local v18, attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1ff

    .line 791
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 793
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 794
    .local v37, existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_1f8

    .line 797
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ff

    .line 799
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 805
    :cond_1f8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 809
    .end local v37           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_1ff
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    .line 811
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1ad

    .line 814
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_219
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    move-object/from16 v42, v18

    .line 816
    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_1ad

    .line 821
    .end local v15           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v52           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_226
    if-eqz v42, :cond_254

    .line 823
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 825
    .local v44, name:Ljava/lang/String;
    if-nez v17, :cond_248

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :goto_244
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_155

    .line 831
    .restart local v17       #alias:Ljava/lang/String;
    .restart local v24       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v36       #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v42       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v44       #name:Ljava/lang/String;
    .restart local v49       #privKey:Ljava/security/PrivateKey;
    :cond_248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_244

    .line 836
    .end local v44           #name:Ljava/lang/String;
    :cond_254
    const/16 v53, 0x1

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_244

    .line 840
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_262
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_276

    .line 842
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_244

    .line 846
    :cond_276
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_244

    .line 851
    .end local v21           #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v32           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v41           #j:I
    .end local v51           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_29c
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4da

    .line 853
    new-instance v31, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 854
    .local v31, d:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v46

    .line 856
    .local v46, octets:[B
    invoke-static/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v51

    check-cast v51, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 858
    .restart local v51       #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .restart local v41       #j:I
    :goto_2d6
    invoke-virtual/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_51e

    .line 860
    new-instance v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 862
    .restart local v21       #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_305

    .line 864
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 858
    :goto_302
    add-int/lit8 v41, v41, 0x1

    goto :goto_2d6

    .line 866
    :cond_305
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e2

    .line 868
    new-instance v36, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 869
    .restart local v36       #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 874
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 875
    .restart local v24       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 876
    .restart local v17       #alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 878
    .restart local v42       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 879
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_33e
    :goto_33e
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3b7

    .line 881
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 882
    .restart local v52       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 883
    .restart local v15       #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 884
    .restart local v19       #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 886
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_390

    .line 888
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 890
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 891
    .restart local v37       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_389

    .line 894
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_390

    .line 896
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 902
    :cond_389
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 906
    .end local v37           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_390
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3aa

    .line 908
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33e

    .line 911
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_3aa
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33e

    move-object/from16 v42, v18

    .line 913
    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_33e

    .line 917
    .end local v15           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v52           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3b7
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 919
    .restart local v44       #name:Ljava/lang/String;
    if-nez v17, :cond_3d5

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_302

    .line 925
    :cond_3d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_302

    .line 928
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v36           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_3e2
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b3

    .line 930
    new-instance v48, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 931
    .local v48, pIn:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v48 .. v48}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 936
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 937
    .restart local v24       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 938
    .restart local v17       #alias:Ljava/lang/String;
    const/16 v42, 0x0

    .line 940
    .restart local v42       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 941
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_40f
    :goto_40f
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_488

    .line 943
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 944
    .restart local v52       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 945
    .restart local v15       #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 946
    .restart local v19       #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 948
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_461

    .line 950
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 952
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 953
    .restart local v37       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_45a

    .line 956
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_461

    .line 958
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 964
    :cond_45a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 968
    .end local v37           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_461
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47b

    .line 970
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40f

    .line 973
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_47b
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40f

    move-object/from16 v42, v18

    .line 975
    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_40f

    .line 979
    .end local v15           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v19           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v52           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_488
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 981
    .restart local v44       #name:Ljava/lang/String;
    if-nez v17, :cond_4a6

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_302

    .line 987
    :cond_4a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_302

    .line 992
    .end local v17           #alias:Ljava/lang/String;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v42           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v44           #name:Ljava/lang/String;
    .end local v48           #pIn:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v49           #privKey:Ljava/security/PrivateKey;
    :cond_4b3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_302

    .line 999
    .end local v21           #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v31           #d:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v41           #j:I
    .end local v46           #octets:[B
    .end local v51           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_4da
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    :cond_51e
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_125

    .line 1005
    .end local v20           #authSafe:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26           #c:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v39           #i:I
    :cond_522
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 1006
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 1007
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 1009
    const/16 v39, 0x0

    .restart local v39       #i:I
    :goto_540
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_2

    .line 1011
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1012
    .restart local v21       #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v28, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1014
    .local v28, cb:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_588

    .line 1016
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1023
    :cond_588
    :try_start_588
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1025
    .local v27, cIn:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_5a2
    .catch Ljava/lang/Exception; {:try_start_588 .. :try_end_5a2} :catch_604

    move-result-object v29

    .line 1035
    .local v29, cert:Ljava/security/cert/Certificate;
    const/16 v42, 0x0

    .line 1036
    .restart local v42       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/16 v17, 0x0

    .line 1038
    .restart local v17       #alias:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_639

    .line 1040
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 1041
    .restart local v35       #e:Ljava/util/Enumeration;
    :cond_5b5
    :goto_5b5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_639

    .line 1043
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1044
    .restart local v52       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v47

    check-cast v47, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1045
    .local v47, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 1046
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    const/16 v24, 0x0

    .line 1048
    .restart local v24       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_618

    move-object/from16 v24, v29

    .line 1050
    check-cast v24, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1052
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v37

    .line 1053
    .restart local v37       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v37, :cond_60f

    .line 1056
    invoke-interface/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_618

    .line 1058
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    .end local v17           #alias:Ljava/lang/String;
    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v27           #cIn:Ljava/io/ByteArrayInputStream;
    .end local v29           #cert:Ljava/security/cert/Certificate;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v37           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .end local v42           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v47           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_604
    move-exception v35

    .line 1029
    .local v35, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1064
    .restart local v17       #alias:Ljava/lang/String;
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .restart local v24       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v27       #cIn:Ljava/io/ByteArrayInputStream;
    .restart local v29       #cert:Ljava/security/cert/Certificate;
    .local v35, e:Ljava/util/Enumeration;
    .restart local v37       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .restart local v42       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v47       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v52       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_60f
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1068
    .end local v37           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_618
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_629

    .line 1070
    check-cast v18, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5b5

    .line 1072
    .restart local v18       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_629
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b5

    move-object/from16 v42, v18

    .line 1074
    check-cast v42, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto/16 :goto_5b5

    .line 1079
    .end local v18           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v24           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35           #e:Ljava/util/Enumeration;
    .end local v47           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    if-eqz v53, :cond_694

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_690

    .line 1085
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1087
    .restart local v44       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    .end local v44           #name:Ljava/lang/String;
    :cond_690
    :goto_690
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_540

    .line 1096
    :cond_694
    if-eqz v42, :cond_6b0

    .line 1098
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1100
    .restart local v44       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .end local v44           #name:Ljava/lang/String;
    :cond_6b0
    if-eqz v17, :cond_690

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_690
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 487
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_27
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 511
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-nez v1, :cond_c

    .line 512
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_c
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1a

    if-nez p4, :cond_1a

    .line 517
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_1a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 525
    :cond_25
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    if-eqz p4, :cond_4d

    .line 529
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    array-length v1, p4

    if-eq v0, v1, :cond_4d

    .line 533
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 538
    .end local v0           #i:I
    :cond_4d
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .registers 6

    .prologue
    .line 542
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 544
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 545
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 547
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 550
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 551
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 553
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 556
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 560
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1149
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 8
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1113
    if-nez p1, :cond_a

    .line 1115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'param\' arg cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1118
    :cond_a
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v3, :cond_2f

    .line 1120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for \'param\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    move-object v0, p1

    .line 1124
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    .line 1127
    .local v0, bcParam:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    .line 1128
    .local v2, protParam:Ljava/security/KeyStore$ProtectionParameter;
    if-nez v2, :cond_45

    .line 1130
    const/4 v1, 0x0

    .line 1142
    .end local v2           #protParam:Ljava/security/KeyStore$ProtectionParameter;
    .local v1, password:[C
    :goto_39
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1143
    return-void

    .line 1132
    .end local v1           #password:[C
    .restart local v2       #protParam:Ljava/security/KeyStore$ProtectionParameter;
    :cond_45
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_50

    .line 1134
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    .end local v2           #protParam:Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .restart local v1       #password:[C
    goto :goto_39

    .line 1138
    .end local v1           #password:[C
    .restart local v2       #protParam:Ljava/security/KeyStore$ProtectionParameter;
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "rand"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 202
    return-void
.end method

.method protected unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 18
    .parameter "algId"
    .parameter "data"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, algorithm:Ljava/lang/String;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 573
    .local v8, pbeParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 578
    .local v9, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_1a
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 580
    .local v6, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 584
    .local v3, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 586
    .local v5, k:Ljavax/crypto/SecretKey;
    move-object v0, v5

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v10, v0

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 588
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 590
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v10, 0x4

    invoke-virtual {v2, v10, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 593
    const-string v10, ""

    const/4 v11, 0x2

    invoke-virtual {v2, p2, v10, v11}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_51} :catch_52

    .line 600
    .local v7, out:Ljava/security/PrivateKey;
    return-object v7

    .line 595
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5           #k:Ljavax/crypto/SecretKey;
    .end local v6           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v7           #out:Ljava/security/PrivateKey;
    :catch_52
    move-exception v4

    .line 597
    .local v4, e:Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception unwrapping private key - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 14
    .parameter "algorithm"
    .parameter "key"
    .parameter "pbeParams"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 615
    .local v5, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_5
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 617
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 621
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 623
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 625
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2f

    move-result-object v4

    .line 632
    .local v4, out:[B
    return-object v4

    .line 627
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #out:[B
    :catch_2f
    move-exception v2

    .line 629
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
