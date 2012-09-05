.class public Ls/b;
.super Landroid/location/Location;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lt/X;

.field private e:Lt/L;

.field private f:Lu/B;

.field private g:D

.field private h:I

.field private i:I

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Ls/b;->g:D

    const/4 v0, -0x1

    iput v0, p0, Ls/b;->h:I

    iput v2, p0, Ls/b;->i:I

    iput-boolean v2, p0, Ls/b;->k:Z

    instance-of v0, p1, Ls/b;

    if-eqz v0, :cond_4e

    check-cast p1, Ls/b;

    invoke-virtual {p1}, Ls/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Ls/b;->a:Z

    invoke-virtual {p1}, Ls/b;->b()Z

    move-result v0

    iput-boolean v0, p0, Ls/b;->b:Z

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Ls/b;->c:Z

    invoke-virtual {p1}, Ls/b;->h()Lt/X;

    move-result-object v0

    iput-object v0, p0, Ls/b;->d:Lt/X;

    iget-object v0, p1, Ls/b;->e:Lt/L;

    iput-object v0, p0, Ls/b;->e:Lt/L;

    invoke-virtual {p1}, Ls/b;->j()Lu/B;

    move-result-object v0

    iput-object v0, p0, Ls/b;->f:Lu/B;

    invoke-virtual {p1}, Ls/b;->l()D

    move-result-wide v0

    iput-wide v0, p0, Ls/b;->g:D

    iget v0, p1, Ls/b;->h:I

    iput v0, p0, Ls/b;->h:I

    iget v0, p1, Ls/b;->i:I

    iput v0, p0, Ls/b;->i:I

    iget-wide v0, p1, Ls/b;->j:J

    iput-wide v0, p0, Ls/b;->j:J

    iget-boolean v0, p1, Ls/b;->k:Z

    iput-boolean v0, p0, Ls/b;->k:Z

    :goto_4d
    return-void

    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ls/b;->j:J

    goto :goto_4d
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Ls/b;->g:D

    const/4 v0, -0x1

    iput v0, p0, Ls/b;->h:I

    iput v2, p0, Ls/b;->i:I

    iput-boolean v2, p0, Ls/b;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lt/L;)F
    .registers 11

    const/4 v0, 0x1

    new-array v8, v0, [F

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Ls/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lt/L;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lt/L;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Ls/b;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public a(Lt/o;)F
    .registers 13

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    const/4 v0, 0x2

    new-array v8, v0, [F

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Ls/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lt/o;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Lt/o;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Ls/b;->distanceBetween(DDDD[F)V

    const/4 v0, 0x1

    aget v0, v8, v0

    return v0
.end method

.method public a(D)V
    .registers 3

    iput-wide p1, p0, Ls/b;->g:D

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Ls/b;->h:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Ls/b;->j:J

    return-void
.end method

.method public a(Lt/X;Lt/L;)V
    .registers 3

    iput-object p1, p0, Ls/b;->d:Lt/X;

    if-nez p1, :cond_5

    const/4 p2, 0x0

    :cond_5
    iput-object p2, p0, Ls/b;->e:Lt/L;

    return-void
.end method

.method public a(Lu/B;)V
    .registers 2

    iput-object p1, p0, Ls/b;->f:Lu/B;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Ls/b;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Ls/b;->a:Z

    return v0
.end method

.method public b(Lt/o;)F
    .registers 13

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    const/4 v0, 0x1

    new-array v8, v0, [F

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Ls/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lt/o;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Lt/o;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Ls/b;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Ls/b;->i:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Ls/b;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Ls/b;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ls/b;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Ls/b;->c:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget v0, p0, Ls/b;->h:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()I
    .registers 2

    iget v0, p0, Ls/b;->h:I

    return v0
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Ls/b;->k:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Ls/b;->c:Z

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Ls/b;->i:I

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Ls/b;->k:Z

    return v0
.end method

.method public h()Lt/X;
    .registers 2

    iget-object v0, p0, Ls/b;->d:Lt/X;

    return-object v0
.end method

.method public i()Lt/L;
    .registers 2

    iget-object v0, p0, Ls/b;->e:Lt/L;

    return-object v0
.end method

.method public j()Lu/B;
    .registers 2

    iget-object v0, p0, Ls/b;->f:Lu/B;

    return-object v0
.end method

.method public k()Z
    .registers 5

    iget-wide v0, p0, Ls/b;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public l()D
    .registers 3

    iget-wide v0, p0, Ls/b;->g:D

    return-wide v0
.end method

.method public m()Lt/o;
    .registers 9

    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    new-instance v0, Lt/o;

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Ls/b;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lt/o;-><init>(II)V

    return-object v0
.end method

.method public n()LaJ/B;
    .registers 9

    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    new-instance v0, LaJ/B;

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Ls/b;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public o()J
    .registers 3

    iget-wide v0, p0, Ls/b;->j:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriveAboutLocation[mIsGps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ls/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsAccurate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ls/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ls/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRteCon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/b;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumSatInFix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ls/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFixTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ls/b;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
