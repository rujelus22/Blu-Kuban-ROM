.class Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v1, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    monitor-enter v1

    .line 193
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    const/4 v2, 0x3

    #setter for: Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    invoke-static {v0, v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$502(Lcom/vlingo/client/asr/VLRecognizer;I)I

    .line 194
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/asr/VLRecognizerListener;->onEndOfSpeech()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0
.end method
