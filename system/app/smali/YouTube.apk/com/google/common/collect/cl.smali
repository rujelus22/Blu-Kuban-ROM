.class public final Lcom/google/common/collect/cl;
.super Lcom/google/common/collect/cb;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/ew;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/common/collect/cb;-><init>()V

    .line 173
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/ew;

    .line 179
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/ew;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/ew;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/ew;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/ew;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Lcom/google/common/collect/ew;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/ew;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cb;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    move-result-object v0

    return-object v0
.end method
