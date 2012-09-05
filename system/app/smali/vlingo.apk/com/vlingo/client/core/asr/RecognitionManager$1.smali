.class Lcom/vlingo/client/core/asr/RecognitionManager$1;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;->abortRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$1;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$1;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->resetFlowState()V

    .line 522
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$1;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition()V

    .line 523
    return-void
.end method
