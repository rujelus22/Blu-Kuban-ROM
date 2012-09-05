.class Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;
.super Lcom/vlingo/client/vvs/VVSDispatcher;
.source "SafeReaderNotificationPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-direct {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 161
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->isError()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v1

    if-nez v1, :cond_13

    .line 162
    :cond_e
    invoke-super {p0, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    move-result v1

    .line 166
    :goto_12
    return v1

    .line 163
    :cond_13
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    #calls: Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->sendSMS(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->access$200(Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity$3;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;->finish()V

    .line 166
    const/4 v1, 0x1

    goto :goto_12
.end method
