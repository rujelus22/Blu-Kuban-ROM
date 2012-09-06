.class Lcom/google/common/collect/bL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field final synthetic a:Lcom/google/common/collect/bK;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/common/collect/bL;->a:Lcom/google/common/collect/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 412
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/bL;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 415
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
