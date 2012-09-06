.class Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;
.super Landroid/view/OrientationEventListener;
.source "UnveilSensorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 54
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    #getter for: Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->currentOrientationInterval:Lcom/google/android/apps/unveil/env/Stopwatch;
    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->access$000(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;)Lcom/google/android/apps/unveil/env/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;->this$0:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    #setter for: Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->lastGoodOrientation:I
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->access$102(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;I)I

    .line 58
    :cond_11
    return-void
.end method
