.class public LaJ/I;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static b:I

.field private static final c:[B

.field private static o:Lah/f;

.field private static p:Lah/f;

.field private static q:Lah/f;


# instance fields
.field private d:[B

.field private e:Lah/f;

.field private f:Z

.field private g:Lah/f;

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private final l:LaJ/P;

.field private final m:Z

.field private n:Z

.field private r:LaJ/n;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LaJ/I;->a:Ljava/util/Map;

    const/4 v0, 0x1

    sput v0, LaJ/I;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, LaJ/I;->c:[B

    return-void

    nop

    :array_18
    .array-data 0x1
        0x43t
        0x4at
        0x50t
        0x47t
    .end array-data
.end method

.method public constructor <init>(LaJ/P;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LaJ/I;-><init>(LaJ/P;Lah/f;Z)V

    return-void
.end method

.method public constructor <init>(LaJ/P;Lah/f;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LaJ/I;-><init>(LaJ/P;Lah/f;Z)V

    return-void
.end method

.method public constructor <init>(LaJ/P;Lah/f;Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LaJ/I;->u:I

    iput-boolean v1, p0, LaJ/I;->w:Z

    iput-boolean v1, p0, LaJ/I;->x:Z

    iput-boolean v1, p0, LaJ/I;->y:Z

    invoke-static {p2}, LaJ/I;->a(Lah/f;)V

    iput-object p1, p0, LaJ/I;->l:LaJ/P;

    iput-boolean p3, p0, LaJ/I;->m:Z

    invoke-direct {p0, p2, v1}, LaJ/I;->a(Lah/f;Z)V

    if-eqz p2, :cond_23

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, LaJ/I;->f:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LaJ/I;->h:J

    iput v1, p0, LaJ/I;->v:I

    return-void

    :cond_23
    move v0, v1

    goto :goto_1a
.end method

.method public constructor <init>(LaJ/P;[B)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LaJ/I;->u:I

    iput-boolean v2, p0, LaJ/I;->w:Z

    iput-boolean v2, p0, LaJ/I;->x:Z

    iput-boolean v2, p0, LaJ/I;->y:Z

    iput-object p1, p0, LaJ/I;->l:LaJ/P;

    iput-boolean v2, p0, LaJ/I;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaJ/I;->h:J

    iput-boolean v2, p0, LaJ/I;->f:Z

    invoke-virtual {p0, p2}, LaJ/I;->a([B)V

    return-void
.end method

.method private static A()Lah/f;
    .registers 3

    const/16 v2, 0x100

    sget-object v0, LaJ/I;->q:Lah/f;

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f020266

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v0

    sput-object v0, LaJ/I;->q:Lah/f;

    sget-object v0, LaJ/I;->q:Lah/f;

    if-nez v0, :cond_25

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lah/h;->a(II)Lah/f;

    move-result-object v0

    sput-object v0, LaJ/I;->q:Lah/f;

    :cond_25
    sget-object v0, LaJ/I;->q:Lah/f;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)LaJ/I;
    .registers 4

    invoke-static {p0}, LaJ/P;->a(Ljava/io/DataInput;)LaJ/P;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    new-instance v2, LaJ/I;

    invoke-direct {v2, v0, v1}, LaJ/I;-><init>(LaJ/P;[B)V

    return-object v2
.end method

.method private a(Lam/b;J)LaJ/n;
    .registers 10

    const/4 v5, 0x3

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/layer/j;

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1c

    new-instance v3, Lcom/google/googlenav/layer/j;

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/j;-><init>(Lam/b;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    new-instance v0, LaJ/n;

    iget-object v1, p0, LaJ/I;->l:LaJ/P;

    invoke-direct {v0, v1}, LaJ/n;-><init>(LaJ/P;)V

    invoke-virtual {v0, v2, p2, p3}, LaJ/n;->a([Lcom/google/googlenav/layer/j;J)V

    goto :goto_4
.end method

.method private static a(Lah/f;)V
    .registers 4

    const/16 v1, 0x100

    if-eqz p0, :cond_3b

    invoke-interface {p0}, Lah/f;->b()I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-interface {p0}, Lah/f;->a()I

    move-result v0

    if-eq v0, v1, :cond_3b

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong image size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lah/f;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lah/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-void
.end method

.method private declared-synchronized a(Lah/f;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/I;->e:Lah/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, LaJ/I;->e:Lah/f;

    invoke-interface {v0}, Lah/f;->f()V

    iget-boolean v0, p0, LaJ/I;->x:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, LaJ/I;->e:Lah/f;

    invoke-interface {v0}, Lah/f;->d()V

    :cond_13
    if-nez p1, :cond_1c

    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, LaJ/I;->e:Lah/f;

    iput-boolean p2, p0, LaJ/I;->x:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Lah/f;->e()Lah/f;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result-object v0

    goto :goto_16

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b([B)Lah/f;
    .registers 7

    const/16 v5, 0x100

    const/4 v4, 0x0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    invoke-static {}, LaJ/I;->A()Lah/f;

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, LaJ/I;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/f;

    if-nez v0, :cond_b

    :cond_37
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    invoke-interface {v0, v5, v5, v4}, Lah/h;->a(IIZ)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->c()Lah/e;

    move-result-object v3

    invoke-interface {v3, v1}, Lah/e;->a(I)V

    invoke-interface {v3, v4, v4, v5, v5}, Lah/e;->b(IIII)V

    sget-object v1, LaJ/I;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static b(I)V
    .registers 1

    sput p0, LaJ/I;->b:I

    return-void
.end method

.method private declared-synchronized b(Lah/f;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/I;->g:Lah/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, LaJ/I;->g:Lah/f;

    invoke-interface {v0}, Lah/f;->f()V

    iget-boolean v0, p0, LaJ/I;->y:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, LaJ/I;->g:Lah/f;

    invoke-interface {v0}, Lah/f;->d()V

    :cond_13
    if-nez p1, :cond_1c

    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, LaJ/I;->g:Lah/f;

    iput-boolean p2, p0, LaJ/I;->y:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Lah/f;->e()Lah/f;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result-object v0

    goto :goto_16

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(J)Lah/f;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_37

    :try_start_8
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, LaJ/I;->h:J

    :goto_16
    iget-object v1, p0, LaJ/I;->e:Lah/f;

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, LaJ/I;->f:Z

    if-eqz v1, :cond_44

    :cond_1e
    invoke-virtual {p0}, LaJ/I;->e()Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_3a

    move-result v1

    if-eqz v1, :cond_44

    :try_start_24
    invoke-virtual {p0, p1, p2}, LaJ/I;->b(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_27} :catch_3d

    move v1, v0

    :goto_28
    :try_start_28
    iget-object v0, p0, LaJ/I;->e:Lah/f;

    if-nez v0, :cond_41

    invoke-direct {p0}, LaJ/I;->y()Lah/f;

    move-result-object v0

    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_3a

    if-eqz v1, :cond_36

    invoke-static {}, Laf/l;->b()V

    :cond_36
    return-object v0

    :cond_37
    :try_start_37
    iput-wide p1, p0, LaJ/I;->h:J

    goto :goto_16

    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3a

    throw v0

    :catch_3d
    move-exception v0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_28

    :cond_41
    :try_start_41
    iget-object v0, p0, LaJ/I;->e:Lah/f;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3a

    goto :goto_30

    :cond_44
    move v1, v0

    goto :goto_28
.end method

.method private static c([B)Lah/f;
    .registers 5

    :try_start_0
    invoke-static {p0}, Laj/c;->a([B)[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->o()Lah/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lah/h;->a([BII)Lah/f;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "MAP"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, LaJ/I;->A()Lah/f;

    move-result-object v0

    goto :goto_12
.end method

.method public static w()I
    .registers 1

    sget v0, LaJ/I;->b:I

    return v0
.end method

.method private y()Lah/f;
    .registers 2

    sget-object v0, LaJ/I;->p:Lah/f;

    if-eqz v0, :cond_8

    sget-object v0, LaJ/I;->o:Lah/f;

    if-nez v0, :cond_b

    :cond_8
    invoke-static {}, LaJ/I;->z()V

    :cond_b
    iget-boolean v0, p0, LaJ/I;->m:Z

    if-eqz v0, :cond_12

    sget-object v0, LaJ/I;->p:Lah/f;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, LaJ/I;->o:Lah/f;

    goto :goto_11
.end method

.method private static z()V
    .registers 3

    const/16 v2, 0x100

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v0

    sput-object v0, LaJ/I;->o:Lah/f;

    sget-object v0, LaJ/I;->o:Lah/f;

    if-nez v0, :cond_22

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lah/h;->a(IIZ)Lah/f;

    move-result-object v0

    sput-object v0, LaJ/I;->o:Lah/f;

    :cond_22
    sget-object v0, LaJ/I;->o:Lah/f;

    sput-object v0, LaJ/I;->p:Lah/f;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(IIIIII)Lah/f;
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LaJ/I;->f()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    const-wide/high16 v0, -0x8000

    :try_start_c
    invoke-direct {p0, v0, v1}, LaJ/I;->c(J)Lah/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lah/f;->a(IIIIII)Lah/f;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    move-result-object v0

    goto :goto_8

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaJ/I;->f:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/I;->f:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->a(Lah/f;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_d

    :try_start_3
    iget-object v0, p0, LaJ/I;->e:Lah/f;

    iget-boolean v1, p0, LaJ/I;->x:Z

    invoke-direct {p0, v0, v1}, LaJ/I;->b(Lah/f;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/I;->x:Z

    :cond_d
    iput p1, p0, LaJ/I;->v:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, LaJ/I;->h:J

    return-void
.end method

.method public a(JJ)V
    .registers 11

    const-wide/16 v4, 0x0

    iget v0, p0, LaJ/I;->k:I

    if-nez v0, :cond_18

    iget-wide v0, p0, LaJ/I;->j:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_18

    iget-wide v0, p0, LaJ/I;->j:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    iput-wide v4, p0, LaJ/I;->i:J

    :cond_18
    iget-wide v0, p0, LaJ/I;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    iput-wide p1, p0, LaJ/I;->i:J

    :cond_20
    iput-wide p1, p0, LaJ/I;->j:J

    invoke-virtual {p0}, LaJ/I;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, LaJ/I;->f:Z

    if-nez v0, :cond_39

    iget v0, p0, LaJ/I;->k:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_39

    iget v0, p0, LaJ/I;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaJ/I;->k:I

    :cond_39
    return-void
.end method

.method public declared-synchronized a(Lah/f;IZ)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LaJ/I;->a(Lah/f;)V

    invoke-direct {p0, p1, p3}, LaJ/I;->a(Lah/f;Z)V

    invoke-virtual {p0, p2}, LaJ/I;->a(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, LaJ/I;->l:LaJ/P;

    invoke-virtual {v0, p1}, LaJ/P;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, LaJ/I;->d:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, LaJ/I;->d:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaJ/I;->w:Z

    return-void
.end method

.method public declared-synchronized a([B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LaJ/I;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tile already complete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, LaJ/I;->v:I

    iput-object p1, p0, LaJ/I;->d:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->b(Lah/f;Z)V

    iget-boolean v0, p0, LaJ/I;->f:Z

    if-nez v0, :cond_25

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->a(Lah/f;Z)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_f

    :cond_25
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lah/e;JIIZ)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LaJ/I;->f()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p6, :cond_13

    :cond_9
    invoke-direct {p0, p2, p3}, LaJ/I;->c(J)Lah/f;

    move-result-object v0

    invoke-interface {p1, v0, p4, p5}, Lah/e;->a(Lah/f;II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(J)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, LaJ/I;->e:Lah/f;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, LaJ/I;->f:Z

    if-eqz v2, :cond_4a

    :cond_b
    new-instance v2, LaJ/J;

    invoke-direct {v2}, LaJ/J;-><init>()V

    iget-object v3, p0, LaJ/I;->d:[B

    invoke-virtual {v2, v3}, LaJ/J;->a([B)[B

    move-result-object v3

    invoke-virtual {v2}, LaJ/J;->a()Lam/b;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, LaJ/I;->a(Lam/b;J)LaJ/n;

    move-result-object v4

    iput-object v4, p0, LaJ/I;->r:LaJ/n;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->am()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v2}, LaJ/J;->b()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LaJ/I;->s:[Ljava/lang/String;

    invoke-virtual {v2}, LaJ/J;->c()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LaJ/I;->t:[Ljava/lang/String;

    invoke-virtual {v2}, LaJ/J;->d()I

    move-result v2

    iput v2, p0, LaJ/I;->u:I

    :cond_3c
    array-length v2, v3

    if-nez v2, :cond_4c

    invoke-static {}, LaJ/I;->A()Lah/f;

    move-result-object v0

    :goto_43
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LaJ/I;->a(Lah/f;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/I;->f:Z
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_7d

    :cond_4a
    monitor-exit p0

    return-void

    :cond_4c
    :try_start_4c
    array-length v2, v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_55

    invoke-static {v3}, LaJ/I;->b([B)Lah/f;

    move-result-object v0

    goto :goto_43

    :cond_55
    const/4 v2, 0x0

    sget-object v4, LaJ/I;->c:[B

    invoke-static {v3, v2, v4}, LaJ/J;->a([BI[B)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {v3}, LaJ/I;->c([B)Lah/f;

    move-result-object v2

    sget-object v3, LaJ/I;->q:Lah/f;

    if-eq v2, v3, :cond_69

    :goto_66
    move v1, v0

    move-object v0, v2

    goto :goto_43

    :cond_69
    move v0, v1

    goto :goto_66

    :cond_6b
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->o()Lah/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, v3

    invoke-interface {v1, v3, v2, v4}, Lah/h;->a([BII)Lah/f;
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_7d

    move-result-object v1

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_43

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, LaJ/I;->d:[B

    return-object v0
.end method

.method public c()LaJ/P;
    .registers 2

    iget-object v0, p0, LaJ/I;->l:LaJ/P;

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LaJ/I;->e()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, LaJ/I;->v()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_d
    iget-object v0, p0, LaJ/I;->e:Lah/f;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->a(Lah/f;Z)V

    :cond_16
    iget-object v0, p0, LaJ/I;->g:Lah/f;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->b(Lah/f;Z)V

    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, LaJ/I;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/I;->r:LaJ/n;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, LaJ/I;->d:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, LaJ/I;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, LaJ/I;

    iget-object v2, p0, LaJ/I;->l:LaJ/P;

    if-nez v2, :cond_17

    iget-object v2, p1, LaJ/I;->l:LaJ/P;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v0, p0, LaJ/I;->l:LaJ/P;

    iget-object v1, p1, LaJ/I;->l:LaJ/P;

    invoke-virtual {v0, v1}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, LaJ/I;->e:Lah/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, LaJ/I;->h:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, LaJ/I;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, LaJ/I;->l:LaJ/P;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaJ/I;->l:LaJ/P;

    invoke-virtual {v0}, LaJ/P;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public i()I
    .registers 2

    iget v0, p0, LaJ/I;->k:I

    return v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, LaJ/I;->d:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, LaJ/I;->d:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public declared-synchronized k()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/I;->g:Lah/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaJ/I;->a(Lah/f;Z)V

    const/4 v0, 0x0

    iput v0, p0, LaJ/I;->v:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, LaJ/I;->v:I

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, LaJ/I;->f:Z

    return v0
.end method

.method public declared-synchronized n()Lah/f;
    .registers 3

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    invoke-direct {p0, v0, v1}, LaJ/I;->c(J)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->e()Lah/f;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()V
    .registers 3

    const-wide/high16 v0, -0x8000

    invoke-direct {p0, v0, v1}, LaJ/I;->c(J)Lah/f;

    return-void
.end method

.method public p()LaJ/n;
    .registers 2

    iget-object v0, p0, LaJ/I;->r:LaJ/n;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaJ/I;->s:[Ljava/lang/String;

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaJ/I;->t:[Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, LaJ/I;->u:I

    return v0
.end method

.method public t()Z
    .registers 3

    iget v0, p0, LaJ/I;->v:I

    if-eqz v0, :cond_c

    iget-object v0, p0, LaJ/I;->g:Lah/f;

    iget-object v1, p0, LaJ/I;->e:Lah/f;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LaJ/I;->l:LaJ/P;

    invoke-virtual {v1}, LaJ/P;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LaJ/I;->d:[B

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LaJ/I;->d:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, "B?"

    goto :goto_29
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, LaJ/I;->n:Z

    return v0
.end method

.method public v()Z
    .registers 2

    iget-boolean v0, p0, LaJ/I;->w:Z

    return v0
.end method

.method public declared-synchronized x()I
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, LaJ/I;->y:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, LaJ/I;->g:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, LaJ/I;->x:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, LaJ/I;->e:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1a

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    monitor-exit p0

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
