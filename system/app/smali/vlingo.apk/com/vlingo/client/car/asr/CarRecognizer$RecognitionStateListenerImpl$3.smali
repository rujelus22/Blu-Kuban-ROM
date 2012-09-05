.class Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;
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

.field final synthetic val$realError:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iput p2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v1, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    monitor-enter v1

    .line 250
    :try_start_5
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_18

    .line 251
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    iget v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->val$realError:I

    invoke-interface {v0, v2}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onError(I)V

    .line 253
    :cond_18
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #calls: Lcom/vlingo/client/car/asr/CarRecognizer;->endRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$300(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method
