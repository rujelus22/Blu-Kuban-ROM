.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "TrustedCertificateKeyStoreSpi.java"


# instance fields
.field private final store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->aliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 3
    .parameter "alias"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .parameter "alias"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .parameter "c"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .parameter "alias"

    .prologue
    .line 43
    if-nez p1, :cond_a

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter "alias"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .parameter "alias"
    .parameter "password"

    .prologue
    .line 36
    if-nez p1, :cond_a

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .parameter "alias"

    .prologue
    .line 90
    if-nez p1, :cond_a

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"

    .prologue
    .line 109
    if-eqz p1, :cond_8

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 112
    :cond_8
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter "alias"
    .parameter "cert"

    .prologue
    .line 67
    if-nez p1, :cond_a

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter "alias"
    .parameter "key"
    .parameter "chain"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSize()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateKeyStoreSpi;->store:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->aliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
