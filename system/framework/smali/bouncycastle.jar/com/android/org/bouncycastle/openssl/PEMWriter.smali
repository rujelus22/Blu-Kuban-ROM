.class public Lcom/android/org/bouncycastle/openssl/PEMWriter;
.super Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
.source "PEMWriter.java"


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 27
    const-string v0, "BC"

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .parameter "out"
    .parameter "provider"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .registers 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 63
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;)V

    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_8
    .catch Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException; {:try_start_0 .. :try_end_8} :catch_9

    .line 56
    return-void

    .line 47
    :catch_9
    move-exception v0

    .line 49
    .local v0, e:Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_19

    .line 51
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 54
    :cond_19
    throw v0
.end method

.method public writeObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)V
    .registers 12
    .parameter "obj"
    .parameter "algorithm"
    .parameter "password"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;

    iget-object v5, p0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_e
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_e} :catch_f

    .line 80
    return-void

    .line 76
    :catch_f
    move-exception v6

    .line 78
    .local v6, e:Ljava/security/NoSuchProviderException;
    new-instance v0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    invoke-virtual {v6}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
