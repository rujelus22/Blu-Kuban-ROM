.class public Lcom/google/googlenav/bX;
.super Lat/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/google/googlenav/bY;

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/bY;)V
    .registers 9

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bX;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/bX;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/bX;->c:I

    iput-wide p4, p0, Lcom/google/googlenav/bX;->f:J

    iput-wide p6, p0, Lcom/google/googlenav/bX;->g:J

    iput-object p8, p0, Lcom/google/googlenav/bX;->d:Lcom/google/googlenav/bY;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x5c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 10

    const-wide/high16 v6, -0x8000

    const/4 v5, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/gX;->k:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/a;->f:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, Lcom/google/googlenav/bX;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/bX;->b:Ljava/lang/String;

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/bX;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_20
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlenav/bX;->c:I

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    iget-wide v2, p0, Lcom/google/googlenav/bX;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_32

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/googlenav/bX;->f:J

    invoke-virtual {v1, v2, v3, v4}, Lam/b;->b(IJ)V

    :cond_32
    iget-wide v2, p0, Lcom/google/googlenav/bX;->g:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3e

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/googlenav/bX;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lam/b;->b(IJ)V

    :cond_3e
    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    const/4 v1, 0x1

    sget-object v0, LbD/gX;->l:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/bX;->e:Z

    iget-boolean v0, p0, Lcom/google/googlenav/bX;->e:Z

    if-nez v0, :cond_14

    :cond_14
    return v1

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bX;->d:Lcom/google/googlenav/bY;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/bX;->d:Lcom/google/googlenav/bY;

    iget-boolean v1, p0, Lcom/google/googlenav/bX;->e:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/bY;->a(Z)V

    :cond_b
    return-void
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
