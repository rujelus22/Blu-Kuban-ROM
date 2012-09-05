.class Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/service/DmsLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoaContentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 2
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    .line 623
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 624
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 627
    const-string v3, "BroadCast"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/util/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DmsLocalService.DoaContentsReceiver.onReceive() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 632
    const-string v3, "DLNA"

    const-string v4, "Scanner Started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    #calls: Lcom/sec/android/app/dlna/service/DmsLocalService;->unRegisterContentObserver()V
    invoke-static {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->access$000(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    .line 636
    :cond_41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 637
    const-string v3, "DLNA"

    const-string v4, "Scanner Finished"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :try_start_54
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->updateAudioDirectory()V

    .line 640
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->updateImageDirectory()V

    .line 641
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->updateVideoDirectory()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_63} :catch_a0

    .line 645
    :goto_63
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    #calls: Lcom/sec/android/app/dlna/service/DmsLocalService;->registerContentObserver()V
    invoke-static {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->access$100(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    .line 648
    :cond_68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 649
    const-string v3, "DLNA"

    const-string v4, "Scanner Ejected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 653
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    .line 655
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 656
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 657
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "default_storage"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_9f
    return-void

    .line 642
    :catch_a0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_63
.end method
