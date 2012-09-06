.class public final Lcom/twitter/android/network/ssl/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    const/4 v0, 0x1

    goto :goto_f

    :catch_19
    move-exception v1

    goto :goto_f
.end method

.method public static a([Ljava/security/cert/X509Certificate;Lcom/twitter/android/network/ssl/d;)[Ljava/security/cert/X509Certificate;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aget-object v0, p0, v2

    invoke-virtual {p1, v0}, Lcom/twitter/android/network/ssl/d;->a(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_10
    aget-object v2, p0, v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v2, v0

    move v0, v1

    :goto_17
    array-length v4, p0

    if-ge v0, v4, :cond_37

    aget-object v4, p0, v0

    invoke-virtual {p1, v4}, Lcom/twitter/android/network/ssl/d;->a(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v2, v1

    :cond_23
    aget-object v4, p0, v0

    add-int/lit8 v5, v0, -0x1

    aget-object v5, p0, v5

    invoke-static {v4, v5}, Lcom/twitter/android/network/ssl/a;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_37

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_37
    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/network/ssl/d;->b(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_44
    if-eqz v1, :cond_53

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_53
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Didn\'t find a trust anchor in chain cleanup!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move v1, v2

    goto :goto_44

    :cond_5d
    move v0, v2

    goto :goto_10
.end method
