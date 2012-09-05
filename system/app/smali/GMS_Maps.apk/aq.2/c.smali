.class public Laq/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(IIIIJLandroid/graphics/Point;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laq/c;->a:I

    iput p2, p0, Laq/c;->b:I

    iput p3, p0, Laq/c;->c:I

    iput p4, p0, Laq/c;->d:I

    iput-wide p5, p0, Laq/c;->e:J

    iput-object p7, p0, Laq/c;->f:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Laq/c;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Laq/c;->a:I

    if-ne v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Laq/c;->a:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Laq/c;->a()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    invoke-virtual {p0}, Laq/c;->b()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Laq/c;->b:I

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    iget v2, p0, Laq/c;->b:I

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Laq/c;->b:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Laq/c;->f()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, Laq/c;->g()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    const/4 v0, 0x7

    iget v1, p0, Laq/c;->b:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public k()I
    .registers 2

    iget v0, p0, Laq/c;->c:I

    return v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Laq/c;->d:I

    return v0
.end method

.method public m()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Laq/c;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method public n()J
    .registers 3

    iget-wide v0, p0, Laq/c;->e:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
