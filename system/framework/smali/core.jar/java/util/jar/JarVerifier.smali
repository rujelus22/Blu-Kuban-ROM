.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field mainAttributesEnd:I

.field private man:Ljava/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x5

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 146
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic access$000(Ljava/util/jar/JarVerifier;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/jar/JarVerifier;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    return-object v0
.end method

.method private failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 6
    .parameter "jarName"
    .parameter "signatureFile"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .registers 8
    .parameter "signatureFileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, certificates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/security/cert/Certificate;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 459
    .local v5, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 460
    .local v1, certChain:[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1a

    .line 461
    move-object v0, v1

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v4, :cond_1a

    aget-object v2, v0, v3

    .line 462
    .local v2, element:Ljava/security/cert/Certificate;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 465
    .end local v0           #arr$:[Ljava/security/cert/Certificate;
    .end local v2           #element:Ljava/security/cert/Certificate;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1a
    return-object v5
.end method

.method private invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 7
    .parameter "signatureFile"
    .parameter "name"
    .parameter "jarName"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .registers 18
    .parameter "attributes"
    .parameter "entry"
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "ignoreSecondEndline"
    .parameter "ignorable"

    .prologue
    .line 381
    const-string v8, "Digest-Algorithms"

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, algorithms:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 383
    const-string v1, "SHA SHA1"

    .line 385
    :cond_a
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 386
    .local v7, tokens:Ljava/util/StringTokenizer;
    :cond_f
    :goto_f
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 387
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, algorithm:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, hash:Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 395
    :try_start_30
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_33} :catch_5f

    move-result-object v6

    .line 399
    .local v6, md:Ljava/security/MessageDigest;
    if-eqz p6, :cond_61

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_61

    add-int/lit8 v8, p5, -0x2

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_61

    .line 401
    add-int/lit8 v8, p5, -0x1

    sub-int/2addr v8, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 405
    :goto_4c
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 406
    .local v2, b:[B
    sget-object v8, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 407
    .local v5, hashBytes:[B
    invoke-static {v5}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v8

    invoke-static {v2, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p7

    .line 409
    .end local v0           #algorithm:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v4           #hash:Ljava/lang/String;
    .end local v5           #hashBytes:[B
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local p7
    :cond_5e
    return p7

    .line 396
    .restart local v0       #algorithm:Ljava/lang/String;
    .restart local v4       #hash:Ljava/lang/String;
    .restart local p7
    :catch_5f
    move-exception v3

    .line 397
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_f

    .line 403
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v6       #md:Ljava/security/MessageDigest;
    :cond_61
    sub-int v8, p5, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4c
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .registers 27
    .parameter "certFile"

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 276
    .local v23, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    .line 277
    .local v22, sfBytes:[B
    if-nez v22, :cond_31

    .line 356
    :cond_30
    :goto_30
    return-void

    .line 281
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 283
    .local v5, manifest:[B
    if-eqz v5, :cond_30

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 289
    .local v21, sBlockBytes:[B
    :try_start_4b
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v6}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v24

    .line 296
    .local v24, signerCertChain:[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v2, :cond_30

    .line 299
    if-eqz v24, :cond_70

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_70} :catch_c6
    .catch Ljava/security/GeneralSecurityException; {:try_start_4b .. :try_end_70} :catch_c9

    .line 309
    :cond_70
    new-instance v3, Ljava/util/jar/Attributes;

    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    .line 310
    .local v3, attributes:Ljava/util/jar/Attributes;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v17, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_7a
    new-instance v19, Ljava/util/jar/InitManifest;

    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3, v2}, Ljava/util/jar/InitManifest;-><init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V

    .line 313
    .local v19, im:Ljava/util/jar/InitManifest;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8d} :catch_d7

    .line 318
    const/4 v12, 0x0

    .line 319
    .local v12, createdBySigntool:Z
    const-string v2, "Created-By"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 320
    .local v15, createdBy:Ljava/lang/String;
    if-eqz v15, :cond_a0

    .line 321
    const-string v2, "signtool"

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_da

    const/4 v12, 0x1

    .line 328
    :cond_a0
    :goto_a0
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_dc

    if-nez v12, :cond_dc

    .line 329
    const-string v4, "-Digest-Manifest-Main-Attributes"

    .line 330
    .local v4, digestAttribute:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 302
    .end local v3           #attributes:Ljava/util/jar/Attributes;
    .end local v4           #digestAttribute:Ljava/lang/String;
    .end local v12           #createdBySigntool:Z
    .end local v15           #createdBy:Ljava/lang/String;
    .end local v17           #entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v19           #im:Ljava/util/jar/InitManifest;
    .end local v24           #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_c6
    move-exception v16

    .line 303
    .local v16, e:Ljava/io/IOException;
    goto/16 :goto_30

    .line 304
    .end local v16           #e:Ljava/io/IOException;
    :catch_c9
    move-exception v16

    .line 305
    .local v16, e:Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 314
    .end local v16           #e:Ljava/security/GeneralSecurityException;
    .restart local v3       #attributes:Ljava/util/jar/Attributes;
    .restart local v17       #entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v24       #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_d7
    move-exception v16

    .line 315
    .local v16, e:Ljava/io/IOException;
    goto/16 :goto_30

    .line 321
    .end local v16           #e:Ljava/io/IOException;
    .restart local v12       #createdBySigntool:Z
    .restart local v15       #createdBy:Ljava/lang/String;
    .restart local v19       #im:Ljava/util/jar/InitManifest;
    :cond_da
    const/4 v12, 0x0

    goto :goto_a0

    .line 336
    :cond_dc
    if-eqz v12, :cond_139

    const-string v4, "-Digest"

    .line 338
    .restart local v4       #digestAttribute:Ljava/lang/String;
    :goto_e0
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 340
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 342
    .local v20, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_f4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 343
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 344
    .local v18, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;

    move-result-object v14

    .line 345
    .local v14, chunk:Ljava/util/jar/Manifest$Chunk;
    if-eqz v14, :cond_30

    .line 348
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/Attributes;

    const-string v8, "-Digest"

    iget v10, v14, Ljava/util/jar/Manifest$Chunk;->start:I

    iget v11, v14, Ljava/util/jar/Manifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 350
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v6}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 336
    .end local v4           #digestAttribute:Ljava/lang/String;
    .end local v14           #chunk:Ljava/util/jar/Manifest$Chunk;
    .end local v18           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_139
    const-string v4, "-Digest-Manifest"

    goto :goto_e0

    .line 354
    .restart local v4       #digestAttribute:Ljava/lang/String;
    :cond_13c
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .registers 5
    .parameter "name"
    .parameter "buf"

    .prologue
    .line 230
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .parameter "name"

    .prologue
    .line 422
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 423
    .local v0, verifiedCerts:[Ljava/security/cert/Certificate;
    if-nez v0, :cond_c

    .line 424
    const/4 v1, 0x0

    .line 426
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_b
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .registers 19
    .parameter "name"

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 166
    :cond_10
    const/4 v1, 0x0

    .line 213
    :goto_11
    return-object v1

    .line 169
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    .line 171
    .local v9, attributes:Ljava/util/jar/Attributes;
    if-nez v9, :cond_20

    .line 172
    const/4 v1, 0x0

    goto :goto_11

    .line 175
    :cond_20
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v10, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 177
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_31
    :goto_31
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 178
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 179
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 180
    .local v13, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 182
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 183
    .local v15, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-static {v15, v1}, Ljava/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    .line 188
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v13           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v15           #signatureFile:Ljava/lang/String;
    :cond_5d
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 189
    const/4 v1, 0x0

    goto :goto_11

    .line 191
    :cond_65
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    .line 193
    .local v6, certificatesArray:[Ljava/security/cert/Certificate;
    const-string v1, "Digest-Algorithms"

    invoke-virtual {v9, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, algorithms:Ljava/lang/String;
    if-nez v8, :cond_7b

    .line 195
    const-string v8, "SHA SHA1"

    .line 197
    :cond_7b
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 198
    .local v16, tokens:Ljava/util/StringTokenizer;
    :cond_82
    :goto_82
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 199
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, algorithm:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, hash:Ljava/lang/String;
    if-eqz v12, :cond_82

    .line 204
    sget-object v1, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 207
    .local v5, hashBytes:[B
    :try_start_ab
    new-instance v1, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_b8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ab .. :try_end_b8} :catch_ba

    goto/16 :goto_11

    .line 209
    :catch_ba
    move-exception v1

    goto :goto_82

    .line 213
    .end local v5           #hashBytes:[B
    .end local v7           #algorithm:Ljava/lang/String;
    .end local v12           #hash:Ljava/lang/String;
    :cond_bc
    const/4 v1, 0x0

    goto/16 :goto_11
.end method

.method isSignedJar()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method declared-synchronized readCertificates()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 251
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_39

    if-nez v3, :cond_8

    .line 266
    :cond_6
    :goto_6
    monitor-exit p0

    return v2

    .line 254
    :cond_8
    :try_start_8
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, key:Ljava/lang/String;
    const-string v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 258
    :cond_2e
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_39

    goto :goto_12

    .line 251
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2

    .line 266
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3c
    const/4 v2, 0x1

    goto :goto_6
.end method

.method removeMetaEntries()V
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 437
    return-void
.end method

.method setManifest(Ljava/util/jar/Manifest;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 365
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    .line 366
    return-void
.end method
