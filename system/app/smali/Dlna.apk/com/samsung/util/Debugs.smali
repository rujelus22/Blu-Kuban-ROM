.class public final Lcom/samsung/util/Debugs;
.super Ljava/lang/Object;
.source "Debugs.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static enabled:Z

.field private static mTag:Ljava/lang/String;

.field private static outputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/util/DebugOutputHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    .line 46
    const-string v0, "samsung"

    sput-object v0, Lcom/samsung/util/Debugs;->mTag:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/util/Debugs;->outputList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized addDebugOutputHandler(Lcom/samsung/util/DebugOutputHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 55
    const-class v1, Lcom/samsung/util/Debugs;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 56
    :try_start_5
    sget-object v0, Lcom/samsung/util/Debugs;->outputList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 57
    :cond_a
    monitor-exit v1

    return-void

    .line 55
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 102
    const-class v1, Lcom/samsung/util/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    if-eqz v0, :cond_b

    .line 103
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/samsung/util/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 104
    :cond_b
    monitor-exit v1

    return-void

    .line 102
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized error(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 127
    const-class v1, Lcom/samsung/util/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    if-eqz v0, :cond_d

    .line 128
    const/4 v0, 0x3

    sget-object v2, Lcom/samsung/util/Debugs;->mTag:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/samsung/util/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 129
    :cond_d
    monitor-exit v1

    return-void

    .line 127
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized info(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 93
    const-class v1, Lcom/samsung/util/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    if-eqz v0, :cond_d

    .line 94
    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/util/Debugs;->mTag:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/samsung/util/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 95
    :cond_d
    monitor-exit v1

    return-void

    .line 93
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    return v0
.end method

.method public static final on()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    .line 38
    return-void
.end method

.method private static final declared-synchronized printDebug(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "stat"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 73
    const-class v2, Lcom/samsung/util/Debugs;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/samsung/util/Debugs;->outputList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v3

    if-nez v3, :cond_11

    .line 89
    monitor-exit v2

    return-void

    .line 73
    :cond_11
    :try_start_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/util/DebugOutputHandler;

    .line 74
    .local v0, out:Lcom/samsung/util/DebugOutputHandler;
    packed-switch p0, :pswitch_data_2e

    goto :goto_9

    .line 76
    :pswitch_1b
    invoke-interface {v0, p1, p2}, Lcom/samsung/util/DebugOutputHandler;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_9

    .line 73
    .end local v0           #out:Lcom/samsung/util/DebugOutputHandler;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 79
    .restart local v0       #out:Lcom/samsung/util/DebugOutputHandler;
    :pswitch_22
    :try_start_22
    invoke-interface {v0, p1, p2}, Lcom/samsung/util/DebugOutputHandler;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 82
    :pswitch_26
    invoke-interface {v0, p1, p2}, Lcom/samsung/util/DebugOutputHandler;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 85
    :pswitch_2a
    invoke-interface {v0, p1, p2}, Lcom/samsung/util/DebugOutputHandler;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_1f

    goto :goto_9

    .line 74
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public static final declared-synchronized warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 112
    const-class v1, Lcom/samsung/util/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/util/Debugs;->enabled:Z

    if-eqz v0, :cond_b

    .line 113
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/samsung/util/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 114
    :cond_b
    monitor-exit v1

    return-void

    .line 112
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
