.class Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;
.super Landroid/os/CountDownTimer;
.source "FirmwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    .line 955
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 956
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->start()Landroid/os/CountDownTimer;

    .line 957
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 964
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoUpdDlgTimer onFinish ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;
    invoke-static {v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->access$702(Lcom/samsung/fumo/FirmwareUpdate;Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;)Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 966
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_32

    .line 967
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #calls: Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$300(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 971
    :goto_31
    return-void

    .line 969
    :cond_32
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_31
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 960
    const-string v0, "FirmwareUpdate"

    const-string v1, "NoUpdDlgTimer onTick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void
.end method
