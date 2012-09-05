.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;
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
    .line 811
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const v9, 0x7f060046

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 815
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :setUpnpEventHandler : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_27a

    .line 937
    :goto_24
    :sswitch_24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 938
    return-void

    .line 821
    :sswitch_28
    :try_start_28
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/FileShareException;

    .line 822
    .local v3, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    if-eqz v3, :cond_81

    .line 824
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060045

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 825
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity : stack send Error Msg :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_61
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_66} :catch_67

    goto :goto_24

    .line 834
    .end local v3           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :catch_67
    move-exception v3

    .line 836
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_ERROR Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 829
    .local v3, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :cond_81
    :try_start_81
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060046

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 830
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity : stack send Error Msg : unknown reason"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9f} :catch_67

    goto :goto_61

    .line 840
    .end local v3           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :sswitch_a0
    const/4 v1, 0x0

    .line 841
    .local v1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v4

    if-eqz v4, :cond_102

    .line 843
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->getTransferDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 851
    :goto_af
    if-eqz v1, :cond_14d

    .line 855
    :try_start_b1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_122

    .line 857
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_CONTROLLER_START devices Size (not search again): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44f

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 859
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createServicePreference(Ljava/util/ArrayList;)V
    invoke-static {v4, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_e5} :catch_e7

    goto/16 :goto_24

    .line 867
    :catch_e7
    move-exception v3

    .line 869
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_CONTROLLER_START Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 847
    .end local v3           #e:Ljava/lang/Exception;
    :cond_102
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity :FATAL Error : Can\'t Create mController API"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 849
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    goto :goto_af

    .line 863
    :cond_122
    :try_start_122
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x450

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 864
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_CONTROLLER_START devices Size(search again-direct) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_14b} :catch_e7

    goto/16 :goto_24

    .line 874
    :cond_14d
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity :FILE_SHARE_CONTROLLER_START But Device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 884
    .end local v1           #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :sswitch_156
    :try_start_156
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->getTransferDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 885
    .local v0, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :devices Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setProgress(Z)V

    .line 888
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createServicePreference(Ljava/util/ArrayList;)V
    invoke-static {v4, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V

    .line 889
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d6

    .line 891
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x450

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 892
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_DEVICE_LIST_CHANGE devices Size (search again): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1b9} :catch_1bb

    goto/16 :goto_24

    .line 899
    .end local v0           #deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :catch_1bb
    move-exception v3

    .line 901
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_DEVICE_LIST_CHANGE Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 896
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :cond_1d6
    :try_start_1d6
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44f

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1e3} :catch_1bb

    goto/16 :goto_24

    .line 907
    .end local v0           #deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :sswitch_1e5
    :try_start_1e5
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v6, 0x7f060046

    invoke-virtual {v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f8} :catch_1fa

    goto/16 :goto_24

    .line 909
    :catch_1fa
    move-exception v3

    .line 911
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_REQUEST_FILE_TRANSFER_FAIL Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 917
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_215
    :try_start_215
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->getTransferDeviceList()Ljava/util/ArrayList;

    move-result-object v2

    .line 919
    .local v2, devices2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    if-nez v2, :cond_243

    .line 920
    const-string v4, "[FT]-Client"

    const-string v5, "FTCDeviceListActivity :FILE_SHARE_SEARCH_DONE : device list is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_226} :catch_228

    goto/16 :goto_24

    .line 931
    .end local v2           #devices2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :catch_228
    move-exception v3

    .line 933
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :FILE_SHARE_SEARCH_DONE Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 924
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #devices2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :cond_243
    :try_start_243
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :devices Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_272

    .line 926
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x44f

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 928
    :cond_272
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createServicePreference(Ljava/util/ArrayList;)V
    invoke-static {v4, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_277} :catch_228

    goto/16 :goto_24

    .line 816
    nop

    :sswitch_data_27a
    .sparse-switch
        0xbb9 -> :sswitch_a0
        0xbba -> :sswitch_24
        0xbbb -> :sswitch_215
        0xbbc -> :sswitch_156
        0xbbe -> :sswitch_1e5
        0x270f -> :sswitch_28
    .end sparse-switch
.end method
