.class Lcom/sec/android/app/lcdtest/SensorTest$6$1;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/SensorTest$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/lcdtest/SensorTest$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/SensorTest$6;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest$6$1;->this$1:Lcom/sec/android/app/lcdtest/SensorTest$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest$6$1;->this$1:Lcom/sec/android/app/lcdtest/SensorTest$6;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/SensorTest$6;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->readLightSensorValue()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/SensorTest;->access$200(Lcom/sec/android/app/lcdtest/SensorTest;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest$6$1;->this$1:Lcom/sec/android/app/lcdtest/SensorTest$6;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/SensorTest$6;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/SensorTest;->access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v1

    const-string v2, "BOOL_SENSOR_PROX_READ_SUPPORT"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    if-ne v1, v2, :cond_20

    .line 222
    :try_start_19
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest$6$1;->this$1:Lcom/sec/android/app/lcdtest/SensorTest$6;

    iget-object v1, v1, Lcom/sec/android/app/lcdtest/SensorTest$6;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->getProximityValue()V
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/SensorTest;->access$400(Lcom/sec/android/app/lcdtest/SensorTest;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_21

    .line 230
    :cond_20
    :goto_20
    return-void

    .line 223
    :catch_21
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
