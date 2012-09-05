.class Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;
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

.field final synthetic val$realError:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iput p2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v1, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    monitor-enter v1

    .line 234
    :try_start_5
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_18

    .line 235
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    iget v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    invoke-interface {v0, v2}, Lcom/vlingo/client/asr/VLRecognizerListener;->onError(I)V

    .line 237
    :cond_18
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #calls: Lcom/vlingo/client/asr/VLRecognizer;->endRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$300(Lcom/vlingo/client/asr/VLRecognizer;)V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method
