.class Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;
.super Landroid/os/CountDownTimer;
.source "EmergencyCallDlgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/EmergencyCallDlgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

.field private time_left:J


# direct methods
.method public constructor <init>(Lcom/samsung/client/EmergencyCallDlgActivity;JJ)V
    .registers 8
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    .line 194
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 195
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "RebootTimer Start ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->start()Landroid/os/CountDownTimer;

    .line 197
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 209
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "RebootTimer onFinish ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 211
    :try_start_c
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #getter for: Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$300(Lcom/samsung/client/EmergencyCallDlgActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 213
    const-string v0, "EmergencyCallDlgActivity"

    const-string v2, "RebootTimer End ... "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #calls: Lcom/samsung/client/EmergencyCallDlgActivity;->rebootDevice()V
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$400(Lcom/samsung/client/EmergencyCallDlgActivity;)V

    .line 216
    :cond_20
    monitor-exit v1

    .line 218
    return-void

    .line 216
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->time_left:J

    .line 205
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->this$0:Lcom/samsung/client/EmergencyCallDlgActivity;

    #getter for: Lcom/samsung/client/EmergencyCallDlgActivity;->dlgText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->access$500(Lcom/samsung/client/EmergencyCallDlgActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->time_left:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->onTick(J)V

    .line 201
    return-void
.end method
