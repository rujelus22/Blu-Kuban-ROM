.class Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 360
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/asr/service/VLRecognitionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    iget-object v2, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v2

    .line 362
    :try_start_e
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_2f

    .line 364
    :try_start_15
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_22} :catch_24

    .line 368
    :goto_22
    :try_start_22
    monitor-exit v2

    .line 369
    return-void

    .line 365
    :catch_24
    move-exception v0

    .line 366
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 368
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v1
.end method
