.class final Lcom/google/common/cache/as;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/cache/aq;


# direct methods
.method constructor <init>(Lcom/google/common/cache/aq;Lcom/google/common/cache/x;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3738
    iput-object p1, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/aq;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3738
    check-cast p1, Lcom/google/common/cache/x;

    invoke-interface {p1}, Lcom/google/common/cache/x;->getNextInWriteQueue()Lcom/google/common/cache/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/aq;

    iget-object v1, v1, Lcom/google/common/cache/aq;->a:Lcom/google/common/cache/x;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
