.class Lcom/android/browser/NetworkSettingsHandler$1;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NetworkSettingsHandler;->showDialogSelectMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NetworkSettingsHandler;

.field final synthetic val$wifimanager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/browser/NetworkSettingsHandler;Landroid/net/wifi/WifiManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/browser/NetworkSettingsHandler$1;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    iput-object p2, p0, Lcom/android/browser/NetworkSettingsHandler$1;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$1;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 117
    const-string v1, "NetworkSettingsHandler"

    const-string v2, "showDialogSelectMessage: WiFi On already"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v1, 0x3080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    const-string v1, "wifiSettingsAppear"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$1;->this$0:Lcom/android/browser/NetworkSettingsHandler;

    #getter for: Lcom/android/browser/NetworkSettingsHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/NetworkSettingsHandler;->access$000(Lcom/android/browser/NetworkSettingsHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 119
    .end local v0           #intent:Landroid/content/Intent;
    :cond_30
    const-string v1, "NetworkSettingsHandler"

    const-string v2, "showDialogSelectMessage: WiFi power on"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/browser/NetworkSettingsHandler$1;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_10
.end method
