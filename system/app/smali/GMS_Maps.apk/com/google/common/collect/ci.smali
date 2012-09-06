.class public final Lcom/google/common/collect/ci;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/q;-><init>(Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public static d()Lcom/google/common/collect/ci;
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/common/collect/ci;

    invoke-direct {v0}, Lcom/google/common/collect/ci;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/q;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/common/collect/q;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/common/collect/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
