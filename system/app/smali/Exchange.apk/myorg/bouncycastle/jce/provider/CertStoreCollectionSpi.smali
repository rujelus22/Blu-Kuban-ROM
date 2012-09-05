.class public Lmyorg/bouncycastle/jce/provider/CertStoreCollectionSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "CertStoreCollectionSpi.java"


# instance fields
.field private params:Ljava/security/cert/CollectionCertStoreParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .registers 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 25
    instance-of v0, p1, Ljava/security/cert/CollectionCertStoreParameters;

    if-nez v0, :cond_24

    .line 26
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myorg.bouncycastle.jce.provider.CertStoreCollectionSpi: parameter must be a CollectionCertStoreParameters object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_24
    check-cast p1, Ljava/security/cert/CollectionCertStoreParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    .line 32
    return-void
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 6
    .parameter "selector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, col:Ljava/util/List;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v3}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, iter:Ljava/util/Iterator;
    if-nez p1, :cond_23

    .line 64
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    if-eqz v3, :cond_11

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 72
    .end local v2           #obj:Ljava/lang/Object;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    .restart local v2       #obj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/CRL;

    if-eqz v3, :cond_23

    move-object v3, v2

    check-cast v3, Ljava/security/cert/CRL;

    invoke-interface {p1, v3}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 81
    .end local v2           #obj:Ljava/lang/Object;
    :cond_3e
    return-object v0
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 6
    .parameter "selector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, col:Ljava/util/List;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/CertStoreCollectionSpi;->params:Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {v3}, Ljava/security/cert/CollectionCertStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    .local v1, iter:Ljava/util/Iterator;
    if-nez p1, :cond_23

    .line 39
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    if-eqz v3, :cond_11

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 47
    .end local v2           #obj:Ljava/lang/Object;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 50
    .restart local v2       #obj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/Certificate;

    if-eqz v3, :cond_23

    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-interface {p1, v3}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 56
    .end local v2           #obj:Ljava/lang/Object;
    :cond_3e
    return-object v0
.end method