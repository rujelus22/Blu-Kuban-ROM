.class public Lcom/google/common/collect/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/ew;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ew;

    .line 144
    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ew;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultimap;->copyOf(Lcom/google/common/collect/ew;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cb;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/common/collect/cb;->a:Lcom/google/common/collect/ew;

    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/ew;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    return-object p0
.end method
