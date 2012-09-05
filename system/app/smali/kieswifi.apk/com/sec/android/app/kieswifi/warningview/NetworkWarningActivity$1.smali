.class Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 127
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 129
    .local v0, mWifiStatus:I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3e

    .line 130
    const-string v3, "NetworkWarningActivity : state = WiFi On already"

    invoke-static {v5, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 135
    :goto_17
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/kieswifi/UpnpManager;->setWifiSettingsLaunched(Z)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, wifiIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "wifiSettingsAppear"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$1;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void

    .line 133
    .end local v1           #wifiIntent:Landroid/content/Intent;
    :cond_3e
    const-string v3, "NetworkWarningActivity : WiFi Off->power on"

    invoke-static {v5, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_17
.end method
