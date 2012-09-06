.class public final Lcom/google/googlenav/clientparam/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;

.field private static volatile b:Z

.field private static volatile c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private static volatile d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;

.field private static volatile e:Lcom/google/googlenav/clientparam/j;

.field private static volatile f:Lcom/google/googlenav/clientparam/e;

.field private static volatile g:Lcom/google/googlenav/clientparam/k;

.field private static volatile h:Lcom/google/googlenav/clientparam/d;

.field private static volatile i:Lcom/google/googlenav/clientparam/a;

.field private static volatile j:Lcom/google/googlenav/clientparam/b;

.field private static volatile k:Lcom/google/googlenav/clientparam/c;

.field private static volatile l:LY/d;

.field private static volatile m:Z

.field private static volatile n:Z

.field private static o:Ljava/lang/Object;

.field private static volatile p:Lcom/google/googlenav/clientparam/i;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/clientparam/f;->b:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    .line 127
    sput-boolean v1, Lcom/google/googlenav/clientparam/f;->m:Z

    .line 128
    sput-boolean v1, Lcom/google/googlenav/clientparam/f;->n:Z

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->o:Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/google/common/collect/bx;->i()Lcom/google/common/collect/by;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/clientparam/f;->a:Ljava/util/Map;

    .line 149
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 150
    new-instance v0, Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    invoke-static {}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->getDefaultProto()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    .line 152
    new-instance v0, Lcom/google/googlenav/clientparam/j;

    invoke-static {}, Lcom/google/googlenav/clientparam/j;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/j;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->e:Lcom/google/googlenav/clientparam/j;

    .line 154
    new-instance v0, Lcom/google/googlenav/clientparam/e;

    invoke-static {}, Lcom/google/googlenav/clientparam/e;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/e;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->f:Lcom/google/googlenav/clientparam/e;

    .line 156
    new-instance v0, Lcom/google/googlenav/clientparam/k;

    invoke-static {}, Lcom/google/googlenav/clientparam/k;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->g:Lcom/google/googlenav/clientparam/k;

    .line 158
    new-instance v0, Lcom/google/googlenav/clientparam/d;

    invoke-static {}, Lcom/google/googlenav/clientparam/d;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/d;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->h:Lcom/google/googlenav/clientparam/d;

    .line 160
    new-instance v0, Lcom/google/googlenav/clientparam/a;

    invoke-static {}, Lcom/google/googlenav/clientparam/a;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->i:Lcom/google/googlenav/clientparam/a;

    .line 161
    new-instance v0, Lcom/google/googlenav/clientparam/b;

    invoke-static {}, Lcom/google/googlenav/clientparam/b;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/b;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->j:Lcom/google/googlenav/clientparam/b;

    .line 162
    new-instance v0, Lcom/google/googlenav/clientparam/c;

    invoke-static {}, Lcom/google/googlenav/clientparam/c;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/c;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/clientparam/f;->k:Lcom/google/googlenav/clientparam/c;

    .line 165
    :cond_e3
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method static synthetic a(LY/d;)LY/d;
    .registers 1
    .parameter

    .prologue
    .line 82
    sput-object p0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;
    .registers 2

    .prologue
    .line 184
    const-class v0, Lcom/google/googlenav/clientparam/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/clientparam/f;->d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lac/h;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    const-class v1, Lcom/google/googlenav/clientparam/f;

    monitor-enter v1

    :try_start_3
    const-string v0, "ServerControlledParametersManager.data"

    invoke-static {p0, v0}, Lcom/google/googlenav/clientparam/f;->a(Lac/h;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 225
    monitor-exit v1

    return-void

    .line 224
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lac/h;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 284
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_6

    .line 299
    :goto_5
    return-void

    .line 288
    :cond_6
    invoke-static {p1}, Lcom/google/googlenav/clientparam/f;->a(Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 292
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1e

    .line 293
    sget-object v2, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lcom/google/googlenav/clientparam/f;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 298
    :cond_1e
    invoke-static {p0, p1, v3}, Lcom/google/googlenav/clientparam/f;->b(Lac/h;Ljava/lang/String;Z)V

    goto :goto_5
.end method

.method static synthetic a(Lac/h;Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/google/googlenav/clientparam/f;->b(Lac/h;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/clientparam/i;)V
    .registers 1
    .parameter

    .prologue
    .line 243
    sput-object p0, Lcom/google/googlenav/clientparam/f;->p:Lcom/google/googlenav/clientparam/i;

    .line 244
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 669
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 671
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->am()Z

    move-result v1

    .line 672
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 674
    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 677
    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 678
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 428
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 430
    :try_start_6
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 431
    if-eqz v0, :cond_32

    .line 432
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 434
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 436
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 438
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_32

    .line 439
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/clientparam/f;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_31

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 443
    :catch_31
    move-exception v0

    .line 446
    :cond_32
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    .line 458
    const/4 v0, 0x1

    .line 461
    :goto_10
    return v0

    .line 459
    :catch_11
    move-exception v0

    .line 461
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic a(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 82
    sput-boolean p0, Lcom/google/googlenav/clientparam/f;->n:Z

    return p0
.end method

.method public static declared-synchronized b()Lcom/google/googlenav/clientparam/j;
    .registers 2

    .prologue
    .line 188
    const-class v0, Lcom/google/googlenav/clientparam/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/clientparam/f;->e:Lcom/google/googlenav/clientparam/j;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Lac/h;)V
    .registers 4
    .parameter

    .prologue
    .line 252
    const-class v1, Lcom/google/googlenav/clientparam/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/google/googlenav/clientparam/f;->b:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    if-nez v0, :cond_d

    .line 256
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 255
    :cond_d
    :try_start_d
    const-string v0, "ServerControlledParametersManager.data"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/google/googlenav/clientparam/f;->b(Lac/h;Ljava/lang/String;Z)V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_b

    .line 252
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Lac/h;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    const-class v1, Lcom/google/googlenav/clientparam/f;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 280
    :goto_5
    monitor-exit v1

    return-void

    .line 263
    :cond_7
    :try_start_7
    sget-object v2, Lcom/google/googlenav/clientparam/f;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_22

    .line 264
    :try_start_a
    sget-object v0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    if-eqz v0, :cond_16

    .line 266
    sget-object v0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    .line 269
    :cond_16
    sget-boolean v0, Lcom/google/googlenav/clientparam/f;->n:Z

    if-eqz v0, :cond_25

    .line 272
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/clientparam/f;->m:Z

    .line 279
    :goto_1d
    monitor-exit v2

    goto :goto_5

    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 260
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    .line 274
    :cond_25
    const/4 v0, 0x1

    :try_start_26
    sput-boolean v0, Lcom/google/googlenav/clientparam/f;->n:Z

    .line 275
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/clientparam/f;->m:Z

    .line 276
    new-instance v0, Lcom/google/googlenav/clientparam/g;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/clientparam/g;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lac/h;->c(Lac/g;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_1f

    goto :goto_1d
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/googlenav/clientparam/f;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized c()Lcom/google/googlenav/clientparam/e;
    .registers 2

    .prologue
    .line 192
    const-class v0, Lcom/google/googlenav/clientparam/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/clientparam/f;->f:Lcom/google/googlenav/clientparam/e;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 1
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/googlenav/clientparam/f;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method public static declared-synchronized d()Lcom/google/googlenav/clientparam/k;
    .registers 2

    .prologue
    .line 196
    const-class v0, Lcom/google/googlenav/clientparam/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/clientparam/f;->g:Lcom/google/googlenav/clientparam/k;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 308
    const/4 v0, -0x1

    invoke-static {p0, v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 310
    sget-object v0, Lcom/google/googlenav/clientparam/f;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 369
    :goto_14
    return v0

    .line 315
    :cond_15
    sget-object v0, Lcom/google/googlenav/clientparam/f;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 318
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 319
    packed-switch v3, :pswitch_data_90

    :pswitch_32
    move v0, v1

    .line 364
    goto :goto_14

    .line 321
    :pswitch_34
    sget-object v1, Lcom/google/googlenav/clientparam/f;->d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    if-eqz v1, :cond_3f

    .line 325
    sget-object v1, Lcom/google/googlenav/clientparam/f;->d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->mergeEnabledFeatures(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :goto_3d
    move v0, v2

    .line 329
    goto :goto_14

    .line 327
    :cond_3f
    new-instance v1, Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->d:Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    goto :goto_3d

    .line 332
    :pswitch_47
    new-instance v1, Lcom/google/googlenav/clientparam/j;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/j;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->e:Lcom/google/googlenav/clientparam/j;

    .line 334
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->S()V

    move v0, v2

    .line 335
    goto :goto_14

    .line 338
    :pswitch_57
    new-instance v1, Lcom/google/googlenav/clientparam/e;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/e;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->f:Lcom/google/googlenav/clientparam/e;

    move v0, v2

    .line 339
    goto :goto_14

    .line 342
    :pswitch_60
    new-instance v1, Lcom/google/googlenav/clientparam/k;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->g:Lcom/google/googlenav/clientparam/k;

    move v0, v2

    .line 343
    goto :goto_14

    .line 346
    :pswitch_69
    new-instance v1, Lcom/google/googlenav/clientparam/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/d;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->h:Lcom/google/googlenav/clientparam/d;

    move v0, v2

    .line 347
    goto :goto_14

    .line 350
    :pswitch_72
    new-instance v1, Lcom/google/googlenav/clientparam/a;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->i:Lcom/google/googlenav/clientparam/a;

    move v0, v2

    .line 351
    goto :goto_14

    .line 354
    :pswitch_7b
    new-instance v1, Lcom/google/googlenav/clientparam/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/b;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->j:Lcom/google/googlenav/clientparam/b;

    move v0, v2

    .line 355
    goto :goto_14

    .line 358
    :pswitch_84
    new-instance v1, Lcom/google/googlenav/clientparam/c;

    invoke-direct {v1, v0}, Lcom/google/googlenav/clientparam/c;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v1, Lcom/google/googlenav/clientparam/f;->k:Lcom/google/googlenav/clientparam/c;

    move v0, v2

    .line 359
    goto :goto_14

    :cond_8d
    move v0, v1

    .line 369
    goto :goto_14

    .line 319
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_34
        :pswitch_47
        :pswitch_32
        :pswitch_32
        :pswitch_57
        :pswitch_32
        :pswitch_60
        :pswitch_69
        :pswitch_32
        :pswitch_72
        :pswitch_7b
        :pswitch_84
    .end packed-switch
.end method

.method public static declared-synchronized e()Lcom/google/googlenav/clientparam/d;
    .registers 2

    .prologue
    .line 200
    const-class v0, Lcom/google/googlenav/clientparam/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/clientparam/f;->h:Lcom/google/googlenav/clientparam/d;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 378
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 381
    sget-object v0, Lcom/google/googlenav/clientparam/f;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 401
    :goto_11
    return-void

    .line 385
    :cond_12
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 389
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_2c

    .line 390
    sget-object v3, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 392
    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    if-ne v1, v3, :cond_32

    .line 393
    sget-object v1, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 399
    :cond_2c
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_11

    .line 389
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static f()Lcom/google/googlenav/clientparam/a;
    .registers 1

    .prologue
    .line 204
    sget-object v0, Lcom/google/googlenav/clientparam/f;->i:Lcom/google/googlenav/clientparam/a;

    return-object v0
.end method

.method static g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 473
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 475
    sget-object v0, Lcom/google/googlenav/clientparam/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 478
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 479
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 480
    packed-switch v1, :pswitch_data_90

    .line 506
    :pswitch_3f
    const/4 v0, 0x0

    .line 508
    :goto_40
    if-eqz v0, :cond_12

    .line 509
    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_12

    .line 482
    :pswitch_46
    invoke-static {}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->getDefaultProto()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 483
    goto :goto_40

    .line 485
    :pswitch_4f
    invoke-static {}, Lcom/google/googlenav/clientparam/j;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 486
    goto :goto_40

    .line 488
    :pswitch_58
    invoke-static {}, Lcom/google/googlenav/clientparam/e;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 489
    goto :goto_40

    .line 491
    :pswitch_61
    invoke-static {}, Lcom/google/googlenav/clientparam/k;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 492
    goto :goto_40

    .line 494
    :pswitch_6a
    invoke-static {}, Lcom/google/googlenav/clientparam/d;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 495
    goto :goto_40

    .line 497
    :pswitch_73
    invoke-static {}, Lcom/google/googlenav/clientparam/a;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 498
    goto :goto_40

    .line 500
    :pswitch_7c
    invoke-static {}, Lcom/google/googlenav/clientparam/b;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 501
    goto :goto_40

    .line 503
    :pswitch_85
    invoke-static {}, Lcom/google/googlenav/clientparam/c;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v2

    .line 504
    goto :goto_40

    .line 512
    :cond_8e
    return-object v3

    .line 480
    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_46
        :pswitch_4f
        :pswitch_3f
        :pswitch_3f
        :pswitch_58
        :pswitch_3f
        :pswitch_61
        :pswitch_6a
        :pswitch_3f
        :pswitch_73
        :pswitch_7c
        :pswitch_85
    .end packed-switch
.end method

.method static synthetic h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlenav/clientparam/f;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method static synthetic i()Lcom/google/googlenav/clientparam/i;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlenav/clientparam/f;->p:Lcom/google/googlenav/clientparam/i;

    return-object v0
.end method

.method static synthetic j()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/google/googlenav/clientparam/f;->b:Z

    return v0
.end method

.method static synthetic k()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlenav/clientparam/f;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/google/googlenav/clientparam/f;->m:Z

    return v0
.end method

.method static synthetic m()LY/d;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlenav/clientparam/f;->l:LY/d;

    return-object v0
.end method
