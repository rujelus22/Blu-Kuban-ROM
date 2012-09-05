.class Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;
.super Ljava/util/TimerTask;
.source "BluetoothSearchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BTsearchCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$500(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;-><init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 101
    monitor-exit p0

    return-void

    .line 87
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
