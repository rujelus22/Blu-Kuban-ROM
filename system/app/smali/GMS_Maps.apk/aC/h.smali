.class public Lac/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/p;


# static fields
.field private static I:I

.field private static volatile K:Lac/h;


# instance fields
.field private volatile A:I

.field private volatile B:I

.field private volatile C:I

.field private D:Lcom/google/googlenav/bh;

.field private final E:Lcom/google/googlenav/common/a;

.field private volatile F:I

.field private G:Ljava/lang/Throwable;

.field private H:I

.field private J:I

.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Z

.field protected final e:Lac/l;

.field protected f:Lac/o;

.field protected volatile g:Z

.field protected h:I

.field protected i:I

.field protected j:Lcom/google/googlenav/common/io/g;

.field protected k:Lac/f;

.field private volatile l:Z

.field private final m:Ljava/util/List;

.field private n:Lac/p;

.field private final o:Ljava/lang/String;

.field private p:Ljava/lang/Long;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/Random;

.field private s:J

.field private volatile t:Z

.field private volatile u:I

.field private volatile v:J

.field private volatile w:J

.field private volatile x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 363
    const/4 v0, 0x0

    sput v0, Lac/h;->I:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, -0x8000

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lac/h;->q:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lac/h;->r:Ljava/util/Random;

    .line 257
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lac/h;->s:J

    .line 269
    iput-boolean v2, p0, Lac/h;->t:Z

    .line 283
    iput-wide v4, p0, Lac/h;->v:J

    .line 289
    iput-wide v4, p0, Lac/h;->w:J

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lac/h;->y:J

    .line 318
    iput-wide v4, p0, Lac/h;->z:J

    .line 321
    iput v2, p0, Lac/h;->A:I

    .line 327
    iput v2, p0, Lac/h;->B:I

    .line 334
    iput v2, p0, Lac/h;->C:I

    .line 348
    iput v3, p0, Lac/h;->F:I

    .line 360
    iput v3, p0, Lac/h;->H:I

    .line 369
    iput v3, p0, Lac/h;->J:I

    .line 1419
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3f

    .line 1420
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1422
    :cond_3f
    invoke-static {p1}, Lac/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lac/h;->a:Ljava/lang/String;

    .line 1423
    iput-object p3, p0, Lac/h;->c:Ljava/lang/String;

    .line 1424
    iput-object p2, p0, Lac/h;->b:Ljava/lang/String;

    .line 1425
    iput-object p4, p0, Lac/h;->o:Ljava/lang/String;

    .line 1426
    iput-boolean p5, p0, Lac/h;->d:Z

    .line 1427
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->l()Lcom/google/googlenav/common/io/g;

    move-result-object v0

    iput-object v0, p0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    .line 1428
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lac/h;->E:Lcom/google/googlenav/common/a;

    .line 1429
    new-instance v0, Lac/f;

    iget-object v1, p0, Lac/h;->E:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p0, v1}, Lac/f;-><init>(Lac/h;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, Lac/h;->k:Lac/f;

    .line 1430
    iput v2, p0, Lac/h;->h:I

    .line 1431
    iput v2, p0, Lac/h;->i:I

    .line 1432
    new-instance v0, Lac/l;

    iget-object v1, p0, Lac/h;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lac/l;-><init>(Lac/h;Ljava/lang/String;Lac/i;)V

    iput-object v0, p0, Lac/h;->e:Lac/l;

    .line 1433
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lac/h;->m:Ljava/util/List;

    .line 1434
    new-instance v0, Lac/o;

    invoke-direct {v0, p0, v6}, Lac/o;-><init>(Lac/h;Lac/i;)V

    iput-object v0, p0, Lac/h;->f:Lac/o;

    .line 1435
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    iget-object v1, p0, Lac/h;->f:Lac/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    return-void
.end method

.method static synthetic A()I
    .registers 2

    .prologue
    .line 63
    sget v0, Lac/h;->I:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lac/h;->I:I

    return v0
.end method

.method private B()Lac/o;
    .registers 4

    .prologue
    .line 1295
    new-instance v0, Lac/o;

    iget-object v1, p0, Lac/h;->f:Lac/o;

    invoke-static {v1}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lac/o;-><init>(Lac/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lac/i;)V

    .line 1296
    iget-object v1, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    return-object v0
.end method

.method private static C()J
    .registers 3

    .prologue
    .line 1545
    const-string v0, "SessionID"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 1546
    if-eqz v0, :cond_1c

    .line 1549
    :try_start_8
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 1557
    :goto_c
    return-wide v0

    .line 1550
    :catch_d
    move-exception v0

    .line 1553
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 1557
    :cond_1c
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized D()V
    .registers 3

    .prologue
    .line 1818
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    iput-wide v0, p0, Lac/h;->z:J

    .line 1819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/h;->x:Z

    .line 1820
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lac/h;->y:J

    .line 1821
    const/4 v0, -0x1

    iput v0, p0, Lac/h;->H:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 1822
    monitor-exit p0

    return-void

    .line 1818
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E()Lcom/google/googlenav/bh;
    .registers 2

    .prologue
    .line 2177
    iget-object v0, p0, Lac/h;->D:Lcom/google/googlenav/bh;

    if-nez v0, :cond_b

    .line 2178
    new-instance v0, Lcom/google/googlenav/bh;

    invoke-direct {v0}, Lcom/google/googlenav/bh;-><init>()V

    iput-object v0, p0, Lac/h;->D:Lcom/google/googlenav/bh;

    .line 2180
    :cond_b
    iget-object v0, p0, Lac/h;->D:Lcom/google/googlenav/bh;

    return-object v0
.end method

.method static synthetic a(Lac/h;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lac/h;->v:J

    return-wide p1
.end method

.method public static a()Lac/h;
    .registers 1

    .prologue
    .line 1370
    sget-object v0, Lac/h;->K:Lac/h;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lac/h;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lac/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lac/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lac/h;)Lac/o;
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lac/h;->B()Lac/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lac/h;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lac/h;->p:Ljava/lang/Long;

    return-object p1
.end method

.method private a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1458
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 1459
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_6

    .line 1461
    :cond_1a
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1452
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 1453
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_6

    .line 1455
    :cond_1a
    return-void
.end method

.method private a(ILjava/lang/Throwable;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x7d0

    .line 1833
    const/4 v0, 0x0

    .line 1834
    monitor-enter p0

    .line 1837
    if-eqz p2, :cond_f

    :try_start_6
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1838
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1844
    :cond_f
    iget-object v1, p0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v1}, Lcom/google/googlenav/common/io/g;->c()V

    .line 1845
    iput-object p2, p0, Lac/h;->G:Ljava/lang/Throwable;

    .line 1846
    iput p1, p0, Lac/h;->H:I

    .line 1848
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4a

    .line 1850
    iget-wide v1, p0, Lac/h;->y:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lac/h;->x:Z

    if-eqz v1, :cond_37

    .line 1851
    :cond_27
    invoke-direct {p0}, Lac/h;->D()V

    .line 1852
    iput p1, p0, Lac/h;->H:I

    .line 1853
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lac/h;->y:J

    .line 1882
    :cond_30
    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_47

    .line 1884
    if-eqz v0, :cond_36

    .line 1885
    invoke-virtual {p0, p1}, Lac/h;->a(I)V

    .line 1887
    :cond_36
    return-void

    .line 1854
    :cond_37
    :try_start_37
    iget-wide v1, p0, Lac/h;->y:J

    iget-wide v3, p0, Lac/h;->s:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 1855
    iget-wide v1, p0, Lac/h;->y:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lac/h;->y:J

    goto :goto_30

    .line 1882
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_47

    throw v0

    .line 1858
    :cond_4a
    :try_start_4a
    iget-boolean v1, p0, Lac/h;->x:Z

    if-nez v1, :cond_74

    .line 1859
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lac/h;->y:J

    .line 1861
    iget-wide v1, p0, Lac/h;->z:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_63

    .line 1862
    iget-object v1, p0, Lac/h;->E:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lac/h;->z:J

    goto :goto_30

    .line 1863
    :cond_63
    iget-wide v1, p0, Lac/h;->z:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lac/h;->E:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 1867
    const/4 v0, 0x1

    goto :goto_30

    .line 1870
    :cond_74
    iget-wide v1, p0, Lac/h;->y:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8b

    .line 1871
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lac/h;->y:J

    .line 1878
    :goto_7e
    iget-wide v1, p0, Lac/h;->y:J

    iget-wide v3, p0, Lac/h;->s:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    .line 1879
    iget-wide v1, p0, Lac/h;->s:J

    iput-wide v1, p0, Lac/h;->y:J

    goto :goto_30

    .line 1874
    :cond_8b
    iget-wide v1, p0, Lac/h;->y:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lac/h;->y:J
    :try_end_95
    .catchall {:try_start_4a .. :try_end_95} :catchall_47

    goto :goto_7e
.end method

.method private a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1446
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 1447
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_6

    .line 1449
    :cond_1a
    return-void
.end method

.method private a(I[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 2141
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 2142
    array-length v3, p2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_6

    aget v4, p2, v1

    .line 2143
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 2142
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2147
    :cond_22
    return-void
.end method

.method static synthetic a(Lac/h;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->d(I)V

    return-void
.end method

.method static synthetic a(Lac/h;ILjava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lac/h;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lac/h;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lac/h;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->c(Z)V

    return-void
.end method

.method static synthetic a(Lac/h;ZZ)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lac/h;->a(ZZ)V

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1308
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lac/h;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac/h;->A:I

    .line 1309
    if-eqz p1, :cond_f

    .line 1310
    iget v0, p0, Lac/h;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac/h;->B:I

    .line 1312
    :cond_f
    if-eqz p2, :cond_17

    .line 1313
    iget v0, p0, Lac/h;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac/h;->C:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1315
    :cond_17
    monitor-exit p0

    return-void

    .line 1308
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/util/Vector;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1906
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 1907
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1908
    invoke-interface {v0}, Lac/g;->z_()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1909
    const/4 v2, 0x1

    .line 1913
    :cond_15
    return v2

    .line 1906
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lac/h;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lac/h;->F:I

    return p1
.end method

.method static synthetic b(Lac/h;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lac/h;->w:J

    return-wide p1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lac/h;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    const-class v6, Lac/h;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lac/h;->K:Lac/h;

    if-eqz v0, :cond_12

    .line 1342
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1341
    :catchall_f
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1345
    :cond_12
    :try_start_12
    invoke-static {p0}, Lac/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1346
    new-instance v0, Lac/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lac/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lac/h;->K:Lac/h;

    .line 1348
    sget-object v0, Lac/h;->K:Lac/h;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_f

    monitor-exit v6

    return-object v0
.end method

.method public static b()Lac/p;
    .registers 1

    .prologue
    .line 1387
    sget-object v0, Lac/h;->K:Lac/h;

    iget-object v0, v0, Lac/h;->n:Lac/p;

    return-object v0
.end method

.method static synthetic b(Lac/h;)Lcom/google/googlenav/common/a;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lac/h;->E:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method static b(J)V
    .registers 5
    .parameter

    .prologue
    .line 1945
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1946
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1947
    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1948
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 1949
    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 1953
    invoke-interface {v1}, Lcom/google/googlenav/common/io/j;->a()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1958
    return-void

    .line 1954
    :catch_22
    move-exception v0

    .line 1956
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Lac/h;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->d(Z)V

    return-void
.end method

.method static synthetic b(Lac/h;ZZ)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lac/h;->b(ZZ)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1325
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lac/h;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lac/h;->A:I

    .line 1326
    if-eqz p1, :cond_f

    .line 1327
    iget v0, p0, Lac/h;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lac/h;->B:I

    .line 1329
    :cond_f
    if-eqz p2, :cond_17

    .line 1330
    iget v0, p0, Lac/h;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lac/h;->C:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1332
    :cond_17
    monitor-exit p0

    return-void

    .line 1325
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static b(Ljava/util/Vector;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1918
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 1919
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1920
    invoke-interface {v0}, Lac/g;->q()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1921
    const/4 v2, 0x1

    .line 1924
    :cond_15
    return v2

    .line 1918
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 1394
    const/4 v0, 0x0

    sput-object v0, Lac/h;->K:Lac/h;

    .line 1395
    return-void
.end method

.method static synthetic c(Lac/h;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->e(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2010
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lac/h;->a(IZ)V

    .line 2011
    return-void
.end method

.method static synthetic c(Lac/h;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lac/h;->t:Z

    return v0
.end method

.method protected static c(Ljava/util/Vector;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1929
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 1930
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1931
    invoke-interface {v0}, Lac/g;->k_()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1932
    const/4 v2, 0x1

    .line 1936
    :cond_15
    return v2

    .line 1929
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private d(I)V
    .registers 4
    .parameter

    .prologue
    .line 2110
    const/16 v0, 0xc8

    if-le p1, v0, :cond_b

    const/4 v0, 0x3

    .line 2113
    :goto_5
    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lac/h;->a(II)V

    .line 2114
    return-void

    .line 2110
    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic d(Lac/h;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lac/h;->D()V

    return-void
.end method

.method static synthetic d(Lac/h;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lac/h;->f(Z)V

    return-void
.end method

.method private d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2071
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lac/h;->a(IZ)V

    .line 2072
    return-void
.end method

.method private e(I)V
    .registers 6
    .parameter

    .prologue
    .line 2124
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 2125
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2126
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-ltz v1, :cond_6

    .line 2127
    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 2126
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 2131
    :cond_32
    return-void
.end method

.method private e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2092
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lac/h;->a(IZ)V

    .line 2093
    return-void
.end method

.method static synthetic e(Lac/h;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lac/h;->l:Z

    return v0
.end method

.method static synthetic f(Lac/h;)Lcom/google/googlenav/bh;
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lac/h;->E()Lcom/google/googlenav/bh;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1359
    if-eqz p0, :cond_22

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1363
    :cond_22
    return-object p0
.end method

.method private f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2097
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Lac/h;->a(IZ)V

    .line 2098
    return-void
.end method

.method static synthetic g(Lac/h;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lac/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2067
    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Lac/h;->a(ILjava/lang/String;)V

    .line 2068
    return-void
.end method

.method static synthetic h(Lac/h;)Ljava/lang/Long;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lac/h;->p:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic i(Lac/h;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lac/h;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lac/h;)I
    .registers 2
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lac/h;->H:I

    return v0
.end method

.method static synthetic k(Lac/h;)J
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lac/h;->y:J

    return-wide v0
.end method

.method static synthetic l(Lac/h;)Ljava/util/Random;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lac/h;->r:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic z()Lac/h;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lac/h;->K:Lac/h;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1662
    const/4 v1, 0x0

    .line 1663
    monitor-enter p0

    .line 1664
    :try_start_3
    iget-boolean v2, p0, Lac/h;->x:Z

    if-nez v2, :cond_1f

    .line 1666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lac/h;->x:Z

    .line 1667
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lac/h;->z:J

    .line 1670
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    .line 1672
    iget-object v1, p0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v1}, Lcom/google/googlenav/common/io/g;->d()Z

    move-result v1

    .line 1674
    if-eqz v0, :cond_1b

    .line 1675
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lac/h;->a(IZLjava/lang/String;)V

    .line 1677
    :cond_1b
    return-void

    .line 1670
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    move v0, v1

    goto :goto_e
.end method

.method protected a(IZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1614
    invoke-virtual {p0}, Lac/h;->j()[Lac/q;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1615
    invoke-interface {v3, p1, p2, p3}, Lac/q;->a(IZLjava/lang/String;)V

    .line 1614
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1617
    :cond_10
    return-void
.end method

.method public a(I[BZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1892
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1893
    invoke-virtual/range {v0 .. v5}, Lac/h;->a(I[BZZZ)V

    .line 1894
    return-void
.end method

.method public a(I[BZZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1899
    iget-object v0, p0, Lac/h;->f:Lac/o;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lac/o;->a(I[BZZZ)V

    .line 1901
    return-void
.end method

.method public declared-synchronized a(J)V
    .registers 5
    .parameter

    .prologue
    const-wide/16 v0, 0x7d0

    .line 1498
    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    .line 1499
    const-wide/16 v0, 0x7d0

    :try_start_9
    iput-wide v0, p0, Lac/h;->s:J
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_10

    .line 1503
    :goto_b
    monitor-exit p0

    return-void

    .line 1501
    :cond_d
    :try_start_d
    iput-wide p1, p0, Lac/h;->s:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    .line 1498
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lac/g;)V
    .registers 6
    .parameter

    .prologue
    .line 1602
    invoke-virtual {p0}, Lac/h;->j()[Lac/q;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1603
    invoke-interface {v3, p1}, Lac/q;->a(Lac/g;)V

    .line 1602
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1605
    :cond_10
    return-void
.end method

.method public a(Lac/p;)V
    .registers 2
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lac/h;->n:Lac/p;

    .line 1379
    return-void
.end method

.method public declared-synchronized a(Lac/q;)V
    .registers 3
    .parameter

    .prologue
    .line 1574
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1575
    iget-object v0, p0, Lac/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1577
    :cond_e
    monitor-exit p0

    return-void

    .line 1574
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 2191
    invoke-direct {p0}, Lac/h;->E()Lcom/google/googlenav/bh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bh;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2192
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1490
    if-eqz p1, :cond_f

    .line 1491
    invoke-static {p1}, Lac/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lac/h;->a:Ljava/lang/String;

    .line 1492
    iget-object v0, p0, Lac/h;->e:Lac/l;

    iget-object v1, p0, Lac/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lac/l;->a(Lac/l;Ljava/lang/String;)Ljava/lang/String;

    .line 1494
    :cond_f
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2076
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lac/h;->a(IZ)V

    .line 2077
    return-void
.end method

.method public a([I)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x17

    .line 2154
    invoke-direct {p0, v0}, Lac/h;->e(I)V

    .line 2155
    invoke-direct {p0, v0, p1}, Lac/h;->a(I[I)V

    .line 2156
    return-void
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 2084
    iget v0, p0, Lac/h;->J:I

    if-eq v0, p1, :cond_a

    .line 2085
    iput p1, p0, Lac/h;->J:I

    .line 2086
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lac/h;->a(II)V

    .line 2088
    :cond_a
    return-void
.end method

.method protected b(Lac/g;)V
    .registers 6
    .parameter

    .prologue
    .line 1626
    invoke-virtual {p0}, Lac/h;->j()[Lac/q;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1627
    invoke-interface {v3, p1}, Lac/q;->b(Lac/g;)V

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1629
    :cond_10
    return-void
.end method

.method public declared-synchronized b(Lac/q;)V
    .registers 3
    .parameter

    .prologue
    .line 1581
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/h;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1582
    monitor-exit p0

    return-void

    .line 1581
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2002
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lac/h;->a(ILjava/lang/String;)V

    .line 2003
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2229
    iput-boolean p1, p0, Lac/h;->g:Z

    .line 2230
    if-eqz p1, :cond_8

    .line 2231
    invoke-virtual {p0}, Lac/h;->u()V

    .line 2235
    :goto_7
    return-void

    .line 2233
    :cond_8
    invoke-virtual {p0}, Lac/h;->v()V

    goto :goto_7
.end method

.method public b([I)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x1a

    .line 2163
    invoke-direct {p0, v0}, Lac/h;->e(I)V

    .line 2164
    invoke-direct {p0, v0, p1}, Lac/h;->a(I[I)V

    .line 2165
    return-void
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 2169
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lac/h;->a(II)V

    .line 2170
    return-void
.end method

.method public c(Lac/g;)V
    .registers 3
    .parameter

    .prologue
    .line 1687
    iget-object v0, p0, Lac/h;->f:Lac/o;

    invoke-virtual {v0, p1}, Lac/o;->c(Lac/g;)V

    .line 1688
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2018
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lac/h;->a(ILjava/lang/String;)V

    .line 2019
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1477
    iget-object v0, p0, Lac/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2036
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lac/h;->a(ILjava/lang/String;)V

    .line 2037
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1482
    iget-object v0, p0, Lac/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2252
    iget-boolean v0, p0, Lac/h;->t:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/g;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2257
    :cond_c
    :goto_c
    return-void

    .line 2256
    :cond_d
    iget-object v0, p0, Lac/h;->k:Lac/f;

    invoke-virtual {v0, p1}, Lac/f;->a(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public declared-synchronized f()Z
    .registers 2

    .prologue
    .line 1507
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lac/h;->u:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 1516
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lac/h;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lac/h;->u:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1517
    monitor-exit p0

    return-void

    .line 1516
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_1
    iget v0, p0, Lac/h;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lac/h;->u:I

    .line 1530
    invoke-virtual {p0}, Lac/h;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1531
    monitor-exit p0

    .line 1537
    :goto_e
    return-void

    .line 1533
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1b

    .line 1535
    iget-object v0, p0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->c(Lac/l;)V

    .line 1536
    iget-object v0, p0, Lac/h;->k:Lac/f;

    invoke-virtual {v0}, Lac/f;->a()V

    goto :goto_e

    .line 1533
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected i()J
    .registers 6

    .prologue
    .line 1565
    invoke-static {}, Lac/h;->C()J

    move-result-wide v0

    .line 1566
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 1567
    iget-object v2, p0, Lac/h;->f:Lac/o;

    new-instance v3, Lac/k;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lac/k;-><init>(Lac/h;Lac/i;)V

    invoke-virtual {v2, v3}, Lac/o;->c(Lac/g;)V

    .line 1569
    :cond_15
    return-wide v0
.end method

.method protected declared-synchronized j()[Lac/q;
    .registers 3

    .prologue
    .line 1589
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/h;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lac/q;

    .line 1590
    iget-object v1, p0, Lac/h;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1591
    monitor-exit p0

    return-object v0

    .line 1589
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected k()V
    .registers 5

    .prologue
    .line 1638
    invoke-virtual {p0}, Lac/h;->j()[Lac/q;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1639
    invoke-interface {v3}, Lac/q;->a()V

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1641
    :cond_10
    return-void
.end method

.method public declared-synchronized l()Z
    .registers 2

    .prologue
    .line 1694
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lac/h;->A:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Z
    .registers 2

    .prologue
    .line 1720
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lac/h;->x:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Z
    .registers 3

    .prologue
    .line 1728
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lac/h;->t:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lac/h;->A:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/g;->e()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lac/h;->A:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-nez v0, :cond_1a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()J
    .registers 3

    .prologue
    .line 1739
    iget-wide v0, p0, Lac/h;->v:J

    return-wide v0
.end method

.method public p()J
    .registers 3

    .prologue
    .line 1744
    iget-wide v0, p0, Lac/h;->w:J

    return-wide v0
.end method

.method public q()Z
    .registers 5

    .prologue
    .line 1751
    iget-wide v0, p0, Lac/h;->w:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final r()I
    .registers 2

    .prologue
    .line 1758
    iget v0, p0, Lac/h;->h:I

    return v0
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 1766
    iget v0, p0, Lac/h;->i:I

    return v0
.end method

.method public t()I
    .registers 2

    .prologue
    .line 1800
    iget v0, p0, Lac/h;->F:I

    return v0
.end method

.method public u()V
    .registers 2

    .prologue
    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lac/h;->t:Z

    .line 1805
    return-void
.end method

.method public v()V
    .registers 2

    .prologue
    .line 1808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/h;->t:Z

    .line 1809
    iget-object v0, p0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->e(Lac/l;)V

    .line 1810
    return-void
.end method

.method public declared-synchronized w()J
    .registers 3

    .prologue
    .line 1962
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/h;->p:Ljava/lang/Long;

    if-nez v0, :cond_f

    .line 1963
    invoke-virtual {p0}, Lac/h;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lac/h;->p:Ljava/lang/Long;

    .line 1966
    :cond_f
    iget-object v0, p0, Lac/h;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 1962
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2062
    iget-object v0, p0, Lac/h;->f:Lac/o;

    invoke-static {v0}, Lac/o;->b(Lac/o;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 2270
    iget-object v0, p0, Lac/h;->G:Ljava/lang/Throwable;

    return-object v0
.end method
