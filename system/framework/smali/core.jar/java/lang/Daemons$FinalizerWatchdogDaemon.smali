.class Ljava/lang/Daemons$FinalizerWatchdogDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const-wide/32 v12, 0xf4240

    .line 201
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_98

    .line 202
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v9

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, object:Ljava/lang/Object;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v9

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J
    invoke-static {v9}, Ljava/lang/Daemons$FinalizerDaemon;->access$500(Ljava/lang/Daemons$FinalizerDaemon;)J

    move-result-wide v6

    .line 205
    .local v6, startedNanos:J
    const-wide/16 v4, 0x2710

    .line 206
    .local v4, sleepMillis:J
    if-eqz v3, :cond_25

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    div-long v1, v9, v12

    .line 208
    .local v1, elapsedMillis:J
    sub-long/2addr v4, v1

    .line 211
    .end local v1           #elapsedMillis:J
    :cond_25
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_2e

    .line 213
    :try_start_2b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_95

    .line 219
    :cond_2e
    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v9

    #getter for: Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/Daemons$FinalizerDaemon;->access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v9

    if-ne v3, v9, :cond_3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    move-result v9

    if-nez v9, :cond_3

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    div-long v1, v9, v12

    .line 227
    .restart local v1       #elapsedMillis:J
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 228
    .local v8, syntheticException:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Daemons$FinalizerDaemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".finalize() timed out after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms; limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_3

    .line 214
    .end local v1           #elapsedMillis:J
    .end local v8           #syntheticException:Ljava/lang/Exception;
    :catch_95
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/InterruptedException;
    goto/16 :goto_3

    .line 234
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #object:Ljava/lang/Object;
    .end local v4           #sleepMillis:J
    .end local v6           #startedNanos:J
    :cond_98
    return-void
.end method
