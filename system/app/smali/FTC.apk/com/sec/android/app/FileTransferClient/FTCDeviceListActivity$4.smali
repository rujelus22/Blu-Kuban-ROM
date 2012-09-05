.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->askNetworkConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 1280
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity :Disconnect WiFi- Direct  : wifiManager.disconnectWifiDirectPeer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1702(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 1296
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x450

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x453

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1299
    return-void
.end method
