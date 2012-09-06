.class Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;
.super Landroid/os/CountDownTimer;
.source "PRLUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/prlupdate/PRLUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootTimer"
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
    .line 842
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    .line 843
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 844
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->start()Landroid/os/CountDownTimer;

    .line 845
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 852
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoUpdDlgTimer onFinish ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 856
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$300(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 860
    :goto_2b
    return-void

    .line 858
    :cond_2c
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2b
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 848
    const-string v0, "PRLUpdate"

    const-string v1, "NoUpdDlgTimer onTick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method
