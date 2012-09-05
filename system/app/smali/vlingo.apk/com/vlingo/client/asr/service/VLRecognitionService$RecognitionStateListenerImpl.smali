.class Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .parameter "manager"
    .parameter "state"
    .parameter "type"
    .parameter "message"
    .parameter "note"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void
.end method

.method public onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
    .registers 4
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method
