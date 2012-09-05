.class public Lcom/google/android/location/os/real/J;
.super Ljava/lang/Object;

# interfaces
.implements Li/B;


# instance fields
.field private final a:Landroid/location/Location;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/location/Location;JI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null location in RealLocation constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    iput-wide p2, p0, Lcom/google/android/location/os/real/J;->b:J

    iput p4, p0, Lcom/google/android/location/os/real/J;->c:I

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public b()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public c()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/os/real/J;->c:I

    return v0
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/location/os/real/J;->b:J

    return-wide v0
.end method

.method public g()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .registers 3

    iget v0, p0, Lcom/google/android/location/os/real/J;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    return v0
.end method

.method public k()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    return v0
.end method

.method public m()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public n()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealLocation [location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/location/os/real/J;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " satellites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/location/os/real/J;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/location/os/real/J;->j()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, " bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/location/os/real/J;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/location/os/real/J;->l()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, " altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/location/os/real/J;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_3f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
