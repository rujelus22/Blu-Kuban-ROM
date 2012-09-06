.class Lcom/google/common/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/common/base/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 338
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ah;

    invoke-interface {v0, p1}, Lcom/google/common/base/ah;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 342
    :goto_18
    return v2

    .line 337
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 342
    :cond_1d
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 349
    instance-of v0, p1, Lcom/google/common/base/Predicates$AndPredicate;

    if-eqz v0, :cond_f

    .line 350
    check-cast p1, Lcom/google/common/base/Predicates$AndPredicate;

    .line 351
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "And("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/base/Predicates;->b()Lcom/google/common/base/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
