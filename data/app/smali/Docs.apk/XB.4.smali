.class final LXB;
.super Ljava/lang/Object;
.source "CipherUtilitiesImpl.java"


# static fields
.field public static a:Ljavax/crypto/KeyGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, LXB;->a:Ljavax/crypto/KeyGenerator;

    .line 28
    :try_start_3
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 31
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    sput-object v1, LXB;->a:Ljavax/crypto/KeyGenerator;

    .line 32
    sget-object v1, LXB;->a:Ljavax/crypto/KeyGenerator;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 36
    :goto_1b
    return-void

    .line 33
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method
