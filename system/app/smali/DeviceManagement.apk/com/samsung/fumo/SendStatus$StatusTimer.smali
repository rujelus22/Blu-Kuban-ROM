.class Lcom/samsung/fumo/SendStatus$StatusTimer;
.super Landroid/os/CountDownTimer;
.source "SendStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/SendStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/SendStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/fumo/SendStatus;JJ)V
    .registers 6
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/samsung/fumo/SendStatus$StatusTimer;->this$0:Lcom/samsung/fumo/SendStatus;

    .line 188
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 189
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 193
    const-string v0, "SendStatus"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus$StatusTimer;->this$0:Lcom/samsung/fumo/SendStatus;

    iget-object v0, v0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    .line 195
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus$StatusTimer;->this$0:Lcom/samsung/fumo/SendStatus;

    iget-object v0, v0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    :cond_14
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 201
    const-string v0, "SendStatus"

    const-string v1, "onTick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method
