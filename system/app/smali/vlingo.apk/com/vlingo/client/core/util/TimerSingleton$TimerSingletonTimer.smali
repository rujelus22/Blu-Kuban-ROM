.class public abstract Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;
.super Ljava/util/Timer;
.source "TimerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/util/TimerSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimerSingletonTimer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 56
    const-class v0, Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    const-string v1, "GEN2"

    const-string v2, "someone calling cancel on shared timer."

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected cancelTimer()V
    .registers 1

    .prologue
    .line 60
    invoke-super {p0}, Ljava/util/Timer;->cancel()V

    .line 61
    return-void
.end method
