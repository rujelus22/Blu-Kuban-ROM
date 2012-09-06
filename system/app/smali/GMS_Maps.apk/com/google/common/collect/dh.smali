.class Lcom/google/common/collect/dh;
.super Lcom/google/common/collect/br;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/db;


# direct methods
.method constructor <init>(Lcom/google/common/collect/db;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/common/collect/br;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/db;

    .line 259
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 3

    .prologue
    .line 267
    new-instance v0, Lcom/google/common/collect/di;

    iget-object v1, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/db;

    invoke-static {v1}, Lcom/google/common/collect/db;->a(Lcom/google/common/collect/db;)[Lcom/google/common/collect/de;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/di;-><init>(Lcom/google/common/collect/dh;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/db;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/db;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/dh;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/db;

    invoke-static {v0}, Lcom/google/common/collect/db;->a(Lcom/google/common/collect/db;)[Lcom/google/common/collect/de;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
