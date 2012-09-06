.class final Lcom/google/android/apps/unveil/network/RsaEncrypter$1;
.super Ljava/lang/Object;
.source "RsaEncrypter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/RsaEncrypter;->prefetchEncryptor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/apps/unveil/network/RsaEncrypter;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Preloading RSAEncrypter"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_c
    const-string v1, "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_11} :catch_12
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_11} :catch_17

    .line 84
    :goto_11
    return-void

    .line 79
    :catch_12
    move-exception v0

    .line 80
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_11

    .line 81
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_17
    move-exception v0

    .line 82
    .local v0, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_11
.end method
