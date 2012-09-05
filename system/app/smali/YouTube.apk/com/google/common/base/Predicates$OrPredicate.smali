.class Lcom/google/common/base/Predicates$OrPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/u;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/lang/Iterable;


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/u;

    .line 323
    invoke-interface {v0, p1}, Lcom/google/common/base/u;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    const/4 v0, 0x1

    .line 327
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 337
    instance-of v0, p1, Lcom/google/common/base/Predicates$OrPredicate;

    if-eqz v0, :cond_f

    .line 338
    check-cast p1, Lcom/google/common/base/Predicates$OrPredicate;

    .line 339
    iget-object v0, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    iget-object v1, p1, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    .line 341
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/u;

    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 334
    :cond_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Predicates$OrPredicate;->components:Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Lcom/google/common/base/m;->a(Ljava/lang/Iterable;)Ljava/lang/String;

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
