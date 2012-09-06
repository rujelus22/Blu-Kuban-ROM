.class Lcom/google/common/base/Functions$PredicateFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final predicate:Lcom/google/common/base/ah;


# direct methods
.method private constructor <init>(Lcom/google/common/base/ah;)V
    .registers 3
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ah;

    iput-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/ah;Lcom/google/common/base/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/google/common/base/Functions$PredicateFunction;-><init>(Lcom/google/common/base/ah;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    invoke-interface {v0, p1}, Lcom/google/common/base/ah;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/common/base/Functions$PredicateFunction;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 251
    instance-of v0, p1, Lcom/google/common/base/Functions$PredicateFunction;

    if-eqz v0, :cond_f

    .line 252
    check-cast p1, Lcom/google/common/base/Functions$PredicateFunction;

    .line 253
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    iget-object v1, p1, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forPredicate("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
