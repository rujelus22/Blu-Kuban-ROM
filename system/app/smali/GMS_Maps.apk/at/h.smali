.class public Lat/h;
.super Ljava/lang/Object;


# static fields
.field private static G:I

.field private static volatile I:Lat/h;


# instance fields
.field private volatile A:I

.field private B:Lcom/google/googlenav/bj;

.field private final C:Laf/a;

.field private volatile D:I

.field private E:Ljava/lang/Throwable;

.field private F:I

.field private H:I

.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Z

.field protected final e:Lat/l;

.field protected f:Lat/n;

.field protected volatile g:Z

.field protected h:I

.field protected i:I

.field protected j:Lak/i;

.field protected k:Lat/f;

.field private l:Ljava/util/List;

.field private final m:Ljava/lang/String;

.field private n:J

.field private final o:Ljava/util/List;

.field private final p:Ljava/util/Random;

.field private q:J

.field private volatile r:Z

.field private volatile s:I

.field private volatile t:J

.field private volatile u:J

.field private volatile v:Z

.field private w:J

.field private x:J

.field private volatile y:I

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lat/h;->G:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    const/4 v6, 0x0

    const-wide/high16 v4, -0x8000

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lat/h;->o:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lat/h;->p:Ljava/util/Random;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lat/h;->q:J

    iput-boolean v2, p0, Lat/h;->r:Z

    iput-wide v4, p0, Lat/h;->t:J

    iput-wide v4, p0, Lat/h;->u:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lat/h;->w:J

    iput-wide v4, p0, Lat/h;->x:J

    iput v2, p0, Lat/h;->y:I

    iput v2, p0, Lat/h;->z:I

    iput v2, p0, Lat/h;->A:I

    iput v3, p0, Lat/h;->D:I

    iput v3, p0, Lat/h;->F:I

    iput v3, p0, Lat/h;->H:I

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_40

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_40
    invoke-static {p1}, Lat/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lat/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lat/h;->c:Ljava/lang/String;

    iput-object p2, p0, Lat/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lat/h;->m:Ljava/lang/String;

    iput-boolean p5, p0, Lat/h;->d:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->m()Lak/i;

    move-result-object v0

    iput-object v0, p0, Lat/h;->j:Lak/i;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lat/h;->C:Laf/a;

    new-instance v0, Lat/f;

    iget-object v1, p0, Lat/h;->C:Laf/a;

    invoke-direct {v0, p0, v1}, Lat/f;-><init>(Lat/h;Laf/a;)V

    iput-object v0, p0, Lat/h;->k:Lat/f;

    iput v2, p0, Lat/h;->h:I

    iput v2, p0, Lat/h;->i:I

    new-instance v0, Lat/l;

    iget-object v1, p0, Lat/h;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lat/l;-><init>(Lat/h;Ljava/lang/String;Lat/i;)V

    iput-object v0, p0, Lat/h;->e:Lat/l;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lat/h;->l:Ljava/util/List;

    new-instance v0, Lat/n;

    invoke-direct {v0, p0, v6}, Lat/n;-><init>(Lat/h;Lat/i;)V

    iput-object v0, p0, Lat/h;->f:Lat/n;

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    iget-object v1, p0, Lat/h;->f:Lat/n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lat/h;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lat/h;->n:J

    return-void
.end method

.method private declared-synchronized A()V
    .registers 3

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    iput-wide v0, p0, Lat/h;->x:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/h;->v:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lat/h;->w:J

    const/4 v0, -0x1

    iput v0, p0, Lat/h;->F:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private B()Lcom/google/googlenav/bj;
    .registers 2

    iget-object v0, p0, Lat/h;->B:Lcom/google/googlenav/bj;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/bj;

    invoke-direct {v0}, Lcom/google/googlenav/bj;-><init>()V

    iput-object v0, p0, Lat/h;->B:Lcom/google/googlenav/bj;

    :cond_b
    iget-object v0, p0, Lat/h;->B:Lcom/google/googlenav/bj;

    return-object v0
.end method

.method static synthetic a(Lat/h;J)J
    .registers 3

    iput-wide p1, p0, Lat/h;->t:J

    return-wide p1
.end method

.method static synthetic a(Lat/h;)Laf/a;
    .registers 2

    iget-object v0, p0, Lat/h;->C:Laf/a;

    return-object v0
.end method

.method public static a()Lat/h;
    .registers 1

    sget-object v0, Lat/h;->I:Lat/h;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lat/h;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lat/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lat/h;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lam/b;->h(II)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lam/b;->b(ILjava/lang/String;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private a(ILjava/lang/Throwable;)V
    .registers 8

    const-wide/16 v3, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p2, :cond_f

    :try_start_6
    invoke-static {}, Laf/d;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    iget-object v1, p0, Lat/h;->j:Lak/i;

    invoke-interface {v1}, Lak/i;->c()V

    iput-object p2, p0, Lat/h;->E:Ljava/lang/Throwable;

    iput p1, p0, Lat/h;->F:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4a

    iget-wide v1, p0, Lat/h;->w:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lat/h;->v:Z

    if-eqz v1, :cond_37

    :cond_27
    invoke-direct {p0}, Lat/h;->A()V

    iput p1, p0, Lat/h;->F:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lat/h;->w:J

    :cond_30
    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_47

    if-eqz v0, :cond_36

    invoke-virtual {p0, p1}, Lat/h;->a(I)V

    :cond_36
    return-void

    :cond_37
    :try_start_37
    iget-wide v1, p0, Lat/h;->w:J

    iget-wide v3, p0, Lat/h;->q:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    iget-wide v1, p0, Lat/h;->w:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lat/h;->w:J

    goto :goto_30

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    iget-boolean v1, p0, Lat/h;->v:Z

    if-nez v1, :cond_74

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lat/h;->w:J

    iget-wide v1, p0, Lat/h;->x:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_63

    iget-object v1, p0, Lat/h;->C:Laf/a;

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lat/h;->x:J

    goto :goto_30

    :cond_63
    iget-wide v1, p0, Lat/h;->x:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lat/h;->C:Laf/a;

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    const/4 v0, 0x1

    goto :goto_30

    :cond_74
    iget-wide v1, p0, Lat/h;->w:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8b

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lat/h;->w:J

    :goto_7e
    iget-wide v1, p0, Lat/h;->w:J

    iget-wide v3, p0, Lat/h;->q:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    iget-wide v1, p0, Lat/h;->q:J

    iput-wide v1, p0, Lat/h;->w:J

    goto :goto_30

    :cond_8b
    iget-wide v1, p0, Lat/h;->w:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lat/h;->w:J
    :try_end_95
    .catchall {:try_start_4a .. :try_end_95} :catchall_47

    goto :goto_7e
.end method

.method private a(IZ)V
    .registers 5

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lam/b;->b(IZ)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private a(I[I)V
    .registers 9

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    array-length v3, p2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_6

    aget v4, p2, v1

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lam/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method

.method static synthetic a(Lat/h;I)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->d(I)V

    return-void
.end method

.method static synthetic a(Lat/h;ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lat/h;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lat/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lat/h;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->d(Z)V

    return-void
.end method

.method static synthetic a(Lat/h;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lat/h;->a(ZZ)V

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/h;->y:I

    if-eqz p1, :cond_f

    iget v0, p0, Lat/h;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/h;->z:I

    :cond_f
    if-eqz p2, :cond_17

    iget v0, p0, Lat/h;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/h;->A:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/util/Vector;)Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->z_()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_15
    return v2

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lat/h;I)I
    .registers 2

    iput p1, p0, Lat/h;->D:I

    return p1
.end method

.method static synthetic b(Lat/h;J)J
    .registers 3

    iput-wide p1, p0, Lat/h;->u:J

    return-wide p1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lat/h;
    .registers 12

    const-class v6, Lat/h;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lat/h;->I:Lat/h;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Lat/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lat/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lat/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lat/h;->I:Lat/h;

    sget-object v0, Lat/h;->I:Lat/h;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_f

    monitor-exit v6

    return-object v0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lat/h;->I:Lat/h;

    return-void
.end method

.method static b(J)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Lak/m;->a()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Lat/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lat/h;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->e(Z)V

    return-void
.end method

.method static synthetic b(Lat/h;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lat/h;->b(ZZ)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lat/h;->y:I

    if-eqz p1, :cond_f

    iget v0, p0, Lat/h;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lat/h;->z:I

    :cond_f
    if-eqz p2, :cond_17

    iget v0, p0, Lat/h;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lat/h;->A:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lat/h;)Z
    .registers 2

    iget-boolean v0, p0, Lat/h;->r:Z

    return v0
.end method

.method protected static b(Ljava/util/Vector;)Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->r()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_15
    return v2

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic c(Lat/h;J)J
    .registers 3

    iput-wide p1, p0, Lat/h;->n:J

    return-wide p1
.end method

.method static synthetic c(Lat/h;)V
    .registers 1

    invoke-direct {p0}, Lat/h;->A()V

    return-void
.end method

.method static synthetic c(Lat/h;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->f(Z)V

    return-void
.end method

.method protected static c(Ljava/util/Vector;)Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->i_()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_15
    return v2

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic d(Lat/h;)Lcom/google/googlenav/bj;
    .registers 2

    invoke-direct {p0}, Lat/h;->B()Lcom/google/googlenav/bj;

    move-result-object v0

    return-object v0
.end method

.method private d(I)V
    .registers 4

    const/16 v0, 0xc8

    if-le p1, v0, :cond_b

    const/4 v0, 0x3

    :goto_5
    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lat/h;->a(II)V

    return-void

    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private d(Lat/g;)V
    .registers 5

    iget-boolean v0, p0, Lat/h;->g:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lat/h;->a(IZLjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lat/h;->f:Lat/n;

    invoke-virtual {v0, p1}, Lat/n;->a(Lat/g;)V

    return-void
.end method

.method static synthetic d(Lat/h;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->g(Z)V

    return-void
.end method

.method private d(Z)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method static synthetic e(Lat/h;)J
    .registers 3

    iget-wide v0, p0, Lat/h;->n:J

    return-wide v0
.end method

.method private e(I)V
    .registers 6

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lam/b;->l(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-ltz v1, :cond_6

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lam/b;->g(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_32
    return-void
.end method

.method private e(Z)V
    .registers 3

    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method static synthetic f(Lat/h;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lat/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_22

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

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

    :cond_22
    return-object p0
.end method

.method private f(Z)V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method static synthetic g(Lat/h;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lat/h;->l:Ljava/util/List;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lat/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method private g(Z)V
    .registers 3

    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method static synthetic h(Lat/h;)I
    .registers 2

    iget v0, p0, Lat/h;->F:I

    return v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Lat/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lat/h;)J
    .registers 3

    iget-wide v0, p0, Lat/h;->w:J

    return-wide v0
.end method

.method static synthetic j(Lat/h;)Ljava/util/Random;
    .registers 2

    iget-object v0, p0, Lat/h;->p:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic y()I
    .registers 2

    sget v0, Lat/h;->G:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lat/h;->G:I

    return v0
.end method

.method private static z()J
    .registers 3

    const-string v0, "SessionID"

    invoke-static {v0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_8
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v0

    :goto_c
    return-wide v0

    :catch_d
    move-exception v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    :cond_1c
    const-wide/16 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected final a(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lat/h;->v:Z

    if-nez v2, :cond_1f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lat/h;->v:Z

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lat/h;->x:J

    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    iget-object v1, p0, Lat/h;->j:Lak/i;

    invoke-interface {v1}, Lak/i;->d()Z

    move-result v1

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lat/h;->a(IZLjava/lang/String;)V

    :cond_1b
    return-void

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

    invoke-virtual {p0}, Lat/h;->i()[Lat/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lat/p;->a(IZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public final a(I[BZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lat/h;->a(I[BZZZ)V

    return-void
.end method

.method public final a(I[BZZZ)V
    .registers 13

    new-instance v0, Lat/s;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lat/s;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public declared-synchronized a(J)V
    .registers 5

    const-wide/16 v0, 0x7d0

    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    const-wide/16 v0, 0x7d0

    :try_start_9
    iput-wide v0, p0, Lat/h;->q:J
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_10

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iput-wide p1, p0, Lat/h;->q:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lam/b;)V
    .registers 3

    invoke-direct {p0}, Lat/h;->B()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bj;->a(Lam/b;)V

    return-void
.end method

.method protected a(Lat/g;)V
    .registers 6

    invoke-virtual {p0}, Lat/h;->i()[Lat/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lat/p;->a(Lat/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public declared-synchronized a(Lat/p;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/h;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/h;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-static {p1}, Lat/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lat/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lat/h;->e:Lat/l;

    iget-object v1, p0, Lat/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lat/l;->a(Lat/l;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method public a([I)V
    .registers 3

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lat/h;->e(I)V

    invoke-direct {p0, v0, p1}, Lat/h;->a(I[I)V

    return-void
.end method

.method public b(I)V
    .registers 3

    iget v0, p0, Lat/h;->H:I

    if-eq v0, p1, :cond_a

    iput p1, p0, Lat/h;->H:I

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lat/h;->a(II)V

    :cond_a
    return-void
.end method

.method protected b(Lat/g;)V
    .registers 6

    invoke-virtual {p0}, Lat/h;->i()[Lat/p;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lat/p;->b(Lat/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public declared-synchronized b(Lat/p;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/h;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lat/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Lat/h;->a(IZ)V

    return-void
.end method

.method public b([I)V
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lat/h;->e(I)V

    invoke-direct {p0, v0, p1}, Lat/h;->a(I[I)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lat/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lat/h;->a(II)V

    return-void
.end method

.method public c(Lat/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lat/h;->d(Lat/g;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lat/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lat/h;->g:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lat/h;->s()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lat/h;->t()V

    goto :goto_7
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lat/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1}, Lat/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lat/h;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lat/h;->j:Lak/i;

    invoke-interface {v0}, Lak/i;->d()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lat/h;->k:Lat/f;

    invoke-virtual {v0, p1}, Lat/f;->a(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->s:I
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

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/h;->s:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lat/h;->s:I

    invoke-virtual {p0}, Lat/h;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    monitor-exit p0

    :goto_e
    return-void

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1b

    iget-object v0, p0, Lat/h;->e:Lat/l;

    invoke-static {v0}, Lat/l;->b(Lat/l;)V

    iget-object v0, p0, Lat/h;->k:Lat/f;

    invoke-virtual {v0}, Lat/f;->a()V

    goto :goto_e

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected h()J
    .registers 5

    invoke-static {}, Lat/h;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    new-instance v2, Lat/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lat/k;-><init>(Lat/h;Lat/i;)V

    invoke-direct {p0, v2}, Lat/h;->d(Lat/g;)V

    :cond_13
    return-wide v0
.end method

.method protected declared-synchronized i()[Lat/p;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/h;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lat/p;

    iget-object v1, p0, Lat/h;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/h;->y:I
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

.method public declared-synchronized k()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lat/h;->v:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lat/h;->r:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lat/h;->y:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lat/h;->j:Lak/i;

    invoke-interface {v0}, Lak/i;->e()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lat/h;->y:I
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

.method public m()J
    .registers 3

    iget-wide v0, p0, Lat/h;->t:J

    return-wide v0
.end method

.method public n()J
    .registers 3

    iget-wide v0, p0, Lat/h;->u:J

    return-wide v0
.end method

.method public o()Z
    .registers 5

    iget-wide v0, p0, Lat/h;->u:J

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

.method public final p()I
    .registers 2

    iget v0, p0, Lat/h;->h:I

    return v0
.end method

.method public final q()I
    .registers 2

    iget v0, p0, Lat/h;->i:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lat/h;->D:I

    return v0
.end method

.method public s()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/h;->r:Z

    return-void
.end method

.method public t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/h;->r:Z

    iget-object v0, p0, Lat/h;->e:Lat/l;

    invoke-static {v0}, Lat/l;->e(Lat/l;)V

    return-void
.end method

.method public u()J
    .registers 3

    iget-wide v0, p0, Lat/h;->n:J

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lat/h;->f:Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lat/h;->f:Lat/n;

    invoke-static {v0}, Lat/n;->a(Lat/n;)Lam/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lat/h;->E:Ljava/lang/Throwable;

    return-object v0
.end method
