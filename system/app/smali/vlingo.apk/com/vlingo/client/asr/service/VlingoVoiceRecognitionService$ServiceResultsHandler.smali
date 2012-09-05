.class Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "VlingoVoiceRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 11
    .parameter "response"

    .prologue
    .line 176
    iget-object v7, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    monitor-enter v7

    .line 177
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, finalResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_31

    .line 179
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasErrorMessageActions()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 180
    :cond_1f
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_44

    move-result-object v6

    if-eqz v6, :cond_31

    .line 182
    :try_start_27
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v6

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_39

    .line 215
    :cond_31
    :goto_31
    :try_start_31
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    .line 216
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 183
    :catch_39
    move-exception v1

    .line 184
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 217
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #finalResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_44
    move-exception v6

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_44

    throw v6

    .line 188
    .restart local v2       #finalResults:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v5

    .line 189
    .local v5, results:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v5, :cond_62

    .line 190
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    .line 191
    .local v4, recRes:Lcom/vlingo/client/core/recognizer/results/RecResults;
    if-eqz v4, :cond_62

    .line 192
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, phrase:Ljava/lang/String;
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_62

    .line 194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v3           #phrase:Ljava/lang/String;
    .end local v4           #recRes:Lcom/vlingo/client/core/recognizer/results/RecResults;
    :cond_62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_87

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "results_recognition"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_72
    .catchall {:try_start_47 .. :try_end_72} :catchall_44

    .line 202
    :try_start_72
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_7c

    goto :goto_31

    .line 203
    :catch_7c
    move-exception v1

    .line 204
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_7d
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_44

    goto :goto_31

    .line 208
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_87
    :try_start_87
    iget-object v6, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v6}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v6

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_31

    .line 209
    :catch_92
    move-exception v1

    .line 210
    .restart local v1       #ex:Landroid/os/RemoteException;
    :try_start_93
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_44

    goto :goto_31
.end method
