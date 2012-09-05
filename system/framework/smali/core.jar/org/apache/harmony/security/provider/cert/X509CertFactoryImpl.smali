.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static final CERT_BOUND_SUFFIX:[B = null

.field private static final CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CERT_CACHE_SEED_LENGTH:I = 0x1c

.field private static final CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CRL_CACHE_SEED_LENGTH:I = 0x18

.field private static final FREE_BOUND_SUFFIX:[B

.field private static final PEM_BEGIN:[B

.field private static final PEM_END:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 65
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 434
    const-string v0, "-----BEGIN"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    .line 435
    const-string v0, "-----END"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    .line 447
    const-string v0, " CERTIFICATE-----"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private badEnd([B)Ljava/io/IOException;
    .registers 6
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    if-nez p1, :cond_23

    const-string v0, ""

    .line 568
    .local v0, s:Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect PEM encoding: \'-----END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is expected as closing delimiter boundary."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    .end local v0           #s:Ljava/lang/String;
    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .registers 13
    .parameter "inStream"
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    array-length v7, v7

    if-ge v2, v7, :cond_3c

    .line 480
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v7, v1, :cond_39

    .line 481
    new-instance v8, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_33

    const-string v7, ""

    :goto_21
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_33
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_21

    .line 479
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    .end local v1           #ch:I
    :cond_3c
    if-nez p2, :cond_51

    .line 491
    :cond_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_9c

    .line 492
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3e

    .line 493
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: EOF before content"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 497
    .end local v1           #ch:I
    :cond_51
    const/4 v2, 0x0

    :goto_52
    array-length v7, p2

    if-ge v2, v7, :cond_84

    .line 498
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_81

    .line 499
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 497
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 504
    :cond_84
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xd

    if-ne v1, v7, :cond_90

    .line 506
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 508
    :cond_90
    const/16 v7, 0xa

    if-eq v1, v7, :cond_9c

    .line 509
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: newline expected after opening delimiter boundary"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 513
    :cond_9c
    const/16 v6, 0x400

    .line 514
    .local v6, size:I
    new-array v0, v6, [B

    .line 515
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 517
    .local v3, index:I
    :goto_a1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_c9

    .line 518
    const/4 v7, -0x1

    if-ne v1, v7, :cond_b4

    .line 519
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: EOF without closing delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 521
    :cond_b4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    .line 522
    if-ne v4, v6, :cond_140

    .line 524
    add-int/lit16 v7, v6, 0x400

    new-array v5, v7, [B

    .line 525
    .local v5, newbuff:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    move-object v0, v5

    .line 527
    add-int/lit16 v6, v6, 0x400

    move v3, v4

    .line 528
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_a1

    .line 530
    .end local v5           #newbuff:[B
    :cond_c9
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_d9

    .line 531
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: newline expected before closing boundary delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 536
    :cond_d9
    const/4 v2, 0x1

    :goto_da
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    array-length v7, v7

    if-ge v2, v7, :cond_f1

    .line 537
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_ee

    .line 538
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 536
    :cond_ee
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .line 541
    :cond_f1
    if-nez p2, :cond_11a

    .line 544
    :cond_f3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_102

    const/16 v7, 0xa

    if-eq v1, v7, :cond_102

    const/16 v7, 0xd

    if-ne v1, v7, :cond_f3

    .line 554
    :cond_102
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 555
    :goto_106
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_12e

    const/16 v7, 0xa

    if-eq v1, v7, :cond_115

    const/16 v7, 0xd

    if-ne v1, v7, :cond_12e

    .line 556
    :cond_115
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_106

    .line 547
    :cond_11a
    const/4 v2, 0x0

    :goto_11b
    array-length v7, p2

    if-ge v2, v7, :cond_102

    .line 548
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_12b

    .line 549
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 547
    :cond_12b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    .line 558
    :cond_12e
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 559
    invoke-static {v0, v3}, Llibcore/io/Base64;->decode([BI)[B

    move-result-object v0

    .line 560
    if-nez v0, :cond_13f

    .line 561
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 563
    :cond_13f
    return-object v0

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_140
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_a1
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x18

    .line 703
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 704
    const/16 v5, 0x18

    :try_start_7
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 705
    const/16 v5, 0x18

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 707
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 708
    if-nez v0, :cond_20

    .line 709
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 730
    .end local v0           #buff:[B
    :catchall_1d
    move-exception v5

    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v5

    .line 711
    .restart local v0       #buff:[B
    :cond_20
    :try_start_20
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 712
    .local v2, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 713
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 714
    .local v1, encoding:[B
    array-length v5, v1

    if-ge v5, v7, :cond_3f

    .line 715
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "Bad CRL encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 717
    :cond_3f
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 718
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    .line 719
    .local v4, res:Ljava/security/cert/CRL;
    if-eqz v4, :cond_4e

    .line 720
    monitor-exit v6

    .line 728
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :goto_4d
    return-object v4

    .line 722
    .restart local v1       #encoding:[B
    .restart local v4       #res:Ljava/security/cert/CRL;
    :cond_4e
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .end local v4           #res:Ljava/security/cert/CRL;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 723
    .restart local v4       #res:Ljava/security/cert/CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 724
    monitor-exit v6

    goto :goto_4d

    .line 726
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :cond_5a
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    .line 727
    .local v4, res:Ljava/security/cert/X509CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 728
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_20 .. :try_end_69} :catchall_1d

    goto :goto_4d
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    array-length v4, p0

    const/16 v5, 0x18

    if-ge v4, v5, :cond_d

    .line 675
    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "encoding.length < CRL_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
    :cond_d
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 678
    :try_start_10
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 679
    .local v0, hash:J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 680
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 681
    .local v2, res:Ljava/security/cert/X509CRL;
    if-eqz v2, :cond_2b

    .line 682
    monitor-exit v5

    move-object v3, v2

    .line 687
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .local v3, res:Ljava/lang/Object;
    :goto_2a
    return-object v3

    .line 685
    .end local v3           #res:Ljava/lang/Object;
    :cond_2b
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 686
    .restart local v2       #res:Ljava/security/cert/X509CRL;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 687
    monitor-exit v5

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2a

    .line 688
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1c

    .line 632
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 633
    const/16 v5, 0x1c

    :try_start_7
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 635
    const/16 v5, 0x1c

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 636
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 637
    if-nez v0, :cond_20

    .line 638
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 660
    .end local v0           #buff:[B
    :catchall_1d
    move-exception v5

    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v5

    .line 640
    .restart local v0       #buff:[B
    :cond_20
    :try_start_20
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 641
    .local v2, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 642
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 643
    .local v1, encoding:[B
    array-length v5, v1

    if-ge v5, v7, :cond_3f

    .line 644
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "Bad Certificate encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 646
    :cond_3f
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 647
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 648
    .local v4, res:Ljava/security/cert/Certificate;
    if-eqz v4, :cond_4e

    .line 649
    monitor-exit v6

    .line 658
    .end local v1           #encoding:[B
    :goto_4d
    return-object v4

    .line 651
    .restart local v1       #encoding:[B
    :cond_4e
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v4           #res:Ljava/security/cert/Certificate;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 652
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 653
    monitor-exit v6

    goto :goto_4d

    .line 655
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/Certificate;
    :cond_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 656
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    .line 657
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 658
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_20 .. :try_end_6c} :catchall_1d

    goto :goto_4d
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    array-length v4, p0

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_d

    .line 603
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "encoding.length < CERT_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 605
    :cond_d
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 606
    :try_start_10
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 607
    .local v0, hash:J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 608
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 610
    .local v2, res:Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2b

    .line 611
    monitor-exit v5

    move-object v3, v2

    .line 616
    .end local v2           #res:Ljava/security/cert/Certificate;
    .local v3, res:Ljava/lang/Object;
    :goto_2a
    return-object v3

    .line 614
    .end local v3           #res:Ljava/lang/Object;
    :cond_2b
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 615
    .restart local v2       #res:Ljava/security/cert/Certificate;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 616
    monitor-exit v5

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2a

    .line 617
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/Certificate;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .registers 6
    .parameter "source"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    new-array v2, p1, [B

    .line 581
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p1, :cond_d

    .line 582
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 583
    .local v0, bytik:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 584
    const/4 v2, 0x0

    .line 588
    .end local v0           #bytik:I
    .end local v2           #result:[B
    :cond_d
    return-object v2

    .line 586
    .restart local v0       #bytik:I
    .restart local v2       #result:[B
    :cond_e
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 235
    if-nez p1, :cond_a

    .line 236
    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_16

    .line 243
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 245
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 247
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2d

    .line 249
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    .line 253
    :goto_2c
    return-object v2

    .line 251
    :cond_2d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 253
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_2c

    .line 255
    :catch_35
    move-exception v0

    .line 256
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p1, :cond_a

    .line 267
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "inStream == null"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 269
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/CRL;>;"
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 272
    new-instance v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v8, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v8, inStream:Ljava/io/InputStream;
    move-object p1, v8

    .line 276
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1b
    const/4 v5, 0x0

    .line 281
    .local v5, encoding:[B
    const/4 v11, -0x1

    .line 282
    .local v11, second_asn1_tag:I
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    .line 284
    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_4c

    .line 286
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_53

    .line 288
    sget-object v12, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v12}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v5

    .line 305
    :goto_32
    if-nez v5, :cond_7a

    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 309
    .local v7, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_39
    invoke-virtual {v7}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v11

    .line 310
    if-nez v5, :cond_42

    .line 312
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 315
    :cond_42
    const/16 v12, 0x30

    if-eq v11, v12, :cond_80

    .line 316
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_52

    .line 335
    .end local v7           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_4c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_96

    .line 359
    :cond_52
    :goto_52
    return-object v10

    .line 289
    :cond_53
    const/16 v12, 0x30

    if-ne v0, v12, :cond_68

    .line 290
    const/4 v5, 0x0

    .line 291
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 293
    const/16 v12, 0x18

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_60} :catch_61

    goto :goto_32

    .line 363
    .end local v0           #ch:I
    .end local v5           #encoding:[B
    .end local v11           #second_asn1_tag:I
    :catch_61
    move-exception v4

    .line 364
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Ljava/security/cert/CRLException;

    invoke-direct {v12, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 295
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #ch:I
    .restart local v5       #encoding:[B
    .restart local v11       #second_asn1_tag:I
    :cond_68
    :try_start_68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_76

    .line 296
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 300
    :cond_76
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_52

    .line 305
    :cond_7a
    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, v5}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_39

    .line 327
    .restart local v7       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_80
    if-nez v5, :cond_8e

    .line 328
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :goto_89
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    goto :goto_21

    .line 330
    :cond_8e
    invoke-static {v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 338
    .end local v7           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_96
    const/4 v12, -0x1

    if-ne v0, v12, :cond_a1

    .line 339
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "There is no data in the stream"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 342
    :cond_a1
    const/4 v12, 0x6

    if-ne v11, v12, :cond_e2

    .line 344
    if-eqz v5, :cond_bc

    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v9

    :goto_ac
    check-cast v9, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 349
    .local v9, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v9}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v3

    .line 350
    .local v3, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v3, :cond_c3

    .line 351
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Invalid PKCS7 data provided"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 344
    .end local v3           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v9           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_bc
    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_ac

    .line 353
    .restart local v3       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v9       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_c3
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, crls:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/CertificateList;>;"
    if-eqz v2, :cond_52

    .line 355
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateList;

    .line 356
    .local v1, crl:Lorg/apache/harmony/security/x509/CertificateList;
    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v12, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 362
    .end local v1           #crl:Lorg/apache/harmony/security/x509/CertificateList;
    .end local v2           #crls:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/CertificateList;>;"
    .end local v3           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e2
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_ea} :catch_61
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_a

    .line 375
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_a
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 8
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_a

    .line 387
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_16

    .line 390
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v2, inStream:Ljava/io/InputStream;
    move-object p1, v2

    .line 393
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 397
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2d

    .line 399
    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    .line 404
    :goto_2c
    return-object v3

    .line 401
    :cond_2d
    const/16 v3, 0x30

    if-ne v0, v3, :cond_39

    .line 402
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 404
    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_2c

    .line 406
    :cond_39
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Unsupported encoding"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_41} :catch_41

    .line 408
    .end local v0           #ch:I
    :catch_41
    move-exception v1

    .line 409
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 3
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_a

    .line 92
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_16

    .line 97
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 101
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 103
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2d

    .line 105
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 109
    :goto_2c
    return-object v2

    .line 107
    :cond_2d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 109
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_2c

    .line 111
    :catch_35
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_a

    .line 126
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "inStream == null"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 128
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 132
    new-instance v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v8, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v8, inStream:Ljava/io/InputStream;
    move-object p1, v8

    .line 136
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1b
    const/4 v5, 0x0

    .line 141
    .local v5, encoding:[B
    const/4 v11, -0x1

    .line 142
    .local v11, second_asn1_tag:I
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    .line 144
    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, ch:I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_4c

    .line 146
    const/16 v12, 0x2d

    if-ne v2, v12, :cond_53

    .line 148
    sget-object v12, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v12}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v5

    .line 165
    :goto_32
    if-nez v5, :cond_7a

    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v7, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_39
    invoke-virtual {v7}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v11

    .line 170
    if-nez v5, :cond_42

    .line 172
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 175
    :cond_42
    const/16 v12, 0x30

    if-eq v11, v12, :cond_80

    .line 176
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_52

    .line 196
    .end local v7           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_4c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_96

    .line 220
    :cond_52
    :goto_52
    return-object v10

    .line 149
    :cond_53
    const/16 v12, 0x30

    if-ne v2, v12, :cond_68

    .line 150
    const/4 v5, 0x0

    .line 151
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 153
    const/16 v12, 0x1c

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_60} :catch_61

    goto :goto_32

    .line 224
    .end local v2           #ch:I
    .end local v5           #encoding:[B
    .end local v11           #second_asn1_tag:I
    :catch_61
    move-exception v4

    .line 225
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Ljava/security/cert/CertificateException;

    invoke-direct {v12, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 155
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #ch:I
    .restart local v5       #encoding:[B
    .restart local v11       #second_asn1_tag:I
    :cond_68
    :try_start_68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_76

    .line 156
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    :cond_76
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_52

    .line 165
    :cond_7a
    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, v5}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_39

    .line 187
    .restart local v7       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_80
    if-nez v5, :cond_8e

    .line 188
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_89
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    goto :goto_21

    .line 190
    :cond_8e
    invoke-static {v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 199
    .end local v7           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_96
    const/4 v12, -0x1

    if-ne v2, v12, :cond_a1

    .line 200
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "There is no data in the stream"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 203
    :cond_a1
    const/4 v12, 0x6

    if-ne v11, v12, :cond_e2

    .line 205
    if-eqz v5, :cond_bc

    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v9

    :goto_ac
    check-cast v9, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 210
    .local v9, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v9}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v3

    .line 211
    .local v3, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v3, :cond_c3

    .line 212
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Invalid PKCS7 data provided"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 205
    .end local v3           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v9           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_bc
    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_ac

    .line 214
    .restart local v3       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v9       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_c3
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, certs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    if-eqz v1, :cond_52

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    .line 217
    .local v0, cert:Lorg/apache/harmony/security/x509/Certificate;
    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v12, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 223
    .end local v0           #cert:Lorg/apache/harmony/security/x509/Certificate;
    .end local v1           #certs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    .end local v3           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e2
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_ea} :catch_61
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
