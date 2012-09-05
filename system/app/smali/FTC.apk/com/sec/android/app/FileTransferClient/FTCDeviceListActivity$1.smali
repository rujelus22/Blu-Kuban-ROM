.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;
.super Landroid/os/Handler;
.source "FTCDeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;
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
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 170
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_31e

    .line 343
    :goto_6
    :pswitch_6
    return-void

    .line 174
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v4, v8}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 177
    :try_start_c
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, -0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 178
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pConnected()Z
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 181
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity : wifi Direct is Connected "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :bDirectAlreadyConnected= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v5, 0x4b6

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 184
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44e

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x3

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 186
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :4 mConnectionMode is (direct 3) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_7d
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-result-object v4

    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setTitle(I)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_89} :catch_8b

    goto/16 :goto_6

    .line 197
    :catch_8b
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_CONNECT_NETWORKS exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_6

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    :cond_bd
    :try_start_bd
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v5, 0x4b1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 191
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity : wifi off state  "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44d

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d6} :catch_8b

    goto :goto_7d

    .line 208
    :pswitch_d7
    :try_start_d7
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v7, 0x7f060049

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v7, 0x7f06002b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v5, 0x4b1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 210
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 211
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :bDirectAlreadyConnected= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pEnabled()Z
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$700(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v4

    if-nez v4, :cond_14c

    .line 223
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 225
    :cond_14c
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, wifiIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const/high16 v4, 0x3080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v4, "AUTO_FINISH"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/high16 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_16e} :catch_170

    goto/16 :goto_6

    .line 231
    .end local v1           #wifiIntent:Landroid/content/Intent;
    :catch_170
    move-exception v0

    .line 233
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_SETTING_DISCOVERY_DIRECT_DEVICE_AGAIN Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_18b
    :try_start_18b
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v5, 0x4b1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 247
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 248
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :bDirectAlreadyConnected= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v7, 0x7f060049

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v7, 0x7f06002b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pEnabled()Z
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$700(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v4

    if-nez v4, :cond_200

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 263
    :cond_200
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, wifiIntent2:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/high16 v4, 0x3080

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    const-string v4, "AUTO_FINISH"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/high16 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_222} :catch_224

    goto/16 :goto_6

    .line 269
    .end local v2           #wifiIntent2:Landroid/content/Intent;
    :catch_224
    move-exception v0

    .line 271
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_SETTING_DISCOVERY_DIRECT_DEVICE Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_23f
    :try_start_23f
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity : EVENT _Discovery direct dvice again"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->removeAll()V

    .line 280
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v5, 0x4b1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 283
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, wifiIntent3:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/high16 v4, 0x3080

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v4, "AUTO_FINISH"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/high16 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_27e} :catch_280

    goto/16 :goto_6

    .line 289
    .end local v3           #wifiIntent3:Landroid/content/Intent;
    :catch_280
    move-exception v0

    .line 291
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_SETTING_DISCOVERY_DIRECT_DEVICE_BY_USER Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 297
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_29b
    :try_start_29b
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setProgress(Z)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bUPNPDiscovery:Z
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v4

    if-nez v4, :cond_2b3

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v5, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bUPNPDiscovery:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 302
    :cond_2b3
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->upnpDiscovery()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2b8} :catch_2ba

    goto/16 :goto_6

    .line 304
    :catch_2ba
    move-exception v0

    .line 306
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_START_DISCOVERY_UPNP_DEVICEException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 313
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2d5
    :try_start_2d5
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setProgress(Z)V
    :try_end_2df
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2df} :catch_2e1

    goto/16 :goto_6

    .line 315
    :catch_2e1
    move-exception v0

    .line 317
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : EVENT_FIND_ANIMATION_STOP_SERVICE Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2fc
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->refreshDeviceList()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_6

    .line 329
    :pswitch_303
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createDeviceListActivity()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_6

    .line 333
    :pswitch_30a
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkNetworkState()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_6

    .line 337
    :pswitch_311
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createDeviceListActivity()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    .line 338
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkNetworkState()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_6

    .line 170
    nop

    :pswitch_data_31e
    .packed-switch 0x44c
        :pswitch_7
        :pswitch_18b
        :pswitch_29b
        :pswitch_2d5
        :pswitch_2fc
        :pswitch_6
        :pswitch_d7
        :pswitch_23f
        :pswitch_6
        :pswitch_303
        :pswitch_30a
        :pswitch_311
    .end packed-switch
.end method
