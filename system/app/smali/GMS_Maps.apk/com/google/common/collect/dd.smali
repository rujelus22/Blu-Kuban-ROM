.class Lcom/google/common/collect/dd;
.super Lcom/google/common/collect/bE;
.source "SourceFile"


# instance fields
.field final d:Lcom/google/common/collect/db;


# direct methods
.method constructor <init>(Lcom/google/common/collect/db;)V
    .registers 4
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/common/collect/db;->a(Lcom/google/common/collect/db;)[Lcom/google/common/collect/de;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/db;->b(Lcom/google/common/collect/db;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/bE;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, Lcom/google/common/collect/dd;->d:Lcom/google/common/collect/db;

    .line 231
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dd;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/collect/dd;->d:Lcom/google/common/collect/db;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/db;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
