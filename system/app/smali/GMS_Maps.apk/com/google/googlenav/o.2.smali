.class public Lcom/google/googlenav/o;
.super Lat/b;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/h;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/r;

.field private final e:J

.field private f:Lcom/google/googlenav/a;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V
    .registers 7

    invoke-direct {p0}, Lat/b;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    iput-object p2, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/o;->e:J

    return-void
.end method

.method private declared-synchronized l()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/o;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x65

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/gX;->u:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/o;->i()Lam/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    const/4 v1, 0x1

    sget-object v0, LbD/gX;->v:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/o;->g:Z

    iget-boolean v0, p0, Lcom/google/googlenav/o;->g:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/a;

    invoke-direct {v2, v0}, Lcom/google/googlenav/a;-><init>(Lam/b;)V

    iput-object v2, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    :cond_24
    return v1

    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()V
    .registers 6

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    iget-boolean v1, p0, Lcom/google/googlenav/o;->g:Z

    iget-object v2, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    iget-object v3, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    iget-object v4, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/r;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    :cond_14
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method i()Lam/b;
    .registers 5

    const/4 v2, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbF/t;->f:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_19
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlenav/o;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/q;->a(Ljava/util/List;)Lcom/google/googlenav/q;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1}, Lcom/google/googlenav/q;->a()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_3c
    iget-object v1, p0, Lcom/google/googlenav/o;->h:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/googlenav/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_4c
    return-object v0
.end method

.method protected j()Lcom/google/googlenav/s;
    .registers 3

    new-instance v0, Lcom/google/googlenav/s;

    invoke-direct {v0}, Lcom/google/googlenav/s;-><init>()V

    iget-boolean v1, p0, Lcom/google/googlenav/o;->g:Z

    iput-boolean v1, v0, Lcom/google/googlenav/s;->a:Z

    iget-object v1, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    iput-object v1, v0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/a;

    iget-object v1, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    iput-object v1, v0, Lcom/google/googlenav/s;->c:Lcom/google/googlenav/h;

    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/google/googlenav/s;->d:Ljava/util/List;

    return-object v0
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/o;->j()Lcom/google/googlenav/s;

    move-result-object v0

    return-object v0
.end method
