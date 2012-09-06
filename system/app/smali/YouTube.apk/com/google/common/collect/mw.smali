.class final Lcom/google/common/collect/mw;
.super Lcom/google/common/collect/jx;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/common/collect/jx;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/common/collect/mw;->a:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 65
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/collect/mx;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/mx;-><init>(Lcom/google/common/collect/mw;Ljava/lang/Object;)V

    return-object v0
.end method
