.class Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$1;->startListening(Landroid/content/Intent;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

.field final synthetic val$listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

.field final synthetic val$recognizerIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$1;Lcom/vlingo/client/asr/service/IVLRecognitionListener;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iput-object p2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->val$listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    iput-object p3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->val$recognizerIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 125
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v2, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v2

    .line 130
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-virtual {v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_2f

    move-result v1

    if-eqz v1, :cond_32

    .line 132
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->val$listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_24

    .line 136
    :goto_22
    :try_start_22
    monitor-exit v2

    .line 156
    :goto_23
    return-void

    .line 133
    :catch_24
    move-exception v0

    .line 134
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 154
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v1

    .line 139
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->val$recognizerIntent:Landroid/content/Intent;

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->lastRecoIntent:Landroid/content/Intent;
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$402(Lcom/vlingo/client/asr/service/VLRecognitionService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->val$listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$502(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    .line 141
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    const/4 v3, 0x1

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VLRecognitionService;I)I

    .line 143
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 147
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->runTOSAcceptFlow()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$600(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    .line 149
    monitor-exit v2

    goto :goto_23

    .line 152
    :cond_5b
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->startRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$700(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    .line 154
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_32 .. :try_end_63} :catchall_2f

    goto :goto_23
.end method
