.class public Lcom/google/android/maps/driveabout/app/bf;
.super Lcom/google/android/maps/driveabout/app/cY;


# instance fields
.field protected d:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/app/cY;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    return-void
.end method


# virtual methods
.method protected a()F
    .registers 2

    const/high16 v0, 0x4170

    return v0
.end method

.method protected a(Landroid/location/Location;)F
    .registers 5

    const/high16 v0, 0x4138

    instance-of v1, p1, Ls/b;

    if-nez v1, :cond_9

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    :goto_8
    return v0

    :cond_9
    check-cast p1, Ls/b;

    invoke-virtual {p1}, Ls/b;->h()Lt/X;

    move-result-object v1

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v1, :cond_1a

    :cond_17
    iget v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    goto :goto_8

    :cond_1a
    invoke-virtual {v1}, Lt/X;->j()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    goto :goto_8

    :cond_23
    invoke-virtual {v1}, Lt/X;->f()I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_2e

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    goto :goto_8

    :cond_2e
    const/16 v0, 0x50

    if-lt v1, v0, :cond_37

    const/high16 v0, 0x4148

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    goto :goto_8

    :cond_37
    const/high16 v0, 0x4168

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bf;->d:F

    goto :goto_8
.end method
