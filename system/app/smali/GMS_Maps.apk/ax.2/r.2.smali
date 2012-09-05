.class public Lax/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aX;
.implements Lcom/google/googlenav/login/i;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lax/q;

.field private static final b:Ljava/lang/Runnable;

.field private static e:Lcom/google/googlenav/ui/D;

.field private static volatile h:Z


# instance fields
.field private final c:Lax/bD;

.field private final d:Lap/d;

.field private f:Z

.field private volatile g:Z

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lax/q;

    invoke-direct {v0}, Lax/q;-><init>()V

    sput-object v0, Lax/r;->a:Lax/q;

    new-instance v0, Lax/s;

    invoke-direct {v0}, Lax/s;-><init>()V

    sput-object v0, Lax/r;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lax/bD;Lap/c;Lcom/google/googlenav/ui/D;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/r;->f:Z

    iput-object p1, p0, Lax/r;->c:Lax/bD;

    new-instance v0, Lap/d;

    invoke-direct {v0, p2, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lax/r;->d:Lap/d;

    sput-object p3, Lax/r;->e:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method public static a(Lcom/google/googlenav/aX;)V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lax/t;

    invoke-direct {v0, p0}, Lax/t;-><init>(Lcom/google/googlenav/aX;)V

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-static {}, LaJ/H;->h()LaJ/H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->j()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->e(Z)Lcom/google/googlenav/bc;

    :cond_2e
    sget-object v1, Lax/r;->a:Lax/q;

    invoke-virtual {v1}, Lax/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->g(I)Lcom/google/googlenav/bc;

    new-instance v1, Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    invoke-static {v3}, Lax/r;->b(Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lax/r;->b(Z)V

    return-void
.end method

.method private static b(Z)V
    .registers 1

    sput-boolean p0, Lax/r;->h:Z

    invoke-static {}, Lax/r;->l()V

    return-void
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lax/r;->h:Z

    return v0
.end method

.method public static d()Lax/q;
    .registers 1

    sget-object v0, Lax/r;->a:Lax/q;

    return-object v0
.end method

.method static synthetic f()Lcom/google/googlenav/ui/D;
    .registers 1

    sget-object v0, Lax/r;->e:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method private g()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/r;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/r;->f:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    return-void
.end method

.method private h()V
    .registers 4

    const-wide/32 v1, 0x1d4c0

    iget-object v0, p0, Lax/r;->d:Lap/d;

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    iget-object v0, p0, Lax/r;->d:Lap/d;

    invoke-virtual {v0, v1, v2}, Lap/d;->c(J)V

    iget-object v0, p0, Lax/r;->d:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    return-void
.end method

.method private k()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v0

    iget-object v1, p0, Lax/r;->d:Lap/d;

    invoke-virtual {v0, v1}, Lap/c;->b(Lap/a;)I

    return-void
.end method

.method private static l()V
    .registers 3

    sget-object v0, Lax/r;->e:Lcom/google/googlenav/ui/D;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    sget-object v1, Lax/r;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    sget-object v2, Lax/r;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_10
    return-void
.end method


# virtual methods
.method public B_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/r;->f:Z

    invoke-direct {p0}, Lax/r;->k()V

    return-void
.end method

.method public C_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/r;->f:Z

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lax/r;->g:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lax/r;->g()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lax/r;->k()V

    invoke-direct {p0}, Lax/r;->h()V

    goto :goto_10
.end method

.method public E_()V
    .registers 1

    invoke-direct {p0}, Lax/r;->g()V

    return-void
.end method

.method public F_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/r;->g:Z

    invoke-direct {p0}, Lax/r;->k()V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 4

    invoke-direct {p0}, Lax/r;->k()V

    iget-boolean v0, p0, Lax/r;->g:Z

    if-eqz v0, :cond_10

    if-nez p2, :cond_10

    iget-boolean v0, p0, Lax/r;->f:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lax/r;->h()V

    :cond_10
    return-void
.end method

.method public a(Lcom/google/googlenav/aX;J)V
    .registers 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lax/r;->f:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    invoke-interface {p1, v1}, Lcom/google/googlenav/aX;->b(Lcom/google/googlenav/aV;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    monitor-enter p0

    :try_start_c
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lax/r;->i:J

    sub-long v2, v0, v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_27

    iput-wide v0, p0, Lax/r;->i:J

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2f

    invoke-static {p1}, Lax/r;->a(Lcom/google/googlenav/aX;)V

    goto :goto_a

    :cond_27
    if-eqz p1, :cond_2d

    const/4 v0, 0x0

    :try_start_2a
    invoke-interface {p1, v0}, Lcom/google/googlenav/aX;->b(Lcom/google/googlenav/aV;)V

    :cond_2d
    monitor-exit p0

    goto :goto_a

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 3

    invoke-direct {p0}, Lax/r;->k()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    return-void
.end method
