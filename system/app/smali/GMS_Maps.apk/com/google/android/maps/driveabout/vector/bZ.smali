.class public Lcom/google/android/maps/driveabout/vector/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:[Lcom/google/android/maps/driveabout/vector/bH;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->c:I

    return-void
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/bH;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/bH;

    aput-object v1, v3, v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_36
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/bH;
    .registers 8

    const/4 v5, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bZ;->c()V

    :cond_9
    const/4 v0, 0x0

    move v2, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    array-length v3, v3

    if-ge v0, v3, :cond_30

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v3

    if-le v3, v1, :cond_5f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v1

    move v2, v1

    move v1, v0

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v2

    move v2, v6

    goto :goto_b

    :cond_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    if-eqz v0, :cond_54

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/bH;

    aput-object v1, v4, v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_53
    return-object v3

    :cond_54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aput-object v5, v0, v2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->c:I

    goto :goto_53

    :cond_5f
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_2a
.end method

.method public a(Ljava/util/Iterator;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addIterator after next has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/bH;
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bZ;->c()V

    :cond_8
    const/4 v0, 0x0

    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    array-length v3, v3

    if-ge v0, v3, :cond_2b

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v3, v3, v0

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v3

    if-le v3, v2, :cond_28

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bH;->b()I

    move-result v2

    move v1, v0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->b:[Lcom/google/android/maps/driveabout/vector/bH;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bZ;->c:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bZ;->a()Lcom/google/android/maps/driveabout/vector/bH;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[RankMergingFeatureIterator"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bZ;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
