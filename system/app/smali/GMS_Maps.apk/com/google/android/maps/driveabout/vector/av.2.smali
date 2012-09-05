.class Lcom/google/android/maps/driveabout/vector/av;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/at;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/av;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/av;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/at;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/at;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/av;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/av;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;FIZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/av;->d:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/av;->c:I

    if-eqz p4, :cond_35

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/av;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/av;->e:I

    return-void

    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_39
.end method

.method private a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/av;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/av;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
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
    check-cast p1, Lcom/google/android/maps/driveabout/vector/av;

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/av;->d:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/av;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/av;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/av;->c:I

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/av;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/av;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/av;->e:I

    return v0
.end method
