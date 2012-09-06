.class abstract Lcom/google/common/collect/p;
.super Lcom/google/common/collect/z;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cw;


# static fields
.field private static final serialVersionUID:J = 0x5b6e85fc5d362ea5L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/collect/z;-><init>(Ljava/util/Map;)V

    .line 47
    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/List;
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/google/common/collect/z;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/p;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
