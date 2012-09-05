.class Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;
.super Ljava/lang/Object;
.source "Proximity_test.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/Proximity_test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/Proximity_test;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/lcdtest/Proximity_test;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/lcdtest/Proximity_test;Lcom/sec/android/app/lcdtest/Proximity_test$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;-><init>(Lcom/sec/android/app/lcdtest/Proximity_test;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 62
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 65
    const-string v0, "Proximity_test"

    const-string v1, "event listen!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_2c

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #getter for: Lcom/sec/android/app/lcdtest/Proximity_test;->txtproximity:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$100(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PROXIMITY sensor is activated"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #getter for: Lcom/sec/android/app/lcdtest/Proximity_test;->Bacckview:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$200(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/view/View;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #calls: Lcom/sec/android/app/lcdtest/Proximity_test;->startVibrate()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$300(Lcom/sec/android/app/lcdtest/Proximity_test;)V

    .line 75
    :goto_2b
    return-void

    .line 71
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #getter for: Lcom/sec/android/app/lcdtest/Proximity_test;->txtproximity:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$100(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PROXIMITY sensor is deactivated"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #getter for: Lcom/sec/android/app/lcdtest/Proximity_test;->Bacckview:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$200(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;->this$0:Lcom/sec/android/app/lcdtest/Proximity_test;

    #calls: Lcom/sec/android/app/lcdtest/Proximity_test;->stopVibrate()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->access$400(Lcom/sec/android/app/lcdtest/Proximity_test;)V

    goto :goto_2b
.end method
