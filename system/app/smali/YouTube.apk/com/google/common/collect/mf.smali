.class final Lcom/google/common/collect/mf;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Ljava/util/Comparator;

.field final synthetic d:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/common/collect/mf;->d:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/mf;->b:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/mf;->c:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/mf;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/mf;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/mf;->a:Ljava/lang/Object;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/common/collect/mf;->c:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/mf;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    .line 363
    :goto_1d
    if-nez v0, :cond_0

    .line 364
    iput-object v1, p0, Lcom/google/common/collect/mf;->a:Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/mf;->a:Ljava/lang/Object;

    .line 370
    :goto_23
    return-object v0

    .line 359
    :cond_24
    const/4 v0, 0x0

    goto :goto_1d

    .line 369
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/mf;->a:Ljava/lang/Object;

    .line 370
    invoke-virtual {p0}, Lcom/google/common/collect/mf;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_23
.end method
