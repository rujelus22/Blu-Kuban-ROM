.class public Lcom/google/android/apps/plus/external/PlatformContractUtils;
.super Ljava/lang/Object;
.source "PlatformContractUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateApiaryApiInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 20
    .parameter "context"
    .parameter "intent"
    .parameter "apiKey"
    .parameter "clientId"
    .parameter "caller"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, myPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 34
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, callerCert:Ljava/lang/String;
    invoke-static {v10, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, cert:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.APIKEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, callerApiKey:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.CLIENTID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, callerClientId:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.APIVERSION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, callerApiVersion:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v1, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v7, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v12, v6

    move-object v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    return-object v7
.end method

.method public static generateApiaryApiInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 20
    .parameter "context"
    .parameter "uri"
    .parameter "apiKey"
    .parameter "clientId"
    .parameter "caller"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, myPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 52
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, callerCert:Ljava/lang/String;
    invoke-static {v10, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, cert:Ljava/lang/String;
    const-string v4, "apiKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, callerApiKey:Ljava/lang/String;
    const-string v4, "clientId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, callerClientId:Ljava/lang/String;
    const-string v4, "apiVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, callerApiVersion:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v7, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v12, v6

    move-object v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    return-object v7
.end method

.method public static generatePlusOneUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;
    .registers 5
    .parameter "info"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    .line 134
    .local v0, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v1, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "apiKey"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "clientId"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "apiVersion"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"
    .parameter "packageManager"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, cert:Ljava/lang/String;
    const/16 v3, 0x40

    :try_start_3
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 108
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_19

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_30

    if-lez v3, :cond_19

    .line 110
    :try_start_10
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_18} :catch_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_18} :catch_30

    move-result-object v0

    .line 122
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_19
    :goto_19
    if-nez v0, :cond_1d

    .line 123
    const-string v0, "0"

    .line 125
    :cond_1d
    return-object v0

    .line 111
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :catch_1e
    move-exception v1

    .line 112
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1f
    const-string v3, "PlusOneContract"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 113
    const-string v3, "PlusOneContract"

    const-string v4, "Unable to compute digest, returning zeros"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_19

    .line 118
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_30
    move-exception v3

    goto :goto_19
.end method

.method static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 6
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 86
    .local v2, signature:[B
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 87
    .local v1, md:Ljava/security/MessageDigest;
    if-nez v1, :cond_e

    .line 94
    :cond_d
    :goto_d
    return-object v3

    .line 90
    :cond_e
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 91
    .local v0, digest:[B
    if-eqz v0, :cond_d

    .line 94
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_d
.end method
