.class Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkWarningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;
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
    .line 266
    iput-object p1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 271
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v4, v4, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->removeDialog(I)V

    .line 278
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->showDialog(I)V

    .line 288
    :cond_55
    :goto_55
    return-void

    .line 279
    :cond_56
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_55

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 282
    .local v1, manager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 284
    iget-object v2, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$7;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    iget-object v2, v2, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_55
.end method
