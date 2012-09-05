.class Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;
.super Ljava/util/TimerTask;
.source "GyroSensorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->displayValueFromSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mCount:I
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$100(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_18

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    #getter for: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$700(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1$1;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_18
    return-void
.end method
