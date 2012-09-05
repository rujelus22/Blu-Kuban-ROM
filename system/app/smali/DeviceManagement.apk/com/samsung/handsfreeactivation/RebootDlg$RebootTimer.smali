.class Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;
.super Landroid/os/CountDownTimer;
.source "RebootDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/handsfreeactivation/RebootDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/RebootDlg;


# direct methods
.method public constructor <init>(Lcom/samsung/handsfreeactivation/RebootDlg;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    .line 59
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;->start()Landroid/os/CountDownTimer;

    .line 61
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "RebootDlg"

    const-string v1, "RebootTimer onFinish ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    invoke-virtual {v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->dismiss()V

    .line 70
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 64
    const-string v0, "RebootDlg"

    const-string v1, "RebootTimer onTick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
