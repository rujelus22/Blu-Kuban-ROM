.class public abstract Ljcifs/util/transport/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static B:I

.field static C:Ljcifs/util/e;


# instance fields
.field D:I

.field E:Ljava/lang/String;

.field F:Ljava/lang/Thread;

.field G:Ljcifs/util/transport/TransportException;

.field protected H:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Ljcifs/util/transport/c;->B:I

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ljcifs/util/transport/c;->B:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljcifs/util/transport/c;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/transport/c;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_e

    :cond_d
    return v0

    :cond_e
    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private a()V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_2
    iget-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_73

    :try_start_a
    invoke-virtual {p0}, Ljcifs/util/transport/c;->d()Ljcifs/util/transport/a;

    move-result-object v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    const-string v4, "Read timed out"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    move v4, v2

    :goto_28
    if-nez v4, :cond_71

    move v1, v2

    :goto_2b
    if-nez v4, :cond_39

    sget-object v4, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v4, Ljcifs/util/e;->a:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_39

    sget-object v4, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_39
    :try_start_39
    invoke-virtual {p0, v1}, Ljcifs/util/transport/c;->b(Z)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2

    :catch_3d
    move-exception v0

    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :cond_44
    :try_start_44
    monitor-enter p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_18

    :try_start_45
    iget-object v1, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/util/transport/b;

    if-nez v0, :cond_65

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5d

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    const-string v1, "Invalid key, skipping message"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_5d
    invoke-virtual {p0}, Ljcifs/util/transport/c;->e()V

    :goto_60
    monitor-exit p0

    goto :goto_2

    :catchall_62
    move-exception v0

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_62

    :try_start_64
    throw v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_65} :catch_18

    :cond_65
    :try_start_65
    invoke-virtual {p0, v0}, Ljcifs/util/transport/c;->a(Ljcifs/util/transport/b;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcifs/util/transport/b;->d_:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_62

    goto :goto_60

    :cond_6f
    move v4, v3

    goto :goto_28

    :cond_71
    move v1, v3

    goto :goto_2b

    :cond_73
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_4
    iget v0, p0, Ljcifs/util/transport/c;->D:I

    packed-switch v0, :pswitch_data_15e

    :pswitch_9
    new-instance v0, Ljcifs/util/transport/TransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/c;->D:I

    throw v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    const/4 v1, 0x0

    :try_start_29
    iput v1, p0, Ljcifs/util/transport/c;->D:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    new-instance v1, Ljcifs/util/transport/TransportException;

    invoke-direct {v1, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    :try_start_35
    iget v1, p0, Ljcifs/util/transport/c;->D:I

    if-eqz v1, :cond_67

    iget v1, p0, Ljcifs/util/transport/c;->D:I

    if-eq v1, v4, :cond_67

    iget v1, p0, Ljcifs/util/transport/c;->D:I

    if-eq v1, v5, :cond_67

    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lt v1, v3, :cond_61

    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_61
    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/c;->D:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    :cond_67
    throw v0
    :try_end_68
    .catchall {:try_start_35 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_6b
    :try_start_6b
    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eqz v0, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v4, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v5, :cond_9d

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v3, :cond_97

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_97
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;
    :try_end_9d
    .catchall {:try_start_6b .. :try_end_9d} :catchall_68

    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    :pswitch_9f
    const/4 v0, 0x0

    :try_start_a0
    iput v0, p0, Ljcifs/util/transport/c;->D:I

    new-instance v0, Ljcifs/util/transport/TransportException;

    const-string v1, "Connection in error"

    iget-object v2, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    invoke-direct {v0, v1, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_ac
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ljcifs/util/transport/c;->E:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_c4
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_c4} :catch_27

    :try_start_c4
    iget-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    packed-switch v0, :pswitch_data_16c

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_c4 .. :try_end_d4} :catchall_115

    :try_start_d4
    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eqz v0, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v4, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v5, :cond_9d

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v3, :cond_100

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_100
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;
    :try_end_106
    .catchall {:try_start_d4 .. :try_end_106} :catchall_68

    goto :goto_9d

    :pswitch_107
    const/4 v0, 0x0

    :try_start_108
    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    new-instance v0, Ljcifs/util/transport/TransportException;

    const-string v2, "Connection timeout"

    invoke-direct {v0, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_115
    move-exception v0

    monitor-exit v1
    :try_end_117
    .catchall {:try_start_108 .. :try_end_117} :catchall_115

    :try_start_117
    throw v0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_117 .. :try_end_118} :catch_27

    :pswitch_118
    :try_start_118
    iget-object v0, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    if-eqz v0, :cond_125

    const/4 v0, 0x4

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    throw v0

    :cond_125
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    monitor-exit v1
    :try_end_129
    .catchall {:try_start_118 .. :try_end_129} :catchall_115

    :try_start_129
    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eqz v0, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v4, :cond_9d

    iget v0, p0, Ljcifs/util/transport/c;->D:I

    if-eq v0, v5, :cond_9d

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v3, :cond_155

    sget-object v0, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_155
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;
    :try_end_15b
    .catchall {:try_start_129 .. :try_end_15b} :catchall_68

    goto/16 :goto_9d

    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_9
        :pswitch_9
        :pswitch_6b
        :pswitch_9f
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_107
        :pswitch_118
    .end packed-switch
.end method

.method protected abstract a(Ljcifs/util/transport/a;)V
.end method

.method public declared-synchronized a(Ljcifs/util/transport/a;Ljcifs/util/transport/b;J)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljcifs/util/transport/c;->a(Ljcifs/util/transport/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p2, Ljcifs/util/transport/b;->d_:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_63

    :try_start_7
    iget-object v0, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljcifs/util/transport/c;->b(Ljcifs/util/transport/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p2, Ljcifs/util/transport/b;->c_:J

    :cond_16
    iget-boolean v0, p2, Ljcifs/util/transport/b;->d_:Z

    if-nez v0, :cond_66

    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-wide v0, p2, Ljcifs/util/transport/b;->c_:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p3, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_16

    new-instance v0, Ljcifs/util/transport/TransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/util/transport/c;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timedout waiting for response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_4a} :catch_74

    :catch_4a
    move-exception v0

    :try_start_4b
    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_57

    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5c

    :cond_57
    const/4 v1, 0x1

    :try_start_58
    invoke-virtual {p0, v1}, Ljcifs/util/transport/c;->b(Z)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6d

    :goto_5b
    :try_start_5b
    throw v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    :try_start_5d
    iget-object v1, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_66
    :try_start_66
    iget-object v0, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_63

    monitor-exit p0

    return-void

    :catch_6d
    move-exception v1

    :try_start_6e
    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5b

    :catch_74
    move-exception v0

    new-instance v1, Ljcifs/util/transport/TransportException;

    invoke-direct {v1, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_5c
.end method

.method protected abstract a(Ljcifs/util/transport/b;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b(Ljcifs/util/transport/a;)V
.end method

.method public declared-synchronized b(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    iget v2, p0, Ljcifs/util/transport/c;->D:I

    packed-switch v2, :pswitch_data_4e

    :pswitch_8
    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v1, :cond_28

    sget-object v1, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/c;->D:I

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_4b

    throw v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_34
    move p1, v1

    :pswitch_35
    :try_start_35
    iget-object v1, p0, Ljcifs/util/transport/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_31

    move-result v1

    if-eqz v1, :cond_3f

    if-eqz p1, :cond_2e

    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1}, Ljcifs/util/transport/c;->a(Z)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_31
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_49

    :goto_42
    :pswitch_42
    const/4 v1, 0x0

    :try_start_43
    iput-object v1, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/util/transport/c;->D:I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_31

    goto :goto_2e

    :catch_49
    move-exception v0

    goto :goto_42

    :cond_4b
    :pswitch_4b
    monitor-exit p0

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_8
        :pswitch_34
        :pswitch_35
        :pswitch_42
    .end packed-switch
.end method

.method protected abstract c()V
.end method

.method protected abstract d()Ljcifs/util/transport/a;
.end method

.method protected abstract e()V
.end method

.method public run()V
    .registers 6

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljcifs/util/transport/c;->c()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_34

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1d

    if-eqz v0, :cond_1b

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_1b

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1b
    monitor-exit v1

    :goto_1c
    return-void

    :cond_1d
    if-eqz v0, :cond_26

    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    :cond_26
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_31

    invoke-direct {p0}, Ljcifs/util/transport/c;->a()V

    goto :goto_1c

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :catch_34
    move-exception v0

    monitor-enter v1

    :try_start_36
    iget-object v2, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    if-eq v1, v2, :cond_4c

    if-eqz v0, :cond_47

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_47

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_47
    monitor-exit v1

    goto :goto_1c

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    if-eqz v0, :cond_55

    :try_start_4e
    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    :cond_55
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_49

    goto :goto_1c

    :catchall_5d
    move-exception v2

    monitor-enter v1

    :try_start_5f
    iget-object v3, p0, Ljcifs/util/transport/c;->F:Ljava/lang/Thread;

    if-eq v1, v3, :cond_75

    if-eqz v0, :cond_70

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_70

    sget-object v2, Ljcifs/util/transport/c;->C:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_70
    monitor-exit v1

    goto :goto_1c

    :catchall_72
    move-exception v0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    if-eqz v0, :cond_7e

    :try_start_77
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/c;->G:Ljcifs/util/transport/TransportException;

    :cond_7e
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/util/transport/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_72

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/util/transport/c;->E:Ljava/lang/String;

    return-object v0
.end method
