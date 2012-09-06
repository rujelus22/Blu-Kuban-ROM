.class public final Lcom/google/common/collect/dv;
.super Lcom/google/common/collect/dn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/common/collect/dn;-><init>()V

    .line 200
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/hu;

    .line 201
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/hu;

    iget-object v1, p0, Lcom/google/common/collect/dv;->b:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->access$000(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/hu;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/hu;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    move-result-object v0

    return-object v0
.end method
