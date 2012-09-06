.class public final Lcom/google/android/apps/plus/phone/GoogleFeedback;
.super Ljava/lang/Object;
.source "GoogleFeedback.java"


# static fields
.field private static final FEEDBACK_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "http://support.google.com/mobile/?p=plus_survey_android"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/GoogleFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    return-void
.end method

.method public static launch(Landroid/app/Activity;)V
    .registers 12
    .parameter "parentActivity"

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;-><init>(Landroid/app/Activity;)V

    .line 91
    .local v0, connection:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    .line 92
    .local v3, flags:I
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->getGoogleFeedbackIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 93
    .local v2, feedbackIntent:Landroid/content/Intent;
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v0, v9}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 94
    .local v4, installed:Z
    if-nez v4, :cond_4f

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    sget-object v9, Lcom/google/android/apps/plus/phone/GoogleFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 103
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    :try_start_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 104
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_29} :catch_50

    .line 108
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .local v8, versionName:Ljava/lang/String;
    :goto_29
    const-string v9, "version"

    invoke-virtual {v7, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .local v5, intent:Landroid/content/Intent;
    const/high16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const-string v9, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 116
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #uriBuilder:Landroid/net/Uri$Builder;
    .end local v8           #versionName:Ljava/lang/String;
    :cond_4f
    return-void

    .line 105
    .restart local v7       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_50
    move-exception v1

    .line 106
    .local v1, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "unknown"

    .restart local v8       #versionName:Ljava/lang/String;
    goto :goto_29
.end method
