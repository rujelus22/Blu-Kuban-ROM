.class public Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;
.super Lcom/google/android/googlequicksearchbox/VoiceSearch;
.source "GoogleVoiceSearch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .registers 3
    .parameter "context"
    .parameter "config"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/VoiceSearch;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 41
    return-void
.end method

.method private createInstallVoiceSearchIntent(Z)Landroid/content/Intent;
    .registers 5
    .parameter "always"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getVoiceSearchInstallUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 95
    .local v0, voiceSearchInstallUri:Landroid/net/Uri;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 96
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7
.end method

.method private getVoiceSearchInstallUri(Z)Landroid/net/Uri;
    .registers 5
    .parameter "always"

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->voiceSearchIsInstallable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 49
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchInstallUri()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 53
    .end local v0           #uri:Ljava/lang/String;
    :cond_17
    :goto_17
    return-object v1

    .line 51
    .restart local v0       #uri:Ljava/lang/String;
    :cond_18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_17
.end method

.method private getVoiceSearchPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setVoiceSearchPackage(Landroid/content/Intent;)V
    .registers 3
    .parameter "i"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_9
    return-void
.end method

.method private voiceSearchIsInstallable()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 66
    .local v4, pacman:Landroid/content/pm/PackageManager;
    const-string v8, "android.hardware.microphone"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 68
    .local v3, mike:Z
    if-nez v3, :cond_13

    .line 89
    :cond_12
    :goto_12
    return v7

    .line 72
    :cond_13
    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->createInstallVoiceSearchIntent(Z)Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, installIntent:Landroid/content/Intent;
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 74
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_12

    .line 81
    :try_start_1d
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_24} :catch_2f

    move-result v1

    .line 84
    .local v1, enabled:I
    const/4 v8, 0x2

    if-eq v1, v8, :cond_2d

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2d

    :goto_2b
    move v7, v6

    goto :goto_12

    :cond_2d
    move v6, v7

    goto :goto_2b

    .line 86
    .end local v1           #enabled:I
    :catch_2f
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v7, v6

    .line 89
    goto :goto_12
.end method


# virtual methods
.method protected createVoiceSearchIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->setVoiceSearchPackage(Landroid/content/Intent;)V

    .line 61
    return-object v0
.end method

.method public createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3
    .parameter "appData"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->isVoiceSearchAvailable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleVoiceSearch;->createInstallVoiceSearchIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 106
    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_b
.end method
