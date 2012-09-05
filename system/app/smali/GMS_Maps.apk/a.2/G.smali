.class public La/G;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private final b:Lc/m;

.field private final c:Lc/p;

.field private final d:La/o;

.field private final e:Lj/a;


# direct methods
.method public constructor <init>(Lc/m;Lc/p;La/o;Lj/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/G;->a:J

    iput-object p1, p0, La/G;->b:Lc/m;

    iput-object p2, p0, La/G;->c:Lc/p;

    iput-object p3, p0, La/G;->d:La/o;

    iput-object p4, p0, La/G;->e:Lj/a;

    return-void
.end method

.method private a(JJ)LW/a;
    .registers 11

    const-wide/16 v4, 0x3e8

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->p:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    div-long v2, p3, v4

    invoke-virtual {v0, v1, v2, v3}, LW/a;->b(IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, La/G;->a:J

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x3

    iget-object v2, p0, La/G;->b:Lc/m;

    iget-object v2, v2, Lc/m;->d:Lc/t;

    invoke-virtual {v2}, Lc/t;->c()LW/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    const/4 v1, 0x4

    iget-object v2, p0, La/G;->b:Lc/m;

    iget-object v2, v2, Lc/m;->e:Lc/t;

    invoke-virtual {v2}, Lc/t;->c()LW/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    sub-long v1, p3, p1

    iget-object v3, p0, La/G;->d:La/o;

    iget-wide v4, p0, La/G;->a:J

    add-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, La/o;->c(J)LW/a;

    move-result-object v1

    if-eqz v1, :cond_43

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILW/a;)V

    :cond_43
    iget-object v1, p0, La/G;->e:Lj/a;

    invoke-virtual {v1}, Lj/a;->c()LW/a;

    move-result-object v1

    if-eqz v1, :cond_50

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILW/a;)V

    :cond_50
    iget-object v1, p0, La/G;->c:Lc/p;

    if-eqz v1, :cond_5f

    const/16 v1, 0xb

    iget-object v2, p0, La/G;->c:Lc/p;

    invoke-virtual {v2}, Lc/p;->f()LW/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    :cond_5f
    return-object v0
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget-object v0, p0, La/G;->b:Lc/m;

    iget-object v0, v0, Lc/m;->d:Lc/t;

    invoke-virtual {v0}, Lc/t;->c()LW/a;

    iget-object v0, p0, La/G;->b:Lc/m;

    iget-object v0, v0, Lc/m;->e:Lc/t;

    invoke-virtual {v0}, Lc/t;->c()LW/a;

    iput-wide p1, p0, La/G;->a:J

    return-void
.end method

.method public a(Li/E;LW/a;)V
    .registers 9

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v0

    iget-wide v2, p0, La/G;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    invoke-virtual {p0, v0, v1}, La/G;->a(J)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-wide v2, p0, La/G;->a:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x6ddd00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f

    const/4 v2, 0x5

    invoke-interface {p1}, Li/E;->b()J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, La/G;->a(JJ)LW/a;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, LW/a;->a(ILW/a;)V

    iput-wide v0, p0, La/G;->a:J

    goto :goto_f
.end method
