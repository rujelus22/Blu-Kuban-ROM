.class public LaS/a;
.super Lat/a;


# instance fields
.field private final a:J

.field private b:Lam/b;

.field private c:Z

.field private d:I

.field private e:LaS/b;


# direct methods
.method public constructor <init>(JLam/b;LaS/b;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-wide p1, p0, LaS/a;->a:J

    iput-object p3, p0, LaS/a;->b:Lam/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaS/a;->c:Z

    iput-object p4, p0, LaS/a;->e:LaS/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x61

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x5

    new-instance v0, Lam/b;

    sget-object v1, LbD/eB;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-wide v2, p0, LaS/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    iget-object v1, p0, LaS/a;->b:Lam/b;

    invoke-virtual {v1, v4}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, LaS/a;->b:Lam/b;

    invoke-virtual {v2, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_20
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/eB;->c:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->k(I)Z

    move-result v3

    if-nez v3, :cond_14

    iput-boolean v0, p0, LaS/a;->c:Z

    const/4 v0, -0x1

    iput v0, p0, LaS/a;->d:I

    :goto_13
    return v1

    :cond_14
    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, LaS/a;->d:I

    iget v2, p0, LaS/a;->d:I

    if-nez v2, :cond_1f

    move v0, v1

    :cond_1f
    iput-boolean v0, p0, LaS/a;->c:Z

    goto :goto_13
.end method

.method public b()V
    .registers 4

    iget-boolean v0, p0, LaS/a;->c:Z

    if-eqz v0, :cond_19

    const-string v0, "s"

    :goto_6
    const/16 v1, 0x55

    const-string v2, "dr"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaS/a;->e:LaS/b;

    if-eqz v0, :cond_18

    iget-object v0, p0, LaS/a;->e:LaS/b;

    iget-boolean v1, p0, LaS/a;->c:Z

    invoke-interface {v0, v1}, LaS/b;->a(Z)V

    :cond_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, LaS/a;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaS/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_47
    const-string v0, ""

    goto :goto_3e
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, LaS/a;->e:LaS/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaS/a;->e:LaS/b;

    invoke-interface {v0}, LaS/b;->a()V

    :cond_9
    return-void
.end method
