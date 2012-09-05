.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 942
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x4b6

    const/4 v9, 0x3

    .line 948
    :try_start_3
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 949
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 951
    .local v3, netInfo:Landroid/net/NetworkInfo;
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :onReceiver: WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCDeviceListActivity :state :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v8}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v8}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_9a

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v6

    if-nez v6, :cond_9a

    .line 955
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v6

    const/16 v7, 0x4b1

    if-ne v6, v7, :cond_99

    .line 958
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v7, 0x4b6

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 959
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x44e

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 960
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v7, 0x3

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 961
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1702(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 962
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v7, 0x3f3

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDialog(I)V

    .line 1035
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :cond_99
    :goto_99
    return-void

    .line 965
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    :cond_9a
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_99

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v6

    if-ne v6, v9, :cond_99

    .line 966
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :Receive  : disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v6

    if-ne v6, v10, :cond_99

    .line 968
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v7, 0x4b0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 969
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I

    .line 970
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v9, 0x7f060006

    invoke-virtual {v8, v9}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v9, 0x7f060031

    invoke-virtual {v8, v9}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 971
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_fc} :catch_fd

    goto :goto_99

    .line 1030
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    :catch_fd
    move-exception v1

    .line 1032
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTCDeviceListActivity :mNetworkStateReceiver Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 974
    .end local v1           #e:Ljava/lang/Exception;
    :cond_117
    :try_start_117
    const-string v6, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 975
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :receive :android.intent.action.FTC_SERVICE_FINISHED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 978
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v7, 0x3f4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    .line 979
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :remove Dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x457

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_99

    .line 982
    :cond_14d
    const-string v6, "android.intent.action.FTC_SAVEFILE_SUCCESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e2

    .line 983
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :receive :android.intent.action.FTC_SAVEFILE_SUCCESS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const-string v7, "StringUri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1902(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 986
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 988
    const/4 v4, 0x1

    .line 989
    .local v4, successTest:Z
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17e
    :goto_17e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 991
    .local v5, uriString:Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;
    invoke-static {v6, v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 994
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_17e

    .line 996
    const/4 v4, 0x1

    goto :goto_17e

    .line 1000
    .end local v5           #uriString:Landroid/os/Parcelable;
    :cond_1a1
    const/4 v0, 0x0

    .line 1001
    .local v0, checkFile:Z
    if-eqz v4, :cond_1b7

    .line 1003
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v6, v6, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1c7

    .line 1005
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z
    invoke-static {v6, v7, v8}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 1013
    :cond_1b7
    :goto_1b7
    if-nez v0, :cond_1d5

    .line 1015
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :checkFileInfo false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto/16 :goto_99

    .line 1009
    :cond_1c7
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x1

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z
    invoke-static {v6, v7, v8}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/os/Bundle;Z)Z

    move-result v0

    goto :goto_1b7

    .line 1020
    :cond_1d5
    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x44c

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_99

    .line 1024
    .end local v0           #checkFile:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #successTest:Z
    :cond_1e2
    const-string v6, "android.intent.action.FTC_SAVEFILE_FAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1026
    const-string v6, "[FT]-Client"

    const-string v7, "FTCDeviceListActivity :receive : android.intent.action.FTC_SAVEFILE_FAIL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_1f5} :catch_fd

    goto/16 :goto_99
.end method
