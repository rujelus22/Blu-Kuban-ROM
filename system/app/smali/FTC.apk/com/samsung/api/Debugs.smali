.class public final Lcom/samsung/api/Debugs;
.super Ljava/lang/Object;
.source "Debugs.java"


# static fields
.field public static enabled:Z

.field private static mTag:Ljava/lang/String;

.field private static outputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/DebugOutputHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    .line 66
    const-string v0, "[FT]-Stack"

    sput-object v0, Lcom/samsung/api/Debugs;->mTag:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/api/Debugs;->outputList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 137
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_b

    .line 138
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 139
    :cond_b
    monitor-exit v1

    return-void

    .line 137
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 194
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_b

    .line 195
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 196
    :cond_b
    monitor-exit v1

    return-void

    .line 194
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized info(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 124
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_d

    .line 125
    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/api/Debugs;->mTag:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 126
    :cond_d
    monitor-exit v1

    return-void

    .line 124
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    return v0
.end method

.method private static final declared-synchronized printDebug(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "stat"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 101
    const-class v2, Lcom/samsung/api/Debugs;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/samsung/api/Debugs;->outputList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v3

    if-nez v3, :cond_11

    .line 117
    monitor-exit v2

    return-void

    .line 101
    :cond_11
    :try_start_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DebugOutputHandler;

    .line 102
    .local v0, out:Lcom/samsung/api/DebugOutputHandler;
    packed-switch p0, :pswitch_data_2e

    goto :goto_9

    .line 104
    :pswitch_1b
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_9

    .line 101
    .end local v0           #out:Lcom/samsung/api/DebugOutputHandler;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 107
    .restart local v0       #out:Lcom/samsung/api/DebugOutputHandler;
    :pswitch_22
    :try_start_22
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 110
    :pswitch_26
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 113
    :pswitch_2a
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_1f

    goto :goto_9

    .line 102
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public static final declared-synchronized warning(Ljava/lang/Exception;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 175
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_11

    .line 176
    const/4 v0, 0x1

    sget-object v2, Lcom/samsung/api/Debugs;->mTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 177
    :cond_11
    monitor-exit v1

    return-void

    .line 175
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized warning(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 146
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_d

    .line 147
    const/4 v0, 0x1

    sget-object v2, Lcom/samsung/api/Debugs;->mTag:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 148
    :cond_d
    monitor-exit v1

    return-void

    .line 146
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized warning(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 166
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_f

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 168
    :cond_f
    monitor-exit v1

    return-void

    .line 166
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 156
    const-class v1, Lcom/samsung/api/Debugs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/samsung/api/Debugs;->enabled:Z

    if-eqz v0, :cond_b

    .line 157
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/samsung/api/Debugs;->printDebug(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 158
    :cond_b
    monitor-exit v1

    return-void

    .line 156
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
