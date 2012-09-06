.class public Lcom/google/googlenav/api/a;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/Semaphore;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private volatile f:Lcom/google/googlenav/api/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/google/googlenav/api/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/api/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/api/a;->b:Ljava/util/concurrent/Semaphore;

    .line 73
    iput-object p1, p0, Lcom/google/googlenav/api/a;->c:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/google/googlenav/api/a;->d:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/google/googlenav/api/a;->e:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 80
    const/16 v0, 0x84

    return v0
.end method

.method public a(Lac/p;J)Lcom/google/googlenav/api/b;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-interface {p1, p0}, Lac/p;->c(Lac/g;)V

    .line 144
    :try_start_4
    iget-object v1, p0, Lcom/google/googlenav/api/a;->b:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_16

    move-result v1

    .line 149
    monitor-enter p0

    .line 150
    if-eqz v1, :cond_11

    :try_start_f
    iget-object v0, p0, Lcom/google/googlenav/api/a;->f:Lcom/google/googlenav/api/b;

    :cond_11
    monitor-exit p0

    :goto_12
    return-object v0

    .line 151
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v0

    .line 145
    :catch_16
    move-exception v1

    goto :goto_12
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/i;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 92
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/api/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/api/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 94
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/api/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 97
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 98
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 106
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/i;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/api/a;->A_()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 126
    :goto_d
    return v5

    .line 111
    :cond_e
    const/4 v1, -0x1

    invoke-static {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 112
    packed-switch v1, :pswitch_data_30

    .line 120
    invoke-static {}, Lcom/google/googlenav/api/b;->a()Lcom/google/googlenav/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/api/a;->f:Lcom/google/googlenav/api/b;

    goto :goto_d

    .line 114
    :pswitch_1d
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 115
    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    invoke-static {v0, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v2

    .line 116
    invoke-static {v1, v2, v3}, Lcom/google/googlenav/api/b;->a(Ljava/lang/String;J)Lcom/google/googlenav/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/api/a;->f:Lcom/google/googlenav/api/b;

    goto :goto_d

    .line 112
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/googlenav/api/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 132
    return-void
.end method
