.class Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;
.super Ljava/lang/Object;
.source "IntensityTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->startSensing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 7

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$700(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 190
    monitor-exit p0

    return-void

    .line 169
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
