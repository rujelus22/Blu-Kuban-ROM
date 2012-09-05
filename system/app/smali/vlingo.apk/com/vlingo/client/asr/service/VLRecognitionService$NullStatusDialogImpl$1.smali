.class Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

    iput-object p2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 520
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

    iget-object v2, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v2

    .line 521
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_29

    move-result v1

    if-eqz v1, :cond_1c

    .line 525
    :try_start_f
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onStatusMessage(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1e

    .line 530
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v2

    .line 531
    return-void

    .line 526
    :catch_1e
    move-exception v0

    .line 527
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 530
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw v1
.end method
