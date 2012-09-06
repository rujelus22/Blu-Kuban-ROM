.class final Lcom/google/common/collect/mv;
.super Lcom/google/common/collect/cx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/cx;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/mv;->a:Ljava/util/Map;

    .line 40
    return-void
.end method

.method static a(Ljava/util/Map;)Lcom/google/common/collect/mv;
    .registers 2
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/google/common/collect/mv;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mv;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/mv;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/mv;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/collect/mv;->b:Ljava/util/Set;

    .line 58
    if-eqz v0, :cond_5

    .line 61
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/mv;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/mw;

    invoke-direct {v1, p0}, Lcom/google/common/collect/mw;-><init>(Ljava/util/Map;)V

    new-instance v2, Lcom/google/common/collect/jz;

    const-string v3, "set"

    invoke-static {v0, v3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v3, "bijection"

    invoke-static {v1, v3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/jx;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/jz;-><init>(Ljava/util/Set;Lcom/google/common/collect/jx;)V

    iput-object v2, p0, Lcom/google/common/collect/mv;->b:Ljava/util/Set;

    move-object v0, v2

    goto :goto_4
.end method
