.class public Lr/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# static fields
.field private static a:Lr/af;


# instance fields
.field private final b:Lac/h;

.field private final c:Lcom/google/googlenav/common/a;

.field private final d:Lt/f;

.field private final e:Lt/f;

.field private volatile f:Lr/r;

.field private final g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lr/af;->b:Lac/h;

    .line 74
    iput-object v0, p0, Lr/af;->c:Lcom/google/googlenav/common/a;

    .line 75
    iput-object v0, p0, Lr/af;->d:Lt/f;

    .line 76
    iput-object v0, p0, Lr/af;->e:Lt/f;

    .line 77
    iput-object v0, p0, Lr/af;->f:Lr/r;

    .line 78
    iput-object v0, p0, Lr/af;->g:Ljava/util/concurrent/CountDownLatch;

    .line 79
    return-void
.end method

.method private constructor <init>(Lac/h;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lr/af;->b:Lac/h;

    .line 60
    iget-object v0, p0, Lr/af;->b:Lac/h;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lr/af;->b:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->a(Lac/q;)V

    .line 61
    :cond_e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lr/af;->c:Lcom/google/googlenav/common/a;

    .line 62
    new-instance v0, Lt/f;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/af;->d:Lt/f;

    .line 63
    new-instance v0, Lt/f;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/af;->e:Lt/f;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lr/af;->f:Lr/r;

    .line 65
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lr/af;->g:Ljava/util/concurrent/CountDownLatch;

    .line 66
    return-void
.end method

.method public static a(Lac/h;Ljava/io/File;)Lr/af;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 244
    sget-object v0, Lr/af;->a:Lr/af;

    if-nez v0, :cond_b

    .line 245
    new-instance v0, Lr/af;

    invoke-direct {v0, p0}, Lr/af;-><init>(Lac/h;)V

    sput-object v0, Lr/af;->a:Lr/af;

    .line 250
    :cond_b
    new-instance v0, Lr/ag;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lr/ag;-><init>(LY/c;Ljava/io/File;)V

    invoke-virtual {v0}, Lr/ag;->g()V

    .line 257
    sget-object v0, Lr/af;->a:Lr/af;

    return-object v0
.end method

.method static synthetic a(Lr/af;)Lr/r;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lr/af;->f:Lr/r;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .registers 3
    .parameter

    .prologue
    .line 267
    invoke-static {p1}, Lr/r;->a(Ljava/io/File;)Lr/r;

    move-result-object v0

    iput-object v0, p0, Lr/af;->f:Lr/r;

    .line 268
    invoke-direct {p0}, Lr/af;->f()V

    .line 269
    return-void
.end method

.method private a(Ljava/lang/String;Lr/ac;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fg;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 202
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 203
    invoke-virtual {p2}, Lr/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 204
    const/4 v1, 0x2

    invoke-virtual {p2}, Lr/ac;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 206
    :cond_19
    new-instance v1, Lr/ah;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lr/ah;-><init>(Lr/af;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lr/ac;Lr/ag;)V

    .line 207
    new-instance v0, LA/g;

    const-string v2, "addRequest"

    invoke-direct {v0, v2, v1}, LA/g;-><init>(Ljava/lang/String;Lac/g;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 209
    iget-object v0, p0, Lr/af;->b:Lac/h;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 210
    return-void
.end method

.method static synthetic a(Lr/af;Ljava/io/File;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lr/af;->a(Ljava/io/File;)V

    return-void
.end method

.method public static d()Lr/af;
    .registers 1

    .prologue
    .line 295
    sget-object v0, Lr/af;->a:Lr/af;

    return-object v0
.end method

.method public static e()V
    .registers 1

    .prologue
    .line 300
    sget-object v0, Lr/af;->a:Lr/af;

    if-eqz v0, :cond_c

    .line 301
    sget-object v0, Lr/af;->a:Lr/af;

    invoke-virtual {v0}, Lr/af;->b()V

    .line 302
    const/4 v0, 0x0

    sput-object v0, Lr/af;->a:Lr/af;

    .line 304
    :cond_c
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lr/af;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 284
    :goto_0
    iget-object v0, p0, Lr/af;->f:Lr/r;

    if-nez v0, :cond_c

    .line 286
    :try_start_4
    iget-object v0, p0, Lr/af;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_0

    .line 287
    :catch_a
    move-exception v0

    goto :goto_0

    .line 291
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lr/ae;)Lr/ac;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lr/af;->a(Ljava/lang/String;Lr/ae;Z)Lr/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lr/ae;Z)Lr/ac;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    if-eqz p3, :cond_55

    .line 125
    iget-object v2, p0, Lr/af;->e:Lt/f;

    monitor-enter v2

    .line 126
    :try_start_6
    iget-object v0, p0, Lr/af;->e:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 127
    if-eqz v0, :cond_84

    .line 128
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/ac;

    .line 130
    :goto_16
    if-nez v0, :cond_2b

    .line 131
    new-instance v0, Lr/ac;

    invoke-direct {v0}, Lr/ac;-><init>()V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr/ac;->a(Z)V

    .line 136
    iget-object v1, p0, Lr/af;->e:Lt/f;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    :cond_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_52

    .line 157
    :goto_2c
    monitor-enter v0

    .line 158
    :try_start_2d
    iget-object v1, p0, Lr/af;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 159
    invoke-virtual {v0}, Lr/ac;->h()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_45

    .line 160
    invoke-direct {p0, p1, v0}, Lr/af;->a(Ljava/lang/String;Lr/ac;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Lr/ac;->a(J)V

    .line 163
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_81

    .line 165
    if-eqz p2, :cond_51

    invoke-virtual {v0}, Lr/ac;->b()Z

    move-result v1

    if-nez v1, :cond_51

    .line 166
    invoke-virtual {v0, p2}, Lr/ac;->a(Lr/ae;)V

    .line 168
    :cond_51
    return-object v0

    .line 138
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 140
    :cond_55
    iget-object v1, p0, Lr/af;->d:Lt/f;

    monitor-enter v1

    .line 141
    :try_start_58
    iget-object v0, p0, Lr/af;->d:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/ac;

    .line 142
    if-nez v0, :cond_6c

    .line 144
    iget-object v2, p0, Lr/af;->f:Lr/r;

    if-eqz v2, :cond_6c

    .line 145
    iget-object v0, p0, Lr/af;->f:Lr/r;

    invoke-virtual {v0, p1}, Lr/r;->a(Ljava/lang/String;)Lr/ac;

    move-result-object v0

    .line 148
    :cond_6c
    if-nez v0, :cond_77

    .line 150
    new-instance v0, Lr/ac;

    invoke-direct {v0}, Lr/ac;-><init>()V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lr/ac;->a(Z)V

    .line 153
    :cond_77
    iget-object v2, p0, Lr/af;->d:Lt/f;

    invoke-virtual {v2, p1, v0}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    monitor-exit v1

    goto :goto_2c

    :catchall_7e
    move-exception v0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_58 .. :try_end_80} :catchall_7e

    throw v0

    .line 163
    :catchall_81
    move-exception v1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v1

    :cond_84
    move-object v0, v1

    goto :goto_16
.end method

.method public a()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    return-void
.end method

.method public a(Lac/g;)V
    .registers 3
    .parameter

    .prologue
    .line 218
    instance-of v0, p1, Lr/ah;

    if-eqz v0, :cond_9

    .line 219
    check-cast p1, Lr/ah;

    .line 220
    invoke-virtual {p1}, Lr/ah;->b()V

    .line 222
    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 176
    iget-object v1, p0, Lr/af;->e:Lt/f;

    monitor-enter v1

    .line 177
    :try_start_3
    iget-object v0, p0, Lr/af;->e:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 178
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 179
    iget-object v1, p0, Lr/af;->d:Lt/f;

    monitor-enter v1

    .line 180
    :try_start_c
    iget-object v0, p0, Lr/af;->d:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 181
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_20

    .line 182
    if-eqz p1, :cond_1c

    .line 183
    invoke-direct {p0}, Lr/af;->g()V

    .line 184
    iget-object v0, p0, Lr/af;->f:Lr/r;

    invoke-virtual {v0}, Lr/r;->c()V

    .line 186
    :cond_1c
    return-void

    .line 178
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 181
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Lr/af;->g()V

    .line 83
    iget-object v0, p0, Lr/af;->f:Lr/r;

    invoke-virtual {v0}, Lr/r;->a()V

    .line 84
    return-void
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lr/af;->f:Lr/r;

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lr/af;->f:Lr/r;

    invoke-virtual {v0}, Lr/r;->b()J

    move-result-wide v0

    .line 197
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method
