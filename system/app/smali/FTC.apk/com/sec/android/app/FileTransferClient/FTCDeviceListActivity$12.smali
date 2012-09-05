.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1416
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, checkFile:Z
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v3, v3, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_31

    .line 1424
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Bundle;

    move-result-object v4

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z
    invoke-static {v3, v4, v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/os/Bundle;Z)Z

    move-result v0

    .line 1430
    :goto_14
    if-nez v0, :cond_5d

    .line 1432
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z
    invoke-static {v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1434
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :DIALOG_ASK_AGAIN return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const-string v4, "Making File... Wait"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1461
    :goto_30
    return-void

    .line 1428
    :cond_31
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/os/Bundle;Z)Z

    move-result v0

    goto :goto_14

    .line 1438
    :cond_3f
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :fail the make file list"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1440
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    .line 1442
    :cond_5d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FileTransferClient.FTC_SERVICE_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1443
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "FILE_LIST"

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v4, v4, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1444
    const-string v3, "MODE"

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, deviceKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1447
    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$2400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/samsung/android/application/fileshare/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string v3, "DEVICE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v3

    if-nez v3, :cond_a8

    .line 1451
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :cp is null: why?"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1455
    :cond_a8
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :cp is not null!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :start Service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1459
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->finish()V

    goto/16 :goto_30
.end method
