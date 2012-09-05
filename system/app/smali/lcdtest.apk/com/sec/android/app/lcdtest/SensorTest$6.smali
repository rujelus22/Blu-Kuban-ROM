.class Lcom/sec/android/app/lcdtest/SensorTest$6;
.super Ljava/util/TimerTask;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/SensorTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/SensorTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest$6;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$6;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #getter for: Lcom/sec/android/app/lcdtest/SensorTest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$500(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/lcdtest/SensorTest$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/SensorTest$6$1;-><init>(Lcom/sec/android/app/lcdtest/SensorTest$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method
