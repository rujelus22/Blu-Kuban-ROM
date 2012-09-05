.class Lcom/sec/android/app/FileTransferClient/FTCService$5;
.super Landroid/os/Handler;
.source "FTCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/FTCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V
    .registers 2
    .parameter

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 1816
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :mControlResponseHandler : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_26a

    .line 1966
    :goto_1f
    :sswitch_1f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1967
    :goto_22
    return-void

    .line 1823
    :sswitch_23
    :try_start_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    .line 1824
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1825
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :FileShareERROR :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_52} :catch_53

    goto :goto_1f

    .line 1827
    .end local v0           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :catch_53
    move-exception v0

    .line 1829
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_ERROR :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1839
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_6d
    :try_start_6d
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->registerSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1400(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 1840
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService :success  createSession"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7d} :catch_7e

    goto :goto_1f

    .line 1842
    :catch_7e
    move-exception v0

    .line 1844
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_REQUEST_FILE_TRANSFER_SUCCESS :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1850
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_98
    :try_start_98
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkCanceledSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1852
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a9} :catch_ab

    goto/16 :goto_22

    .line 1869
    :catch_ab
    move-exception v0

    .line 1871
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_REQUEST_FILE_TRANSFER_FAIL :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1857
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c6
    :try_start_c6
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService :Can\'t find canceled session"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cd} :catch_ab

    .line 1860
    :try_start_cd
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v5, 0x9c5

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_d8
    .catch Ljava/lang/ClassCastException; {:try_start_cd .. :try_end_d8} :catch_da
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d8} :catch_ab

    goto/16 :goto_1f

    .line 1862
    :catch_da
    move-exception v1

    .line 1864
    .local v1, e1:Ljava/lang/ClassCastException;
    :try_start_db
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v4, 0x0

    const/16 v5, 0x9c5

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    .line 1865
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :ClassCastException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_fb} :catch_ab

    goto/16 :goto_1f

    .line 1877
    .end local v1           #e1:Ljava/lang/ClassCastException;
    :sswitch_fd
    :try_start_fd
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService :FILE_SHARE_SESSION_READY_FOR_TRANSPORT => readySEssion"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->readySession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10d} :catch_10f

    goto/16 :goto_1f

    .line 1880
    :catch_10f
    move-exception v0

    .line 1882
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_READY_FOR_TRANSPORT :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1889
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_12a
    :try_start_12a
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkCanceledSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1891
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_13b} :catch_13d

    goto/16 :goto_22

    .line 1901
    :catch_13d
    move-exception v0

    .line 1903
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_STATUS_CANCELED :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1896
    .end local v0           #e:Ljava/lang/Exception;
    :cond_158
    :try_start_158
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService :Can\'t find canceled session"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1898
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v5, 0x9c5

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_17d} :catch_13d

    goto/16 :goto_1f

    .line 1909
    :sswitch_17f
    :try_start_17f
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v5, 0x7f06003b

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1910
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->finishSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1600(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_19b} :catch_19d

    goto/16 :goto_1f

    .line 1912
    :catch_19d
    move-exception v0

    .line 1914
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_STATUS_FINISHED :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1920
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1b8
    :try_start_1b8
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService : FILE_SHARE_SESSION_STATUS_ERROR ==> don\'t have the popup...pleast make it. "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v5, 0x9c8

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1ca} :catch_1cc

    goto/16 :goto_1f

    .line 1923
    :catch_1cc
    move-exception v0

    .line 1925
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_STATUS_ERROR :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1931
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1e7
    :try_start_1e7
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->updateSession(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1700(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1f0} :catch_1f2

    goto/16 :goto_1f

    .line 1933
    :catch_1f2
    move-exception v0

    .line 1935
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_STATUS_PROGRESS :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1941
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_20d
    :try_start_20d
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService : FILE_SHARE_SESSION_STATUS_STARTED ==>startSesssion "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 1943
    .local v2, si:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    if-eqz v2, :cond_261

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v5, 0x7f06003f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1946
    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCService$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->startSesssion(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_244} :catch_246

    goto/16 :goto_1f

    .line 1953
    .end local v2           #si:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    :catch_246
    move-exception v0

    .line 1955
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCService :Exception on mControlResponseHandler -FILE_SHARE_SESSION_STATUS_STARTED :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1950
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #si:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    :cond_261
    :try_start_261
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService : mControlResponseHandler -FILE_SHARE_SESSION_STATUS_STARTED sessionInfo is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_268} :catch_246

    goto/16 :goto_1f

    .line 1818
    :sswitch_data_26a
    .sparse-switch
        0xbb9 -> :sswitch_1f
        0xbbb -> :sswitch_1f
        0xbbc -> :sswitch_1f
        0xbbd -> :sswitch_6d
        0xbbe -> :sswitch_98
        0xbc0 -> :sswitch_1e7
        0xbc1 -> :sswitch_17f
        0xbc2 -> :sswitch_20d
        0xbc3 -> :sswitch_12a
        0xbc4 -> :sswitch_1b8
        0xbc5 -> :sswitch_fd
        0x270f -> :sswitch_23
    .end sparse-switch
.end method
