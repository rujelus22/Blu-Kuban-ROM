.class Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

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

    .line 182
    iget-object v3, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 183
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 184
    .local v0, mWifiStatus:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dlna/DLNAManager;->setAutoIP(Z)V

    .line 185
    const/4 v3, 0x3

    if-ne v0, v3, :cond_46

    .line 186
    const-string v3, "DLNA"

    const-string v4, "NetworkWarningActivity : state = WiFi On already"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_20
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/dlna/DLNAManager;->setWifiSettingsLaunched(Z)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, wifiIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/high16 v3, 0x2080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$6;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    const/high16 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    return-void

    .line 189
    .end local v1           #wifiIntent:Landroid/content/Intent;
    :cond_46
    const-string v3, "DLNA"

    const-string v4, "NetworkWarningActivity : WiFi Off->power on"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_20
.end method
