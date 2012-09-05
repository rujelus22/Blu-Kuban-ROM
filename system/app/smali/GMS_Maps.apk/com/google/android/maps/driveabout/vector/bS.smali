.class public Lcom/google/android/maps/driveabout/vector/bS;
.super Ljava/lang/Object;


# instance fields
.field public a:Lt/L;

.field public b:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bS;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    return-void

    :cond_f
    new-instance v0, Lt/L;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    invoke-direct {v0, v1}, Lt/L;-><init>(Lt/L;)V

    goto :goto_8
.end method
