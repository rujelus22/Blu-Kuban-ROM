.class public Lcom/google/android/apps/plus/external/PlatformContractUtils;
.super Ljava/lang/Object;
.source "PlatformContractUtils.java"


# direct methods
.method public static generateApiaryApiInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 20
    .parameter "context"
    .parameter "intent"
    .parameter "apiKey"
    .parameter "clientId"
    .parameter "caller"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, myPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 38
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, callerCert:Ljava/lang/String;
    invoke-static {v10, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    .line 41
    .local v11, cert:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.APIKEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, callerApiKey:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.CLIENTID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, callerClientId:Ljava/lang/String;
    const-string v4, "com.google.circles.platform.intent.extra.APIVERSION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, callerApiVersion:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
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
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, myPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 105
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, callerCert:Ljava/lang/String;
    invoke-static {v10, v14}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, cert:Ljava/lang/String;
    const-string v4, "apiKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, callerApiKey:Ljava/lang/String;
    const-string v4, "clientId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, callerClientId:Ljava/lang/String;
    const-string v4, "apiVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, callerApiVersion:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
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
    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    .line 187
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

.method public static getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;
    .registers 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 95
    const-string v1, "CONTAINER_URL"

    invoke-static {p0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_16
    return-object v0
.end method

.method public static getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"
    .parameter "packageManager"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, cert:Ljava/lang/String;
    const/16 v3, 0x40

    :try_start_3
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 161
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_19

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_30

    if-lez v3, :cond_19

    .line 163
    :try_start_10
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_18} :catch_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_18} :catch_30

    move-result-object v0

    .line 175
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_19
    :goto_19
    if-nez v0, :cond_1d

    .line 176
    const-string v0, "0"

    .line 178
    :cond_1d
    return-object v0

    .line 164
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :catch_1e
    move-exception v1

    .line 165
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1f
    const-string v3, "PlusOneContract"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 166
    const-string v3, "PlusOneContract"

    const-string v4, "Unable to compute digest, returning zeros"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_19

    .line 171
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_30
    move-exception v3

    goto :goto_19
.end method

.method public static getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;
    .registers 8
    .parameter "info"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object p0

    .line 65
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getCertificate()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, certHash:Ljava/lang/String;
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, clientId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, apiKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, pkg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apps.googleusercontent.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 73
    .local v1, builder:Landroid/net/Uri$Builder;
    if-eqz v3, :cond_4c

    .line 74
    const-string v5, "client_id"

    invoke-virtual {v1, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    :cond_4c
    if-eqz v0, :cond_53

    .line 77
    const-string v5, "api_key"

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :cond_53
    if-eqz v4, :cond_5a

    .line 80
    const-string v5, "pkg"

    invoke-virtual {v1, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    :cond_5a
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 65
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v2           #certHash:Ljava/lang/String;
    .end local v3           #clientId:Ljava/lang/String;
    .end local v4           #pkg:Ljava/lang/String;
    :cond_63
    const-string v2, "0"

    goto :goto_14
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

    .line 138
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 139
    .local v2, signature:[B
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 140
    .local v1, md:Ljava/security/MessageDigest;
    if-nez v1, :cond_e

    .line 147
    :cond_d
    :goto_d
    return-object v3

    .line 143
    :cond_e
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 144
    .local v0, digest:[B
    if-eqz v0, :cond_d

    .line 147
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_d
.end method
