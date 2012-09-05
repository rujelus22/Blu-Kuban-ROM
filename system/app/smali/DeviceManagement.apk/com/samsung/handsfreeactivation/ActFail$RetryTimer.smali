.class Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;
.super Landroid/os/CountDownTimer;
.source "ActFail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/handsfreeactivation/ActFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/ActFail;


# direct methods
.method public constructor <init>(Lcom/samsung/handsfreeactivation/ActFail;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    .line 175
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 176
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$300(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, " 0 : seconds"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$400(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/ActFail;->access$000(Lcom/samsung/handsfreeactivation/ActFail;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->retrySession()V

    .line 188
    return-void
.end method

.method public onTick(J)V
    .registers 7
    .parameter "millisUntilFinished"

    .prologue
    .line 179
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 180
    .local v0, secs:I
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/ActFail;->access$300(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;->this$0:Lcom/samsung/handsfreeactivation/ActFail;

    #getter for: Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/samsung/handsfreeactivation/ActFail;->access$400(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/ProgressBar;

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    return-void
.end method
