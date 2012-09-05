.class Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 180
    const-string v1, "jobmanager://jump_sync_setting"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, syncIntent:Landroid/content/Intent;
    const-string v1, "com.android.providers.subscribedfeeds"

    const-string v2, "com.android.settings.ManageAccountsSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;->this$0:Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v0           #syncIntent:Landroid/content/Intent;
    :cond_1a
    return v3
.end method
