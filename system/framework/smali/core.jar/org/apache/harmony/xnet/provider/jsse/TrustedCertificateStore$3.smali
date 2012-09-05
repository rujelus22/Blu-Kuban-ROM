.class Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .parameter "ca"

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 351
    const/4 v1, 0x1

    .line 353
    :goto_a
    return v1

    .line 352
    :catch_b
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_a
.end method
