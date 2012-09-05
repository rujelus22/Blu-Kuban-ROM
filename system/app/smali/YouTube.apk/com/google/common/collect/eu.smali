.class final Lcom/google/common/collect/eu;
.super Lcom/google/common/collect/bn;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/et;


# direct methods
.method constructor <init>(Lcom/google/common/collect/et;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/et;

    iput-object p2, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/bn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 552
    invoke-super {p0}, Lcom/google/common/collect/bn;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
