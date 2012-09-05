.class public LaJ/V;
.super Ljava/lang/Object;

# interfaces
.implements Laf/j;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:[LaJ/U;


# instance fields
.field private volatile b:LaJ/W;

.field private final c:Ljava/util/Hashtable;

.field private final d:Ljava/util/Hashtable;

.field private final e:J

.field private final f:Lap/d;

.field private volatile g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [LaJ/U;

    sput-object v0, LaJ/V;->a:[LaJ/U;

    return-void
.end method

.method public constructor <init>(JLap/c;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/V;->g:Z

    iput-wide p1, p0, LaJ/V;->e:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaJ/V;->h:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/V;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/V;->d:Ljava/util/Hashtable;

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    new-instance v0, Lap/d;

    invoke-direct {v0, p3, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaJ/V;->f:Lap/d;

    iget-object v0, p0, LaJ/V;->f:Lap/d;

    const-wide/16 v1, 0x4e91

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    invoke-virtual {p0}, LaJ/V;->c()V

    return-void
.end method

.method static synthetic a(LaJ/V;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, LaJ/V;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized a(LaJ/P;LaJ/X;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/V;->b:LaJ/W;

    if-nez v0, :cond_c

    new-instance v0, LaJ/W;

    invoke-direct {v0, p0}, LaJ/W;-><init>(LaJ/V;)V

    iput-object v0, p0, LaJ/V;->b:LaJ/W;

    :cond_c
    iget-object v0, p0, LaJ/V;->b:LaJ/W;

    invoke-virtual {v0, p2}, LaJ/W;->a(LaJ/X;)V

    iget-object v0, p0, LaJ/V;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(LaJ/V;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, LaJ/V;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(LaJ/V;)V
    .registers 1

    invoke-direct {p0}, LaJ/V;->f()V

    return-void
.end method

.method static synthetic e()[LaJ/U;
    .registers 1

    sget-object v0, LaJ/V;->a:[LaJ/U;

    return-object v0
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, LaJ/V;->g:Z

    if-nez v0, :cond_11

    iget-object v0, p0, LaJ/V;->f:Lap/d;

    invoke-virtual {v0}, Lap/d;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LaJ/V;->f:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(LaJ/P;Z)LaJ/X;
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, LaJ/P;->e()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_58

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_10

    const/4 v0, 0x0

    :cond_e
    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    iget-object v0, p0, LaJ/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/X;

    iget-object v1, p0, LaJ/V;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/X;

    if-eqz v0, :cond_5b

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-virtual {v0}, LaJ/X;->d()J

    move-result-wide v3

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    if-eqz p2, :cond_e

    if-nez v1, :cond_e

    const-wide/high16 v7, -0x8000

    cmp-long v1, v3, v7

    if-eqz v1, :cond_e

    iget-wide v3, p0, LaJ/V;->e:J

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_e

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, LaJ/V;->h:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_54

    iget-object v1, p0, LaJ/V;->b:LaJ/W;

    if-eqz v1, :cond_e

    :cond_54
    invoke-direct {p0, p1, v0}, LaJ/V;->a(LaJ/P;LaJ/X;)V
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    goto :goto_e

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5b
    if-eqz v1, :cond_5f

    move-object v0, v1

    goto :goto_e

    :cond_5f
    :try_start_5f
    new-instance v0, LaJ/X;

    invoke-direct {v0, p1}, LaJ/X;-><init>(LaJ/P;)V

    if-eqz p2, :cond_e

    invoke-direct {p0, p1, v0}, LaJ/V;->a(LaJ/P;LaJ/X;)V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_58

    goto :goto_e
.end method

.method public a()V
    .registers 1

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    invoke-virtual {p0}, LaJ/V;->d()V

    return-void
.end method

.method declared-synchronized a(J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    iget-object v1, p0, LaJ/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/X;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    invoke-virtual {v1}, LaJ/X;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v1, v3, p1

    if-lez v1, :cond_7

    iget-object v1, p0, LaJ/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_7

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, LaJ/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/V;->b:LaJ/W;

    if-eqz v0, :cond_22

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaJ/V;->b:LaJ/W;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/V;->b:LaJ/W;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, LaJ/V;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LaJ/V;->h:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, LaJ/V;->g:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LaJ/V;->g:Z

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v0

    iget-object v1, p0, LaJ/V;->f:Lap/d;

    invoke-virtual {v0, v1}, Lap/c;->b(Lap/a;)I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 3

    const-wide/32 v0, 0xea60

    :try_start_3
    invoke-virtual {p0, v0, v1}, LaJ/V;->a(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_e

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v1, "TrafficService BG"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_e
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    goto :goto_6
.end method
