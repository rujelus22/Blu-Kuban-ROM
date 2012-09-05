.class public Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;
.super Landroid/app/Activity;
.source "LaunchUrlHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private goToMarketHome()V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private handleUrl()V
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 44
    sget-object v11, Lcom/google/android/finsky/config/G;->launchUrlsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_14

    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->goToMarketHome()V

    .line 106
    :cond_13
    :goto_13
    return-void

    .line 49
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 51
    .local v7, uri:Landroid/net/Uri;
    const-string v11, "url"

    invoke-virtual {v7, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, encodedContinuation:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 53
    const-string v11, "Launch URL without continue URL"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, "details"

    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 57
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 58
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    invoke-static {p0, v4}, Lcom/google/android/finsky/utils/IntentUtils;->forwardIntentToMainActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_13

    .line 63
    .end local v4           #intent:Landroid/content/Intent;
    :cond_48
    const-string v11, "id"

    invoke-virtual {v7, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, packageName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 65
    const-string v11, "Launch URL without package name"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->goToMarketHome()V

    goto :goto_13

    .line 70
    :cond_5f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v11

    invoke-interface {v11, v6}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 72
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    const-string v11, "min_version"

    invoke-virtual {v7, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, version:Ljava/lang/String;
    const/4 v9, -0x1

    .line 74
    .local v9, versionCode:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7c

    .line 76
    :try_start_78
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7b} :catch_dc

    move-result v9

    .line 81
    :cond_7c
    :goto_7c
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v11

    if-lt v11, v9, :cond_b2

    move v5, v12

    .line 84
    .local v5, newEnough:Z
    :goto_83
    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v5, :cond_b4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {v11, v6, v1}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b4

    .line 87
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    if-eqz v0, :cond_13

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xc

    if-ge v11, v12, :cond_13

    .line 94
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Lcom/google/android/finsky/local/LocalAsset;->setExternalReferrer(Ljava/lang/String;)V

    goto/16 :goto_13

    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #newEnough:Z
    :cond_b2
    move v5, v13

    .line 81
    goto :goto_83

    .line 98
    .restart local v1       #decodedUrl:Ljava/lang/String;
    .restart local v5       #newEnough:Z
    :cond_b4
    const-string v11, "market://details?id=%s&referrer=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v6, v14, v13

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, wrapperUri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, detailsIntent:Landroid/content/Intent;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/IntentUtils;->forwardIntentToMainActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_13

    .line 77
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v2           #detailsIntent:Landroid/content/Intent;
    .end local v5           #newEnough:Z
    .end local v10           #wrapperUri:Ljava/lang/String;
    :catch_dc
    move-exception v11

    goto :goto_7c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->handleUrl()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    .line 41
    return-void
.end method
