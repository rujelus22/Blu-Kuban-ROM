.class final Lcom/google/common/collect/LexicographicalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Lcom/google/common/collect/Ordering;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    .line 37
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 43
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 45
    const/4 v0, 0x1

    .line 55
    :goto_15
    return v0

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 48
    if-eqz v0, :cond_8

    goto :goto_15

    .line 52
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 53
    const/4 v0, -0x1

    goto :goto_15

    .line 55
    :cond_2f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    const/4 v0, 0x1

    .line 66
    :goto_3
    return v0

    .line 62
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/LexicographicalOrdering;

    if-eqz v0, :cond_13

    .line 63
    check-cast p1, Lcom/google/common/collect/LexicographicalOrdering;

    .line 64
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    iget-object v1, p1, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 66
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
