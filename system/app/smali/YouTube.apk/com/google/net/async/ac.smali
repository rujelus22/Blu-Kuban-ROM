.class Lcom/google/net/async/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/ab;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/net/async/ac;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/net/async/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/net/async/p;)V
    .registers 7
    .parameter

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/google/net/async/p;->a()V

    .line 42
    invoke-static {p1}, Lcom/google/net/async/v;->a(Lcom/google/net/async/p;)V

    .line 43
    invoke-static {}, Lcom/google/net/async/x;->b()Ljava/util/logging/Logger;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EventDispatcher.loop() normal exit by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 51
    :goto_20
    return-void

    .line 45
    :catch_21
    move-exception v0

    .line 46
    invoke-static {}, Lcom/google/net/async/x;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EventDispatcher.loop() error exit by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/net/async/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method protected a(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
