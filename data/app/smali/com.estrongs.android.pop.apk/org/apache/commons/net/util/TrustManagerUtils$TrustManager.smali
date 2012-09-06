.class Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final checkServerValidity:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;->checkServerValidity:Z

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;->checkServerValidity:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->access$000()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
