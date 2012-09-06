.class public Lm/b;
.super Landroid/location/Location;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ln/ac;

.field private e:Ln/Q;

.field private f:Lo/B;

.field private g:D

.field private h:I

.field private i:I

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 34
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lm/b;->g:D

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lm/b;->h:I

    .line 40
    iput v2, p0, Lm/b;->i:I

    .line 46
    iput-boolean v2, p0, Lm/b;->k:Z

    .line 50
    instance-of v0, p1, Lm/b;

    if-eqz v0, :cond_4e

    .line 51
    check-cast p1, Lm/b;

    .line 52
    invoke-virtual {p1}, Lm/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lm/b;->a:Z

    .line 53
    invoke-virtual {p1}, Lm/b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lm/b;->b:Z

    .line 54
    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lm/b;->c:Z

    .line 55
    invoke-virtual {p1}, Lm/b;->h()Ln/ac;

    move-result-object v0

    iput-object v0, p0, Lm/b;->d:Ln/ac;

    .line 56
    iget-object v0, p1, Lm/b;->e:Ln/Q;

    iput-object v0, p0, Lm/b;->e:Ln/Q;

    .line 57
    invoke-virtual {p1}, Lm/b;->j()Lo/B;

    move-result-object v0

    iput-object v0, p0, Lm/b;->f:Lo/B;

    .line 58
    invoke-virtual {p1}, Lm/b;->l()D

    move-result-wide v0

    iput-wide v0, p0, Lm/b;->g:D

    .line 59
    iget v0, p1, Lm/b;->h:I

    iput v0, p0, Lm/b;->h:I

    .line 60
    iget v0, p1, Lm/b;->i:I

    iput v0, p0, Lm/b;->i:I

    .line 61
    iget-wide v0, p1, Lm/b;->j:J

    iput-wide v0, p0, Lm/b;->j:J

    .line 62
    iget-boolean v0, p1, Lm/b;->k:Z

    iput-boolean v0, p0, Lm/b;->k:Z

    .line 66
    :goto_4d
    return-void

    .line 64
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lm/b;->j:J

    goto :goto_4d
.end method


# virtual methods
.method public a(Ln/Q;)F
    .registers 11
    .parameter

    .prologue
    .line 308
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 309
    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lm/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Ln/Q;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Ln/Q;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Lm/b;->distanceBetween(DDDD[F)V

    .line 312
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public a(Ln/s;)F
    .registers 13
    .parameter

    .prologue
    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    .line 284
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 285
    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lm/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Ln/s;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Ln/s;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Lm/b;->distanceBetween(DDDD[F)V

    .line 288
    const/4 v0, 0x1

    aget v0, v8, v0

    return v0
.end method

.method public a(D)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iput-wide p1, p0, Lm/b;->g:D

    .line 261
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput p1, p0, Lm/b;->h:I

    .line 155
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 324
    iput-wide p1, p0, Lm/b;->j:J

    .line 325
    return-void
.end method

.method public a(Ln/ac;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lm/b;->d:Ln/ac;

    .line 224
    if-nez p1, :cond_5

    const/4 p2, 0x0

    :cond_5
    iput-object p2, p0, Lm/b;->e:Ln/Q;

    .line 225
    return-void
.end method

.method public a(Lo/B;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lm/b;->f:Lo/B;

    .line 237
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-boolean p1, p0, Lm/b;->a:Z

    .line 114
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lm/b;->a:Z

    return v0
.end method

.method public b(Ln/s;)F
    .registers 13
    .parameter

    .prologue
    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    .line 300
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 301
    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lm/b;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Ln/s;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Ln/s;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Lm/b;->distanceBetween(DDDD[F)V

    .line 304
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lm/b;->i:I

    .line 176
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lm/b;->b:Z

    .line 131
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lm/b;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lm/b;->b:Z

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
    .parameter

    .prologue
    .line 161
    iput-boolean p1, p0, Lm/b;->c:Z

    .line 162
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lm/b;->h:I

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

    .prologue
    .line 150
    iget v0, p0, Lm/b;->h:I

    return v0
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lm/b;->k:Z

    .line 203
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lm/b;->c:Z

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lm/b;->i:I

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lm/b;->k:Z

    return v0
.end method

.method public h()Ln/ac;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lm/b;->d:Ln/ac;

    return-object v0
.end method

.method public i()Ln/Q;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lm/b;->e:Ln/Q;

    return-object v0
.end method

.method public j()Lo/B;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lm/b;->f:Lo/B;

    return-object v0
.end method

.method public k()Z
    .registers 5

    .prologue
    .line 248
    iget-wide v0, p0, Lm/b;->g:D

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

    .prologue
    .line 255
    iget-wide v0, p0, Lm/b;->g:D

    return-wide v0
.end method

.method public m()Ln/s;
    .registers 9

    .prologue
    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    .line 264
    new-instance v0, Ln/s;

    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Lm/b;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Ln/s;-><init>(II)V

    return-object v0
.end method

.method public n()Lat/B;
    .registers 9

    .prologue
    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    .line 269
    new-instance v0, Lat/B;

    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Lm/b;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public o()J
    .registers 3

    .prologue
    .line 320
    iget-wide v0, p0, Lm/b;->j:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriveAboutLocation[mIsGps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lm/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsAccurate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lm/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lm/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRteCon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/b;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumSatInFix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lm/b;->h:I

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

    iget-wide v1, p0, Lm/b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lm/b;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
