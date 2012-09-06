.class public Lcom/google/googlenav/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/z;
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:I

.field private b:B

.field private c:Lcom/google/googlenav/bv;

.field private volatile d:Lcom/google/googlenav/by;

.field private final e:Lax/r;

.field private final f:LaM/k;

.field private final g:Lcom/google/googlenav/bz;


# direct methods
.method public constructor <init>(Lax/r;LaM/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/google/googlenav/bz;

    invoke-direct {v0, p1}, Lcom/google/googlenav/bz;-><init>(Lax/r;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/bw;-><init>(Lax/r;LaM/k;Lcom/google/googlenav/bz;)V

    .line 83
    return-void
.end method

.method constructor <init>(Lax/r;LaM/k;Lcom/google/googlenav/bz;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/bw;->a:I

    .line 48
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/bw;->b:B

    .line 63
    new-instance v0, Lcom/google/googlenav/by;

    invoke-direct {v0}, Lcom/google/googlenav/by;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    .line 88
    iput-object p1, p0, Lcom/google/googlenav/bw;->e:Lax/r;

    .line 89
    iput-object p2, p0, Lcom/google/googlenav/bw;->f:LaM/k;

    .line 90
    iput-object p3, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    .line 91
    invoke-interface {p1, p0}, Lax/r;->a(Lax/z;)V

    .line 92
    invoke-static {p3}, Lcom/google/googlenav/bz;->a(Lcom/google/googlenav/bz;)I

    .line 93
    return-void
.end method

.method static synthetic a(Lax/A;)Lcom/google/googlenav/bv;
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/googlenav/bw;->b(Lax/A;)Lcom/google/googlenav/bv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lax/A;Lax/E;)Lcom/google/googlenav/bv;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/google/googlenav/bw;->b(Lax/A;Lax/E;)Lcom/google/googlenav/bv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/bw;)Lcom/google/googlenav/bv;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/bw;Lcom/google/googlenav/bv;)Lcom/google/googlenav/bv;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/google/googlenav/bw;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ai;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/bw;)Lax/r;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/bw;->e:Lax/r;

    return-object v0
.end method

.method private static b(Lax/A;)Lcom/google/googlenav/bv;
    .registers 2
    .parameter

    .prologue
    .line 187
    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0, p0}, Lcom/google/googlenav/bv;-><init>(Lax/A;)V

    return-object v0
.end method

.method private static b(Lax/A;Lax/E;)Lcom/google/googlenav/bv;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_16

    .line 197
    :try_start_2
    invoke-virtual {p1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 198
    new-instance v0, Lcom/google/googlenav/bv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/bv;-><init>(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_15

    .line 205
    :goto_14
    return-object v0

    .line 201
    :catch_15
    move-exception v0

    .line 205
    :cond_16
    invoke-static {p0}, Lcom/google/googlenav/bw;->b(Lax/A;)Lcom/google/googlenav/bv;

    move-result-object v0

    goto :goto_14
.end method

.method private static b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ai;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 178
    :cond_4
    const/4 v0, 0x0

    .line 180
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private declared-synchronized g()V
    .registers 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/google/googlenav/bw;->b:B

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    if-eqz v0, :cond_1a

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    invoke-virtual {v0}, Lcom/google/googlenav/bv;->B()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;)I

    move-result v0

    .line 300
    if-ltz v0, :cond_1a

    .line 301
    invoke-virtual {p0, v0}, Lcom/google/googlenav/bw;->a(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1f

    .line 306
    :goto_18
    monitor-exit p0

    return-void

    .line 305
    :cond_1a
    const/4 v0, -0x2

    :try_start_1b
    invoke-virtual {p0, v0}, Lcom/google/googlenav/bw;->a(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_18

    .line 297
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 254
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    :goto_7
    return v1

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    iget-object v0, v0, Lcom/google/googlenav/by;->b:Lcom/google/common/collect/bx;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 258
    if-nez v0, :cond_17

    move v0, v1

    :goto_15
    move v1, v0

    goto :goto_7

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_15
.end method

.method public a()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/bw;->e:Lax/r;

    invoke-interface {v0, p0}, Lax/r;->b(Lax/z;)V

    .line 97
    return-void
.end method

.method public declared-synchronized a(B)V
    .registers 3
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iput-byte p1, p0, Lcom/google/googlenav/bw;->b:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 4
    .parameter

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/bw;->a:I

    .line 103
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 104
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/bw;->b:B

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_37

    .line 121
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 109
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/google/googlenav/bw;->d(I)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    invoke-static {v0, v1}, Lcom/google/googlenav/bw;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/ai;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 111
    iget-object v1, p0, Lcom/google/googlenav/bw;->e:Lax/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 112
    if-nez v0, :cond_3a

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    .line 118
    :cond_2b
    :goto_2b
    iget-byte v0, p0, Lcom/google/googlenav/bw;->b:B

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;

    if-eqz v0, :cond_c

    .line 119
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/googlenav/bw;->b:B
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_37

    goto :goto_c

    .line 101
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_3a
    :try_start_3a
    invoke-static {v0}, Lcom/google/googlenav/bw;->b(Lax/A;)Lcom/google/googlenav/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    goto :goto_2b
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 4
    .parameter

    .prologue
    .line 217
    new-instance v0, Lcom/google/googlenav/bx;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/bx;-><init>(Lcom/google/googlenav/bw;LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bx;->g()V

    .line 248
    return-void
.end method

.method public a(Z)Z
    .registers 4
    .parameter

    .prologue
    .line 274
    if-eqz p1, :cond_d

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    invoke-static {v0}, Lcom/google/googlenav/bz;->a(Lcom/google/googlenav/bz;)I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    invoke-static {v1, v0}, Lcom/google/googlenav/bz;->a(Lcom/google/googlenav/bz;I)V

    .line 278
    :cond_d
    monitor-enter p0

    .line 279
    :try_start_e
    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    iget-object v1, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    invoke-static {v1}, Lcom/google/googlenav/bz;->b(Lcom/google/googlenav/bz;)Lcom/google/googlenav/by;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    .line 280
    const/4 v0, 0x0

    monitor-exit p0

    .line 289
    :goto_1a
    return v0

    .line 282
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    invoke-static {v0}, Lcom/google/googlenav/bz;->b(Lcom/google/googlenav/bz;)Lcom/google/googlenav/by;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    .line 283
    invoke-direct {p0}, Lcom/google/googlenav/bw;->g()V

    .line 284
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_33

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/bw;->f:LaM/k;

    if-eqz v0, :cond_31

    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/google/googlenav/bw;->f:LaM/k;

    invoke-interface {v1, v0}, LaM/k;->b(LaM/i;)V

    .line 289
    :cond_31
    const/4 v0, 0x1

    goto :goto_1a

    .line 284
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public synthetic b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/googlenav/bw;->d(I)Lcom/google/googlenav/ai;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()Lcom/google/googlenav/bv;
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/google/googlenav/bw;->b:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-nez v0, :cond_8

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/bw;->c:Lcom/google/googlenav/bv;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    .line 140
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/googlenav/bw;->g:Lcom/google/googlenav/bz;

    invoke-static {v0}, Lcom/google/googlenav/bz;->a(Lcom/google/googlenav/bz;)I

    .line 312
    return-void
.end method

.method public declared-synchronized c()I
    .registers 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bw;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 165
    return p1
.end method

.method public declared-synchronized d()B
    .registers 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/google/googlenav/bw;->b:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)Lcom/google/googlenav/ai;
    .registers 3
    .parameter

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    iget-object v0, v0, Lcom/google/googlenav/by;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    .line 154
    :goto_a
    return-object v0

    .line 153
    :catch_b
    move-exception v0

    .line 154
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public synthetic e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/googlenav/bw;->b()Lcom/google/googlenav/bv;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/bw;->d:Lcom/google/googlenav/by;

    iget-object v0, v0, Lcom/google/googlenav/by;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
