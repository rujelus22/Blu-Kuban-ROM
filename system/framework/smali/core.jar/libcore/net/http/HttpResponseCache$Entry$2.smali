.class Llibcore/net/http/HttpResponseCache$Entry$2;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpResponseCache$Entry;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$500(Llibcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$400(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_13

    .line 530
    :cond_11
    const/4 v0, 0x0

    .line 532
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_12
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_13

    .line 537
    :cond_11
    const/4 v0, 0x0

    .line 539
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_12
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_18

    .line 523
    :cond_11
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_18
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_18

    .line 516
    :cond_11
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_18
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
