.class public Lcom/google/android/apps/pos/network/ContainerUtil;
.super Ljava/lang/Object;
.source "ContainerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/pos/network/PosClient;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/apps/pos/network/ContainerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "packageManager"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 48
    const/16 v2, 0x40

    :try_start_3
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_34

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_34

    .line 50
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/android/apps/pos/network/ContainerUtil;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_18} :catch_1a

    move-result-object v2

    .line 59
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_19
    return-object v2

    .line 52
    :catch_1a
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/google/android/apps/pos/network/ContainerUtil;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 54
    sget-object v2, Lcom/google/android/apps/pos/network/ContainerUtil;->TAG:Ljava/lang/String;

    const-string v3, "Name not found while getting certificate for package: %s, returning zero"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_34
    const-string v2, "0"

    goto :goto_19
.end method

.method public static getContainerUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "clientId"
    .parameter "apiKey"

    .prologue
    .line 31
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 32
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    const-string v1, "%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/google/android/apps/pos/network/ContainerUtil;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "apps.googleusercontent.com"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    const-string v1, "api_key"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 10
    .parameter "sig"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, md:Ljava/security/MessageDigest;
    :try_start_1
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_c

    move-result-object v2

    .line 76
    :goto_7
    if-nez v2, :cond_21

    .line 77
    const-string v4, "0"

    .line 84
    :goto_b
    return-object v4

    .line 72
    :catch_c
    move-exception v1

    .line 73
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lcom/google/android/apps/pos/network/ContainerUtil;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get message digest for %s, returning zero"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "SHA1"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 79
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_21
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 80
    .local v3, signature:[B
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 81
    .local v0, digest:[B
    if-nez v0, :cond_2e

    .line 82
    const-string v4, "0"

    goto :goto_b

    .line 84
    :cond_2e
    invoke-static {v0}, Lcom/google/android/apps/pos/network/ContainerUtil;->toHex([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_b
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 10
    .parameter "bytes"

    .prologue
    .line 88
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v4, sb:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_25

    aget-byte v1, v0, v2

    .line 90
    .local v1, b:B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 92
    .end local v1           #b:B
    :cond_25
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
