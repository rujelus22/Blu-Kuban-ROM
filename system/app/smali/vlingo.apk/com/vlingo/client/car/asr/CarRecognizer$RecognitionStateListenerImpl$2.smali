.class Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v1, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    monitor-enter v1

    .line 209
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    const/4 v2, 0x3

    #setter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
    invoke-static {v0, v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$502(Lcom/vlingo/client/car/asr/CarRecognizer;I)I

    .line 210
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onEndOfSpeech()V

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0
.end method
