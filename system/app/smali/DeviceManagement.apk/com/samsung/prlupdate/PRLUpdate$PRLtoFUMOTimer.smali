.class Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;
.super Landroid/os/CountDownTimer;
.source "PRLUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/prlupdate/PRLUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PRLtoFUMOTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method public constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    .line 820
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 821
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->start()Landroid/os/CountDownTimer;

    .line 822
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 829
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRLtoFUMOTimer onFinish ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v1, 0x6

    #setter for: Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I
    invoke-static {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$402(Lcom/samsung/prlupdate/PRLUpdate;I)I

    .line 831
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;
    invoke-static {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$702(Lcom/samsung/prlupdate/PRLUpdate;Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;)Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    .line 832
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_38

    .line 833
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$300(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 837
    :goto_37
    return-void

    .line 835
    :cond_38
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_37
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 825
    const-string v0, "PRLUpdate"

    const-string v1, "PRLtoFUMOTimer onTick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method
