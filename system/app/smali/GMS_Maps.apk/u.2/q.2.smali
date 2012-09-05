.class public Lu/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lu/x;

.field private final b:I

.field private final c:Lu/I;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:Lu/x;


# direct methods
.method constructor <init>([Lu/x;ILu/I;IIIIZIZLu/x;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/q;->a:[Lu/x;

    iput p2, p0, Lu/q;->b:I

    iput-object p3, p0, Lu/q;->c:Lu/I;

    iput p4, p0, Lu/q;->d:I

    iput p5, p0, Lu/q;->e:I

    iput p6, p0, Lu/q;->f:I

    iput p7, p0, Lu/q;->g:I

    iput-boolean p8, p0, Lu/q;->h:Z

    iput p9, p0, Lu/q;->i:I

    iput-boolean p10, p0, Lu/q;->j:Z

    iput-object p11, p0, Lu/q;->k:Lu/x;

    return-void
.end method

.method public static a()Lu/q;
    .registers 12

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    new-instance v0, Lu/q;

    move-object v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v9, v8

    move v10, v8

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, Lu/q;-><init>([Lu/x;ILu/I;IIIIZIZLu/x;)V

    return-object v0
.end method

.method private n()Z
    .registers 2

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    if-eqz v0, :cond_a

    iget v0, p0, Lu/q;->b:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(F)Lt/ab;
    .registers 11

    iget v0, p0, Lu/q;->d:I

    if-ltz v0, :cond_8

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->n()Lt/P;

    move-result-object v1

    iget v2, p0, Lu/q;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lu/x;->b(I)D

    move-result-wide v3

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3a

    invoke-virtual {v1, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Lt/L;->a(D)D

    move-result-wide v5

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lu/x;->a(D)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    new-instance v0, Lt/ab;

    invoke-direct {v0, v1, v2, v3}, Lt/ab;-><init>(Lt/P;II)V

    goto :goto_9

    :cond_3a
    new-instance v0, Lt/ab;

    invoke-direct {v0, v1, v2}, Lt/ab;-><init>(Lt/P;I)V

    goto :goto_9
.end method

.method public b()I
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lu/q;->e:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lu/q;->g:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public d()I
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lu/q;->f:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public e()I
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lu/q;->d:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public f()[Lu/x;
    .registers 2

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    invoke-virtual {v0}, [Lu/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/x;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public g()Lu/x;
    .registers 3

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    iget v1, p0, Lu/q;->b:I

    aget-object v0, v0, v1

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()Lu/I;
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lu/q;->c:Lu/I;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public i()Lu/x;
    .registers 2

    iget-object v0, p0, Lu/q;->k:Lu/x;

    return-object v0
.end method

.method public j()Z
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lu/q;->h:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()I
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lu/q;->i:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public l()Z
    .registers 2

    invoke-direct {p0}, Lu/q;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lu/q;->j:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method m()I
    .registers 2

    iget v0, p0, Lu/q;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[numRoutes:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lu/q;->a:[Lu/x;

    if-nez v0, :cond_8e

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lu/q;->c:Lu/I;

    if-nez v0, :cond_93

    const/4 v0, -0x1

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curSegment:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " metersToNextStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " metersRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " secondsRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " areAlternatesStale:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lu/q;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " trafficStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/q;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " onRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lu/q;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hasPathfinderRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lu/q;->k:Lu/x;

    if-nez v0, :cond_9a

    const-string v0, "false"

    :goto_81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8e
    iget-object v0, p0, Lu/q;->a:[Lu/x;

    array-length v0, v0

    goto/16 :goto_c

    :cond_93
    iget-object v0, p0, Lu/q;->c:Lu/I;

    invoke-virtual {v0}, Lu/I;->i()I

    move-result v0

    goto :goto_25

    :cond_9a
    const-string v0, "true"

    goto :goto_81
.end method
