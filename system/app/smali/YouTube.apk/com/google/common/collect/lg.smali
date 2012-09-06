.class final Lcom/google/common/collect/lg;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/lf;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lf;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/google/common/collect/lg;->b:Lcom/google/common/collect/lf;

    iput-object p2, p0, Lcom/google/common/collect/lg;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/common/collect/lg;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/common/collect/lg;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableEntry;

    iget-object v2, p0, Lcom/google/common/collect/lg;->b:Lcom/google/common/collect/lf;

    iget-object v2, v2, Lcom/google/common/collect/lf;->a:Lcom/google/common/collect/le;

    iget-object v2, v2, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
