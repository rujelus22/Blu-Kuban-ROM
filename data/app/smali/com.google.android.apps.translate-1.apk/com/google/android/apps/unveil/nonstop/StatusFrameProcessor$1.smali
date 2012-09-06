.class Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor$1;
.super Ljava/lang/Object;
.source "StatusFrameProcessor.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor$1;->this$0:Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSet(Lcom/google/android/apps/unveil/sensors/UnveilSensor;)V
    .registers 4
    .parameter "sensor"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor$1;->this$0:Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v1

    #setter for: Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->access$002(Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;[F)[F

    .line 70
    return-void
.end method
