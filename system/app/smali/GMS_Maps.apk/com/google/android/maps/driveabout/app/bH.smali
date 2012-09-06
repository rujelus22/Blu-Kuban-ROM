.class public Lcom/google/android/maps/driveabout/app/bh;
.super Lcom/google/android/maps/driveabout/app/cM;
.source "SourceFile"


# instance fields
.field protected d:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/app/cM;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    .line 23
    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    .line 28
    return-void
.end method


# virtual methods
.method protected a()F
    .registers 2

    .prologue
    .line 32
    const/high16 v0, 0x4170

    return v0
.end method

.method protected a(Landroid/location/Location;)F
    .registers 5
    .parameter

    .prologue
    const/high16 v0, 0x4138

    .line 41
    instance-of v1, p1, Lm/b;

    if-nez v1, :cond_9

    .line 42
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    .line 61
    :goto_8
    return v0

    .line 44
    :cond_9
    check-cast p1, Lm/b;

    .line 45
    invoke-virtual {p1}, Lm/b;->h()Ln/ac;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v1, :cond_1a

    .line 47
    :cond_17
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    goto :goto_8

    .line 49
    :cond_1a
    invoke-virtual {v1}, Ln/ac;->j()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    goto :goto_8

    .line 55
    :cond_23
    invoke-virtual {v1}, Ln/ac;->f()I

    move-result v1

    .line 56
    const/16 v2, 0x80

    if-lt v1, v2, :cond_2e

    .line 57
    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    goto :goto_8

    .line 58
    :cond_2e
    const/16 v0, 0x50

    if-lt v1, v0, :cond_37

    .line 59
    const/high16 v0, 0x4148

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    goto :goto_8

    .line 61
    :cond_37
    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:F

    goto :goto_8
.end method
