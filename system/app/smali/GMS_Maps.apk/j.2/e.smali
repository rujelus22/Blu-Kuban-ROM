.class public Lj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lt/a;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 628
    sget-object v0, Lt/a;->a:Lt/a;

    invoke-direct {p0, p1, p2, v0}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V

    .line 629
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/dg;->w:Z

    if-eqz v0, :cond_10

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier tile types not allowed as base"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/dg;->g()I

    move-result v0

    shl-int v0, v5, v0

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/dg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    if-eqz p2, :cond_64

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 650
    const-string v1, " with modifiers "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 652
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 653
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 654
    iget-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/dg;->w:Z

    if-nez v4, :cond_49

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only modifier tile types allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_49
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dg;->g()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    .line 658
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 660
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_63
    move v0, v1

    .line 664
    :cond_64
    sget-object v1, Lt/a;->a:Lt/a;

    if-eq p3, v1, :cond_7e

    .line 665
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

    .line 667
    :cond_7e
    iput v0, p0, Lj/e;->a:I

    .line 668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/e;->c:Ljava/lang/String;

    .line 669
    iput-object p3, p0, Lj/e;->b:Lt/a;

    .line 670
    return-void
.end method


# virtual methods
.method public a(Lj/e;)I
    .registers 4
    .parameter

    .prologue
    .line 674
    iget v0, p0, Lj/e;->a:I

    iget v1, p1, Lj/e;->a:I

    if-eq v0, v1, :cond_c

    .line 675
    iget v0, p0, Lj/e;->a:I

    iget v1, p1, Lj/e;->a:I

    sub-int/2addr v0, v1

    .line 677
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lj/e;->b:Lt/a;

    iget-object v1, p1, Lj/e;->b:Lt/a;

    invoke-virtual {v0, v1}, Lt/a;->a(Lt/a;)I

    move-result v0

    goto :goto_b
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 608
    check-cast p1, Lj/e;

    invoke-virtual {p0, p1}, Lj/e;->a(Lj/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 682
    instance-of v0, p1, Lj/e;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lj/e;

    iget v0, v0, Lj/e;->a:I

    iget v1, p0, Lj/e;->a:I

    if-ne v0, v1, :cond_1b

    check-cast p1, Lj/e;

    iget-object v0, p1, Lj/e;->b:Lt/a;

    iget-object v1, p0, Lj/e;->b:Lt/a;

    invoke-virtual {v0, v1}, Lt/a;->equals(Ljava/lang/Object;)Z

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

    .prologue
    .line 688
    iget v0, p0, Lj/e;->a:I

    mul-int/lit8 v0, v0, 0x21

    iget-object v1, p0, Lj/e;->b:Lt/a;

    invoke-virtual {v1}, Lt/a;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lj/e;->c:Ljava/lang/String;

    return-object v0
.end method
