.class final Lcom/coremobility/integration/c/d;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "CM_MetricsTask"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v2, 0x0

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/coremobility/integration/c/c;->k:Z

    if-nez v0, :cond_7f

    const/4 v1, 0x0

    sget-object v4, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    monitor-enter v4

    :try_start_9
    sget-object v0, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6f

    sget-object v0, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/c/c;

    move-object v3, v0

    :goto_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_76

    move v1, v2

    :goto_1d
    if-eqz v3, :cond_1

    sget v0, Lcom/coremobility/integration/c/c;->l:I

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/coremobility/integration/c/c;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/c/b;

    invoke-interface {v0}, Lcom/coremobility/integration/c/b;->a()I

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v3}, Lcom/coremobility/integration/c/c;->b()I

    move-result v4

    const/16 v5, 0x17

    const-string v6, "CM+U fail iq metric %c%c%c%c err:%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    shr-int/lit8 v8, v4, 0x18

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    shr-int/lit8 v9, v4, 0x10

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    shr-int/lit8 v9, v4, 0x8

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_6f
    :try_start_6f
    sget-object v0, Lcom/coremobility/integration/c/c;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_76
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_74} :catch_79

    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_76

    goto :goto_1

    :catchall_76
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_76

    move-object v3, v1

    goto :goto_1b

    :cond_7f
    return-void
.end method
