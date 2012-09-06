.class public abstract Lcom/google/android/apps/unveil/sensors/UnveilSensor;
.super Ljava/lang/Object;
.source "UnveilSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;
    }
.end annotation


# instance fields
.field public accuracy:I

.field public currentReadingNanos:J

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->listeners:Ljava/util/Set;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract getValues()[F
.end method

.method public registerListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected triggerOnSet()V
    .registers 4

    .prologue
    .line 32
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;

    .line 33
    .local v1, listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;
    invoke-interface {v1, p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;->onSet(Lcom/google/android/apps/unveil/sensors/UnveilSensor;)V

    goto :goto_6

    .line 35
    .end local v1           #listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;
    :cond_16
    return-void
.end method

.method public unregisterListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
