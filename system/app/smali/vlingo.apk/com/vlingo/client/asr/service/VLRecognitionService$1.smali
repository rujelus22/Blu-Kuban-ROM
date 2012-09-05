.class Lcom/vlingo/client/asr/service/VLRecognitionService$1;
.super Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;
.source "VLRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-direct {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$1$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public getNBestAtCursor(Ljava/lang/String;J)Ljava/util/List;
    .registers 7
    .parameter "phrase"
    .parameter "cursorPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getNBestManager()Lcom/vlingo/client/NBestManager;

    move-result-object v0

    .line 181
    .local v0, manager:Lcom/vlingo/client/NBestManager;
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    long-to-int v2, p2

    invoke-virtual {v0, p1, v2}, Lcom/vlingo/client/NBestManager;->getNBestForWord(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v2

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->convertNBestListToStringList(Ljava/util/Vector;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$800(Lcom/vlingo/client/asr/service/VLRecognitionService;Ljava/util/Vector;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getNBestForWord(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getNBestManager()Lcom/vlingo/client/NBestManager;

    move-result-object v0

    .line 186
    .local v0, manager:Lcom/vlingo/client/NBestManager;
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/NBestManager;->getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->convertNBestListToStringList(Ljava/util/Vector;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$800(Lcom/vlingo/client/asr/service/VLRecognitionService;Ljava/util/Vector;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRecognitionResults(J)Ljava/util/List;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/asr/service/VLRecognitionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;
    invoke-static {v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$300(Lcom/vlingo/client/asr/service/VLRecognitionService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startListening(Landroid/content/Intent;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)V
    .registers 5
    .parameter "recognizerIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService$1$2;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$1;Lcom/vlingo/client/asr/service/IVLRecognitionListener;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public stopListening()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$1$3;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method
