.class public abstract Lat/a;
.super Ljava/lang/Object;

# interfaces
.implements Lat/g;


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lat/a;->a:Z

    iput v0, p0, Lat/a;->b:I

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lat/a;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public X()V
    .registers 4

    invoke-virtual {p0}, Lat/a;->g_()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/a;->a:Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lat/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not cancellable!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aK()V
    .registers 2

    iget v0, p0, Lat/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lat/a;->b:I

    return-void
.end method

.method protected aL()I
    .registers 2

    iget v0, p0, Lat/a;->b:I

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lat/a;->c:Ljava/lang/Long;

    return-void
.end method

.method public c_()Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lat/a;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lat/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_22

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    iget-object v3, p0, Lat/a;->d:Ljava/lang/Long;

    if-nez v3, :cond_24

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lat/a;->d:Ljava/lang/Long;

    :cond_22
    const/4 v0, 0x1

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lat/a;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lat/a;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_22

    goto :goto_6
.end method

.method public f_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h_()Z
    .registers 2

    iget-boolean v0, p0, Lat/a;->a:Z

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 1

    return-void
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
