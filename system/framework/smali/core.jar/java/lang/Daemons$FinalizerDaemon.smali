.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;


# instance fields
.field private volatile finalizingObject:Ljava/lang/Object;

.field private volatile finalizingStartedNanos:J

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    .line 160
    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Daemons$FinalizerDaemon;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Daemons$FinalizerDaemon;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 158
    iget-wide v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    return-wide v0
.end method

.method private doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EXPLICIT_INVOCATION"
        }
    .end annotation

    .prologue
    .local p1, reference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v4, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, object:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    .line 180
    :try_start_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingStartedNanos:J

    .line 181
    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_22
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_16} :catch_19

    .line 187
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 189
    :goto_18
    return-void

    .line 183
    :catch_19
    move-exception v0

    .line 185
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1a
    const-string v2, "Uncaught exception thrown by finalizer"

    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_22

    .line 187
    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    goto :goto_18

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_22
    move-exception v2

    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    throw v2
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 165
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 168
    :try_start_6
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/FinalizerReference;

    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_0

    .line 169
    :catch_12
    move-exception v0

    goto :goto_0

    .line 172
    :cond_14
    return-void
.end method
