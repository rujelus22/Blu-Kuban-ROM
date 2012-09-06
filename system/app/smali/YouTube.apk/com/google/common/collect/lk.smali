.class final Lcom/google/common/collect/lk;
.super Lcom/google/common/collect/hd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/li;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/li;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/common/collect/lk;->a:Lcom/google/common/collect/li;

    invoke-direct {p0}, Lcom/google/common/collect/hd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/li;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/google/common/collect/lk;-><init>(Lcom/google/common/collect/li;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/lk;->a:Lcom/google/common/collect/li;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/common/collect/lk;->a:Lcom/google/common/collect/li;

    invoke-virtual {v0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    .line 458
    if-nez v0, :cond_d

    .line 459
    invoke-static {}, Lcom/google/common/collect/ee;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 462
    :goto_c
    return-object v0

    .line 461
    :cond_d
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 462
    new-instance v0, Lcom/google/common/collect/ll;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ll;-><init>(Lcom/google/common/collect/lk;Ljava/util/Iterator;)V

    goto :goto_c
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/collect/lk;->a:Lcom/google/common/collect/li;

    invoke-virtual {v0}, Lcom/google/common/collect/li;->a()Ljava/util/Map;

    move-result-object v0

    .line 452
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_9
.end method
