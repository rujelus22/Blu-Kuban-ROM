.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 44
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .registers 8
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, anchors:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 117
    .local v3, certPublicKey:Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 120
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_14
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 121
    .local v1, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_25

    .line 122
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 126
    .local v2, caPublicKey:Ljava/security/PublicKey;
    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 133
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :goto_24
    return-object v0

    .line 124
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #caCert:Ljava/security/cert/X509Certificate;
    :cond_25
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2c

    move-result-object v2

    .restart local v2       #caPublicKey:Ljava/security/PublicKey;
    goto :goto_1e

    .line 133
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :cond_2a
    const/4 v0, 0x0

    goto :goto_24

    .line 129
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    :catch_2c
    move-exception v5

    goto :goto_8
.end method

.method private index(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 48
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_4

    .line 50
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    :cond_14
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 11
    .parameter "cert"

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 79
    .local v4, issuer:Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v7

    .line 80
    :try_start_8
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    .local v1, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_15

    .line 82
    monitor-exit v7

    move-object v0, v6

    .line 100
    :goto_14
    return-object v0

    .line 85
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 88
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_25
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 89
    .local v2, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_37

    .line 90
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 94
    .local v5, publicKey:Ljava/security/PublicKey;
    :goto_2f
    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_3f

    .line 95
    :try_start_32
    monitor-exit v7

    goto :goto_14

    .line 99
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2           #caCert:Ljava/security/cert/X509Certificate;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #publicKey:Ljava/security/PublicKey;
    :catchall_34
    move-exception v6

    monitor-exit v7
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v6

    .line 92
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local v2       #caCert:Ljava/security/cert/X509Certificate;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3f

    move-result-object v5

    .restart local v5       #publicKey:Ljava/security/PublicKey;
    goto :goto_2f

    .line 99
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v2           #caCert:Ljava/security/cert/X509Certificate;
    .end local v5           #publicKey:Ljava/security/PublicKey;
    :cond_3c
    :try_start_3c
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_34

    move-object v0, v6

    .line 100
    goto :goto_14

    .line 96
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    :catch_3f
    move-exception v8

    goto :goto_19
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .parameter "cert"

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 105
    .local v1, subject:Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 106
    :try_start_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_14

    .line 108
    const/4 v2, 0x0

    monitor-exit v3

    .line 110
    :goto_13
    return-object v2

    :cond_14
    invoke-static {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v2

    monitor-exit v3

    goto :goto_13

    .line 111
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 4
    .parameter "cert"

    .prologue
    .line 53
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 54
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 55
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .registers 7
    .parameter "anchor"

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 61
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_27

    .line 62
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 67
    .local v2, subject:Ljavax/security/auth/x500/X500Principal;
    :goto_a
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v4

    .line 68
    :try_start_d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_22

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .restart local v0       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_2c

    .line 75
    return-void

    .line 64
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_27
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2       #subject:Ljavax/security/auth/x500/X500Principal;
    goto :goto_a

    .line 74
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3
.end method
