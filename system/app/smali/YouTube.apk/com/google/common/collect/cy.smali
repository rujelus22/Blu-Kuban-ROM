.class public abstract Lcom/google/common/collect/cy;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Map$Entry;
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/cy;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
