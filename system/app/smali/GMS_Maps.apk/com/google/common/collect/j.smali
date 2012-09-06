.class Lcom/google/common/collect/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/i;

    iput-object p2, p0, Lcom/google/common/collect/j;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/collect/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/collect/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/j;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/common/collect/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/i;

    iget-object v0, v0, Lcom/google/common/collect/i;->b:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/j;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/a;->b(Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 252
    return-void
.end method
