.class Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;
.super Ljava/lang/Object;
.source "KiesLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1000

    const/16 v6, 0x44e

    const/4 v5, 0x1

    .line 116
    if-nez p2, :cond_6f

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$100(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v4}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    #setter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$002(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$100(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$000(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$200(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 123
    .local v0, mWifiState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    .line 125
    const-string v1, "wifistate : state = WiFi On already"

    invoke-static {v5, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 128
    :cond_48
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    const-string v2, "wifiSettingsAppear"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, v2, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->startActivity(Landroid/content/Intent;)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->dismissDialog(I)V

    .line 146
    .end local v0           #mWifiState:I
    :cond_6e
    :goto_6e
    return-void

    .line 134
    :cond_6f
    if-ne p2, v5, :cond_6e

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$100(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v4}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    #setter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$002(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$100(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    #getter for: Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->access$000(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.ACTION.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    iget-object v2, v2, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->wifiIntent:Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$5;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->dismissDialog(I)V

    goto :goto_6e
.end method
