.class final Lcom/google/common/collect/hl;
.super Lcom/google/common/collect/hd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hk;)V
    .registers 2
    .parameter

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    invoke-direct {p0}, Lcom/google/common/collect/hd;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    iget-object v0, v0, Lcom/google/common/collect/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1215
    new-instance v1, Lcom/google/common/collect/hm;

    invoke-direct {v1, p0}, Lcom/google/common/collect/hm;-><init>(Lcom/google/common/collect/hl;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
