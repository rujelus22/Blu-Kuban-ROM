.class public Lcom/google/api/client/auth/RsaSha;
.super Ljava/lang/Object;
.source "RsaSha.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static sign(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "privateKey"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 101
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 102
    invoke-static {p1}, Lcom/google/api/client/util/Strings;->toBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 103
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Base64;->encode([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Strings;->fromBytesUtf8([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
