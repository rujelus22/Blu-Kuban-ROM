.class Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;
.super Landroid/os/CountDownTimer;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/deviceconfiguration/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcToRebootTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;JJ)V
    .registers 6
    .parameter
    .parameter "total"
    .parameter "interval"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    .line 431
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;->start()Landroid/os/CountDownTimer;

    .line 433
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #getter for: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$200(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 436
    const-string v0, "DeviceConfiguration"

    const-string v1, "1 second over"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method
