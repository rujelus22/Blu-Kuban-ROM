.class Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;
.super Landroid/webkit/WebViewClient;
.source "VoicemailProviderSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->createExplanationView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 273
    const-string v1, "divert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 274
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_12

    .line 275
    const-string v1, "\'divert\' URL: dialing diversion code"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 277
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialDiversionCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    :goto_1d
    return v4

    .line 280
    :cond_1e
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    .local v0, uri:Landroid/net/Uri;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_37

    .line 282
    const-string v1, "other URL \'%s\': starting activity to view it (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 285
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d
.end method
