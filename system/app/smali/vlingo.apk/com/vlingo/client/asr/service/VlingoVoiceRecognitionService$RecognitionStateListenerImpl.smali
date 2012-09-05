.class Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;
.super Ljava/lang/Object;
.source "VlingoVoiceRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecognitionStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 12
    .parameter "manager"
    .parameter "state"
    .parameter "type"
    .parameter "message"
    .parameter "note"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    const/4 v3, 0x3

    .line 251
    iget-object v2, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    monitor-enter v2

    .line 252
    :try_start_4
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    if-nez v1, :cond_e

    .line 253
    monitor-exit v2

    .line 357
    :goto_d
    return-void

    .line 256
    :cond_e
    sparse-switch p2, :sswitch_data_148

    .line 356
    :cond_11
    :goto_11
    :sswitch_11
    monitor-exit v2

    goto :goto_d

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v1

    .line 258
    :sswitch_16
    :try_start_16
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I

    move-result v1

    if-eq v1, v3, :cond_11

    .line 259
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    const/4 v3, 0x3

    #setter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;I)I
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_13

    .line 261
    :try_start_24
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2e} :catch_43

    .line 266
    :goto_2e
    :try_start_2e
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_11

    .line 267
    :catch_38
    move-exception v0

    .line 268
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_39
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 262
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_43
    move-exception v0

    .line 263
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 277
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_4e
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I

    move-result v1

    if-ne v1, v3, :cond_11

    .line 278
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    const/4 v3, 0x4

    #setter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1, v3}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$102(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;I)I
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_13

    .line 280
    :try_start_5c
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_65} :catch_66

    goto :goto_11

    .line 281
    :catch_66
    move-exception v0

    .line 282
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_67
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 296
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_71
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 298
    :try_start_79
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_83} :catch_89

    .line 302
    :goto_83
    :try_start_83
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto :goto_11

    .line 299
    :catch_89
    move-exception v0

    .line 300
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 306
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_94
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_99
    .catchall {:try_start_83 .. :try_end_99} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 308
    :try_start_9c
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a6} :catch_ad

    .line 312
    :goto_a6
    :try_start_a6
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto/16 :goto_11

    .line 309
    :catch_ad
    move-exception v0

    .line 310
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 316
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_b8
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_bd
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 318
    :try_start_c0
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_ca
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ca} :catch_d1

    .line 322
    :goto_ca
    :try_start_ca
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto/16 :goto_11

    .line 319
    :catch_d1
    move-exception v0

    .line 320
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 326
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_dc
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_e1
    .catchall {:try_start_ca .. :try_end_e1} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 328
    :try_start_e4
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ee} :catch_f5

    .line 332
    :goto_ee
    :try_start_ee
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto/16 :goto_11

    .line 329
    :catch_f5
    move-exception v0

    .line 330
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 336
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_100
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_105
    .catchall {:try_start_ee .. :try_end_105} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 338
    :try_start_108
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_112} :catch_119

    .line 342
    :goto_112
    :try_start_112
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto/16 :goto_11

    .line 339
    :catch_119
    move-exception v0

    .line 340
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 346
    .end local v0           #ex:Landroid/os/RemoteException;
    :sswitch_124
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    :try_end_129
    .catchall {:try_start_112 .. :try_end_129} :catchall_13

    move-result v1

    if-eqz v1, :cond_11

    .line 348
    :try_start_12c
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_136} :catch_13d

    .line 352
    :goto_136
    :try_start_136
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    goto/16 :goto_11

    .line 349
    :catch_13d
    move-exception v0

    .line 350
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_136 .. :try_end_147} :catchall_13

    goto :goto_136

    .line 256
    :sswitch_data_148
    .sparse-switch
        0x64 -> :sswitch_11
        0x65 -> :sswitch_16
        0x66 -> :sswitch_11
        0x67 -> :sswitch_4e
        0x68 -> :sswitch_11
        0x69 -> :sswitch_124
        0x6a -> :sswitch_dc
        0x6b -> :sswitch_71
        0x6c -> :sswitch_100
        0x6d -> :sswitch_b8
        0x6e -> :sswitch_94
        0x6f -> :sswitch_11
        0x70 -> :sswitch_11
        0xc8 -> :sswitch_11
    .end sparse-switch
.end method

.method public onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
    .registers 4
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method
