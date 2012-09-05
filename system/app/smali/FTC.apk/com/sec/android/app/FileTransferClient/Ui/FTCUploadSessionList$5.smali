.class Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;
.super Landroid/os/Handler;
.source "FTCUploadSessionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 455
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x961

    if-eq v2, v3, :cond_c

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x962

    if-ne v2, v3, :cond_1d

    .line 457
    :cond_c
    const-string v2, "[FT]-Client"

    const-string v3, "FTCUploadSessionList :LIST_WAIT_ADD || LIST_UPLOAD_READY  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->updateList(Ljava/util/ArrayList;I)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$400(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Ljava/util/ArrayList;I)V

    .line 509
    :cond_1c
    :goto_1c
    return-void

    .line 460
    :cond_1d
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x965

    if-eq v2, v3, :cond_29

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x964

    if-ne v2, v3, :cond_67

    .line 462
    :cond_29
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCUploadSessionList :UPDATE (2405)|| START (2404) :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->updateList(Ljava/util/ArrayList;I)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$400(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Ljava/util/ArrayList;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_1c

    .line 505
    :catch_4d
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCUploadSessionList :Exception on handler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 466
    .end local v0           #e:Ljava/lang/Exception;
    :cond_67
    :try_start_67
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x967

    if-eq v2, v3, :cond_73

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x968

    if-ne v2, v3, :cond_bc

    .line 468
    :cond_73
    const-string v2, "[FT]-Client"

    const-string v3, "FTCUploadSessionList :LIST_UPLOAD_FINISH || LIST_UPLOAD_WAIT_CANCEL  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSDList:Ljava/util/ArrayList;

    .line 470
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b3

    .line 472
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$100(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/16 v3, 0x138a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$102(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 477
    :cond_97
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$300(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 479
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/16 v3, 0x1389

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$302(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 482
    :cond_ac
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeListActivity()V

    goto/16 :goto_1c

    .line 486
    :cond_b3
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->updateList(Ljava/util/ArrayList;I)V
    invoke-static {v2, v1, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$400(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Ljava/util/ArrayList;I)V

    goto/16 :goto_1c

    .line 489
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    :cond_bc
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x966

    if-ne v2, v3, :cond_1c

    .line 491
    const-string v2, "[FT]-Client"

    const-string v3, "FTCUploadSessionList :LIST_UPLOAD_NO_SESSION "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$100(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/16 v3, 0x138a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowWaitPopup:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$102(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 497
    :cond_de
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$300(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 499
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/16 v3, 0x1389

    invoke-virtual {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 500
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$302(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 502
    :cond_f3
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$5;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeListActivity()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_f8} :catch_4d

    goto/16 :goto_1c
.end method
