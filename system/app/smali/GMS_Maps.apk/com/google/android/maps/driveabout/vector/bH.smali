.class public Lcom/google/android/maps/driveabout/vector/bH;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/l;

.field private final b:Lcom/google/android/maps/driveabout/vector/bF;


# direct methods
.method public constructor <init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    return-void
.end method


# virtual methods
.method public a()Lt/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    invoke-interface {v0}, Lt/l;->i()I

    move-result v0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/bF;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    invoke-interface {v0}, Lt/l;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/vector/bH;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:Lt/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method
