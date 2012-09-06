.class public Lcom/google/android/apps/unveil/network/LatLngEncrypter;
.super Ljava/lang/Object;
.source "LatLngEncrypter.java"


# instance fields
.field private encrypter:Lcom/google/android/apps/unveil/network/RsaEncrypter;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method public constructor <init>([B)V
    .registers 6
    .parameter "key"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 22
    if-nez p1, :cond_d

    .line 31
    :goto_c
    return-void

    .line 27
    :cond_d
    :try_start_d
    new-instance v1, Lcom/google/android/apps/unveil/network/RsaEncrypter;

    invoke-direct {v1, p1}, Lcom/google/android/apps/unveil/network/RsaEncrypter;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->encrypter:Lcom/google/android/apps/unveil/network/RsaEncrypter;
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_c

    .line 28
    :catch_15
    move-exception v0

    .line 29
    .local v0, e:Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to create encrypter."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c
.end method


# virtual methods
.method public encryptLatLng(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/protobuf/ByteString;
    .registers 6
    .parameter "latLng"

    .prologue
    const/4 v1, 0x0

    .line 40
    if-nez p1, :cond_4

    .line 50
    :cond_3
    :goto_3
    return-object v1

    .line 43
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->encrypter:Lcom/google/android/apps/unveil/network/RsaEncrypter;

    if-eqz v2, :cond_3

    .line 48
    :try_start_8
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/LatLngEncrypter;->encrypter:Lcom/google/android/apps/unveil/network/RsaEncrypter;

    invoke-virtual {p1}, Lcom/google/goggles/LatLngProtos$LatLng;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/network/RsaEncrypter;->encrypt([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_3

    .line 49
    :catch_17
    move-exception v0

    .line 50
    .local v0, e:Ljava/security/GeneralSecurityException;
    goto :goto_3
.end method
