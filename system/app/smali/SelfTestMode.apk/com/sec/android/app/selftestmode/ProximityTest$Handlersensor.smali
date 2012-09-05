.class Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;
.super Ljava/lang/Object;
.source "ProximityTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/ProximityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/ProximityTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/ProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/ProximityTest;Lcom/sec/android/app/selftestmode/ProximityTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;-><init>(Lcom/sec/android/app/selftestmode/ProximityTest;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 114
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "Sensing"

    const-string v1, "change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_27

    .line 119
    const-string v0, "Sensing"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    #calls: Lcom/sec/android/app/selftestmode/ProximityTest;->startVibration()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$100(Lcom/sec/android/app/selftestmode/ProximityTest;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/selftestmode/ProximityTest;->working:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$202(Lcom/sec/android/app/selftestmode/ProximityTest;Z)Z

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    #calls: Lcom/sec/android/app/selftestmode/ProximityTest;->isWorking()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$300(Lcom/sec/android/app/selftestmode/ProximityTest;)V

    .line 129
    :goto_26
    return-void

    .line 124
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    #calls: Lcom/sec/android/app/selftestmode/ProximityTest;->stopVibration()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$400(Lcom/sec/android/app/selftestmode/ProximityTest;)V

    .line 125
    const-string v0, "Sensing"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    #setter for: Lcom/sec/android/app/selftestmode/ProximityTest;->working:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$202(Lcom/sec/android/app/selftestmode/ProximityTest;Z)Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/ProximityTest;

    #calls: Lcom/sec/android/app/selftestmode/ProximityTest;->isWorking()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/ProximityTest;->access$300(Lcom/sec/android/app/selftestmode/ProximityTest;)V

    goto :goto_26
.end method
