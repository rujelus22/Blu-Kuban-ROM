.class public Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final backend:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private final keygen:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 3

    const-string v0, "Blowfish"

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    :try_start_b
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->keygen:Ljavax/crypto/KeyGenerator;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->keygen:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .registers 5

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v2}, Lorg/apache/james/mime4j/storage/StorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method
