.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cipherOut:Ljavax/crypto/CipherOutputStream;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    :try_start_3
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method

.method protected write0([BII)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    return-void
.end method
