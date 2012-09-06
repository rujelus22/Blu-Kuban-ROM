.class public abstract Lcom/google/common/collect/bk;
.super Lcom/google/common/collect/bg;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/common/collect/bg;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Set;
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/bk;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/bk;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/bk;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/bk;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
