.class public final Lcom/google/android/apps/plus/phone/GoogleFeedback;
.super Ljava/lang/Object;
.source "GoogleFeedback.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static launch(Landroid/app/Activity;)V
    .registers 12
    .parameter "parentActivity"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;-><init>(Landroid/app/Activity;)V

    .line 88
    .local v0, connection:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    .line 89
    .local v3, flags:I
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->getGoogleFeedbackIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, feedbackIntent:Landroid/content/Intent;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v0, v9}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 91
    .local v4, installed:Z
    if-nez v4, :cond_4e

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    const-string v9, "http://google.com/m/survey/gplusandroid"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 101
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    :try_start_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 102
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2d} :catch_4f

    .line 106
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .local v8, versionName:Ljava/lang/String;
    :goto_2d
    const-string v9, "version"

    invoke-virtual {v7, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #uriBuilder:Landroid/net/Uri$Builder;
    .end local v8           #versionName:Ljava/lang/String;
    :cond_4e
    return-void

    .line 103
    .restart local v7       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_4f
    move-exception v1

    .line 104
    .local v1, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "unknown"

    .restart local v8       #versionName:Ljava/lang/String;
    goto :goto_2d
.end method
