.class Lcom/google/common/collect/i;
.super Lcom/google/common/collect/bk;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/a;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/a;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/common/collect/i;->b:Lcom/google/common/collect/a;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/i;->b:Lcom/google/common/collect/a;

    invoke-static {v0}, Lcom/google/common/collect/a;->b(Lcom/google/common/collect/a;)Lcom/google/common/collect/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/a;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/common/collect/i;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/common/collect/i;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/i;->b:Lcom/google/common/collect/a;

    invoke-static {v0}, Lcom/google/common/collect/a;->a(Lcom/google/common/collect/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/common/collect/j;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/j;-><init>(Lcom/google/common/collect/i;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/common/collect/i;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
