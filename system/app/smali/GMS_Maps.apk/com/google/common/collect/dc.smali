.class Lcom/google/common/collect/dc;
.super Lcom/google/common/collect/bC;
.source "SourceFile"


# instance fields
.field final transient b:Lcom/google/common/collect/db;


# direct methods
.method constructor <init>(Lcom/google/common/collect/db;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/collect/db;->a(Lcom/google/common/collect/db;)[Lcom/google/common/collect/de;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bC;-><init>([Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/dc;->b:Lcom/google/common/collect/db;

    .line 204
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    .line 208
    check-cast p1, Ljava/util/Map$Entry;

    .line 209
    iget-object v1, p0, Lcom/google/common/collect/dc;->b:Lcom/google/common/collect/db;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/db;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 212
    :cond_1e
    return v0
.end method
