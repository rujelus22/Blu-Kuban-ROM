.class public Lp/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lz/a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;)V
    .registers 4

    sget-object v0, Lz/a;->a:Lz/a;

    invoke-direct {p0, p1, p2, v0}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V
    .registers 10

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/cU;->p:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier tile types not allowed as base"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cU;->ordinal()I

    move-result v0

    shl-int v0, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cU;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_64

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, " with modifiers "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cU;

    iget-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/cU;->p:Z

    if-nez v4, :cond_49

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only modifier tile types allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cU;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cU;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_63
    move v0, v1

    :cond_64
    sget-object v1, Lz/a;->a:Lz/a;

    if-eq p3, v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with mask "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    iput v0, p0, Lp/e;->a:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lp/e;->b:Lz/a;

    return-void
.end method


# virtual methods
.method public a(Lp/e;)I
    .registers 4

    iget v0, p0, Lp/e;->a:I

    iget v1, p1, Lp/e;->a:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lp/e;->a:I

    iget v1, p1, Lp/e;->a:I

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lp/e;->b:Lz/a;

    iget-object v1, p1, Lp/e;->b:Lz/a;

    invoke-virtual {v0, v1}, Lz/a;->a(Lz/a;)I

    move-result v0

    goto :goto_b
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lp/e;

    invoke-virtual {p0, p1}, Lp/e;->a(Lp/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lp/e;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lp/e;

    iget v0, v0, Lp/e;->a:I

    iget v1, p0, Lp/e;->a:I

    if-ne v0, v1, :cond_1b

    check-cast p1, Lp/e;

    iget-object v0, p1, Lp/e;->b:Lz/a;

    iget-object v1, p0, Lp/e;->b:Lz/a;

    invoke-virtual {v0, v1}, Lz/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lp/e;->a:I

    mul-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lp/e;->b:Lz/a;

    invoke-virtual {v1}, Lz/a;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lp/e;->c:Ljava/lang/String;

    return-object v0
.end method
