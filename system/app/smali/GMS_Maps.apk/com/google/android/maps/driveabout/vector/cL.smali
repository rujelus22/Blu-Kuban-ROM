.class public Lcom/google/android/maps/driveabout/vector/cL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lt/af;)I
    .registers 8

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    invoke-virtual {p2}, Lt/af;->b()I

    move-result v1

    if-eq v0, v1, :cond_d

    sub-int v0, v1, v0

    :goto_c
    return v0

    :cond_d
    const/high16 v1, 0x2000

    shr-int v0, v1, v0

    invoke-virtual {p1}, Lt/af;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lt/af;->g()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Lt/af;->f()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Lt/af;->g()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cL;->a:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cL;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cL;->a:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cL;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_c
.end method

.method public a(Lt/L;)V
    .registers 3

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cL;->a:I

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cL;->b:I

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lt/af;

    check-cast p2, Lt/af;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cL;->a(Lt/af;Lt/af;)I

    move-result v0

    return v0
.end method
