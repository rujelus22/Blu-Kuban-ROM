.class Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

.field final synthetic val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iput-object p2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 197
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v5, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    monitor-enter v5

    .line 198
    :try_start_5
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3a

    .line 199
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasErrorMessageActions()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 200
    :cond_24
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_4e

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 202
    :try_start_2e
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v4

    const/4 v6, 0x7

    invoke-interface {v4, v6}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3a} :catch_43

    .line 236
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    .line 237
    monitor-exit v5

    .line 238
    return-void

    .line 203
    :catch_43
    move-exception v0

    .line 204
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 237
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_4e

    throw v4

    .line 208
    :cond_51
    :try_start_51
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;
    invoke-static {v4, v6}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$302(Lcom/vlingo/client/asr/service/VLRecognitionService;Ljava/util/List;)Ljava/util/List;

    .line 209
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->val$response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v3

    .line 210
    .local v3, results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v3, :cond_86

    .line 211
    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v2

    .line 212
    .local v2, recRes:Lcom/vlingo/client/core/recognizer/results/RecResults;
    if-eqz v2, :cond_86

    .line 213
    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, phrase:Ljava/lang/String;
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_86

    .line 215
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VLRecognitionService;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/vlingo/client/asr/service/VLRecognitionResult;->newVLRecognitionResult(Ljava/lang/String;)Lcom/vlingo/client/asr/service/VLRecognitionResult;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v1           #phrase:Ljava/lang/String;
    .end local v2           #recRes:Lcom/vlingo/client/core/recognizer/results/RecResults;
    :cond_86
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 220
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VLRecognitionService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_9b
    .catchall {:try_start_51 .. :try_end_9b} :catchall_4e

    move-result v4

    if-lez v4, :cond_c0

    .line 222
    :try_start_9e
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v4

    iget-object v6, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v6, v6, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VLRecognitionService;)Ljava/util/List;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-interface {v4, v6, v7, v8}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onResults(Ljava/util/List;J)V
    :try_end_b3
    .catchall {:try_start_9e .. :try_end_b3} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_b3} :catch_b4

    goto :goto_3a

    .line 223
    :catch_b4
    move-exception v0

    .line 224
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_b5
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_4e

    goto/16 :goto_3a

    .line 228
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_c0
    :try_start_c0
    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    iget-object v4, v4, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-static {v4}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v4

    const/4 v6, 0x7

    invoke-interface {v4, v6}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_cc} :catch_ce

    goto/16 :goto_3a

    .line 229
    :catch_ce
    move-exception v0

    .line 230
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_cf
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_4e

    goto/16 :goto_3a
.end method
