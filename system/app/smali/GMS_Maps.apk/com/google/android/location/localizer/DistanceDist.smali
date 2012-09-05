.class public Lcom/google/android/location/localizer/DistanceDist;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:[F


# direct methods
.method constructor <init>(III[F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/DistanceDist;->a:I

    iput p3, p0, Lcom/google/android/location/localizer/DistanceDist;->c:I

    iput p2, p0, Lcom/google/android/location/localizer/DistanceDist;->b:I

    iput-object p4, p0, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    return-void
.end method

.method static a(LW/a;)Lcom/google/android/location/localizer/DistanceDist;
    .registers 9

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LW/a;->c(I)I

    move-result v2

    invoke-virtual {p0, v3}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v3}, LW/a;->c(I)I

    move-result v0

    :goto_12
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, LW/a;->c(I)I

    move-result v3

    invoke-virtual {p0, v7}, LW/a;->i(I)I

    move-result v4

    new-array v5, v4, [F

    :goto_1d
    if-ge v1, v4, :cond_2e

    invoke-virtual {p0, v7, v1}, LW/a;->b(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    move v0, v1

    goto :goto_12

    :cond_2e
    new-instance v1, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    return-object v1
.end method
