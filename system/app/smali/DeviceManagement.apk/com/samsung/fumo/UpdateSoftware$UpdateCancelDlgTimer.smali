.class Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;
.super Landroid/os/CountDownTimer;
.source "UpdateSoftware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/UpdateSoftware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCancelDlgTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/UpdateSoftware;


# direct methods
.method public constructor <init>(Lcom/samsung/fumo/UpdateSoftware;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    .line 342
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->start()Landroid/os/CountDownTimer;

    .line 344
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 351
    const-string v0, "UpdateSoftware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateCancelDlgTimer onFinish ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/samsung/fumo/UpdateSoftware;->access$600(Lcom/samsung/fumo/UpdateSoftware;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;
    invoke-static {v0, v1}, Lcom/samsung/fumo/UpdateSoftware;->access$702(Lcom/samsung/fumo/UpdateSoftware;Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;)Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    .line 353
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$600(Lcom/samsung/fumo/UpdateSoftware;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 354
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 347
    const-string v0, "UpdateSoftware"

    const-string v1, "UpdateCancelDlgTimer onTick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method
