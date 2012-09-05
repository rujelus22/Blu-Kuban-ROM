.class Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iput p2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 382
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v2, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v2

    .line 384
    :try_start_6
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    if-nez v1, :cond_12

    .line 385
    monitor-exit v2

    .line 503
    :goto_11
    return-void

    .line 391
    :cond_12
    iget v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->val$state:I

    sparse-switch v1, :sswitch_data_182

    .line 502
    :cond_17
    :goto_17
    :sswitch_17
    monitor-exit v2

    goto :goto_11

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1

    .line 393
    :sswitch_1c
    :try_start_1c
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v1

    if-eq v1, v3, :cond_17

    .line 397
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    const/4 v3, 0x3

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VLRecognitionService;I)I
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_19

    .line 401
    :try_start_2e
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3a} :catch_51

    .line 408
    :goto_3a
    :try_start_3a
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onBeginningOfSpeech()V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_46

    goto :goto_17

    .line 409
    :catch_46
    move-exception v0

    .line 410
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_47
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 402
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_51
    move-exception v0

    .line 403
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 419
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_5c
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v1

    if-ne v1, v3, :cond_17

    .line 422
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    const/4 v3, 0x4

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VLRecognitionService;I)I
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_19

    .line 426
    :try_start_6e
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onEndOfSpeech()V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_79} :catch_7a

    goto :goto_17

    .line 427
    :catch_7a
    move-exception v0

    .line 428
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_7b
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 442
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_85
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 444
    :try_start_8f
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_9b} :catch_a4

    .line 448
    :goto_9b
    :try_start_9b
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 445
    :catch_a4
    move-exception v0

    .line 446
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 452
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_af
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_b6
    .catchall {:try_start_9b .. :try_end_b6} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 454
    :try_start_b9
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_c5
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c5} :catch_ce

    .line 458
    :goto_c5
    :try_start_c5
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 455
    :catch_ce
    move-exception v0

    .line 456
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 462
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_d9
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_e0
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 464
    :try_start_e3
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_ef
    .catchall {:try_start_e3 .. :try_end_ef} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_ef} :catch_f8

    .line 468
    :goto_ef
    :try_start_ef
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 465
    :catch_f8
    move-exception v0

    .line 466
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 472
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_103
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_10a
    .catchall {:try_start_ef .. :try_end_10a} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 474
    :try_start_10d
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_119
    .catchall {:try_start_10d .. :try_end_119} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_119} :catch_122

    .line 478
    :goto_119
    :try_start_119
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 475
    :catch_122
    move-exception v0

    .line 476
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 482
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_12d
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_134
    .catchall {:try_start_119 .. :try_end_134} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 484
    :try_start_137
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_143
    .catchall {:try_start_137 .. :try_end_143} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_143} :catch_14c

    .line 488
    :goto_143
    :try_start_143
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 485
    :catch_14c
    move-exception v0

    .line 486
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 492
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_157
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    :try_end_15e
    .catchall {:try_start_143 .. :try_end_15e} :catchall_19

    move-result v1

    if-eqz v1, :cond_17

    .line 494
    :try_start_161
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_16d
    .catchall {:try_start_161 .. :try_end_16d} :catchall_19
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_16d} :catch_176

    .line 498
    :goto_16d
    :try_start_16d
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    iget-object v1, v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    goto/16 :goto_17

    .line 495
    :catch_176
    move-exception v0

    .line 496
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_16d .. :try_end_180} :catchall_19

    goto :goto_16d

    .line 391
    nop

    :sswitch_data_182
    .sparse-switch
        0x64 -> :sswitch_17
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_17
        0x67 -> :sswitch_5c
        0x68 -> :sswitch_17
        0x69 -> :sswitch_157
        0x6a -> :sswitch_103
        0x6b -> :sswitch_85
        0x6c -> :sswitch_12d
        0x6d -> :sswitch_d9
        0x6e -> :sswitch_af
        0x6f -> :sswitch_17
        0x70 -> :sswitch_17
        0xc8 -> :sswitch_17
    .end sparse-switch
.end method
