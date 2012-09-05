.class Lcom/vlingo/client/asr/RecognizeActivity$1;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "RecognizeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/RecognizeActivity;->runRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/RecognizeActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/RecognizeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 8
    .parameter "response"

    .prologue
    .line 77
    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/asr/VlingoSoftwareMeta;

    invoke-virtual {v3}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->resetAppId()V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, data:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 80
    .local v2, resultCode:I
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 81
    const-string v3, "results"

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v3, "com.vlingo.client.actions.RESULTS"

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v2, -0x1

    .line 85
    :cond_4a
    iget-object v3, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    iget-object v3, v3, Lcom/vlingo/client/asr/RecognizeActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_67

    .line 87
    :try_start_50
    iget-object v3, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    iget-object v3, v3, Lcom/vlingo/client/asr/RecognizeActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_50 .. :try_end_5a} :catch_5c

    .line 96
    :goto_5a
    const/4 v3, 0x1

    return v3

    .line 88
    :catch_5c
    move-exception v1

    .line 89
    .local v1, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 93
    .end local v1           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_67
    iget-object v3, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    invoke-virtual {v3, v2, v0}, Lcom/vlingo/client/asr/RecognizeActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v3, p0, Lcom/vlingo/client/asr/RecognizeActivity$1;->this$0:Lcom/vlingo/client/asr/RecognizeActivity;

    invoke-virtual {v3}, Lcom/vlingo/client/asr/RecognizeActivity;->finish()V

    goto :goto_5a
.end method
