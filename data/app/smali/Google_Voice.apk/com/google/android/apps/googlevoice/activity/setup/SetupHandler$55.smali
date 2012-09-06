.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;
.super Landroid/webkit/WebViewClient;
.source "SetupHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3384
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 3387
    const-string v1, "divert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3388
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$800(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    const-string v2, "\'divert\' URL: dialing diversion code"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3389
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dialDiversionCode()V

    .line 3396
    :goto_19
    return v5

    .line 3391
    :cond_1a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3392
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$800(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    const-string v2, "other URL \'%s\': starting activity to view it (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 3394
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$55;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method
