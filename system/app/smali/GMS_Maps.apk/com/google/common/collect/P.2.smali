.class public final Lcom/google/common/collect/P;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/p;-><init>(Ljava/util/Map;)V

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/common/collect/P;->a:I

    .line 105
    return-void
.end method

.method public static g()Lcom/google/common/collect/P;
    .registers 1

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/P;

    invoke-direct {v0}, Lcom/google/common/collect/P;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/P;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/p;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/P;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Z
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->e()V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Set;
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/common/collect/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
