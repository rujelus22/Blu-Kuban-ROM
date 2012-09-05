.class final Lcom/google/common/collect/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/fb;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fb;)V
    .registers 3
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/google/common/collect/fc;->b:Lcom/google/common/collect/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iget-object v0, p0, Lcom/google/common/collect/fc;->b:Lcom/google/common/collect/fb;

    iget-object v0, v0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fc;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/common/collect/fc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/fc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/fd;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fd;-><init>(Lcom/google/common/collect/fc;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/common/collect/fc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1120
    return-void
.end method
