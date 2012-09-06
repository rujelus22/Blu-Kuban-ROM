.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private encrypted:Lorg/apache/james/mime4j/storage/Storage;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public delete()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    :cond_c
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_23
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_23} :catch_24

    return-object v2

    :catch_24
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method
