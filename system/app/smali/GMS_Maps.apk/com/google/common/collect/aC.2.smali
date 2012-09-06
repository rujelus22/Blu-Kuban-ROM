.class Lcom/google/common/collect/aC;
.super Lcom/google/common/collect/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/aA;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aA;Lcom/google/common/collect/au;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3252
    iput-object p1, p0, Lcom/google/common/collect/aC;->a:Lcom/google/common/collect/aA;

    invoke-direct {p0, p2}, Lcom/google/common/collect/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 4
    .parameter

    .prologue
    .line 3256
    invoke-interface {p1}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3257
    iget-object v1, p0, Lcom/google/common/collect/aC;->a:Lcom/google/common/collect/aA;

    iget-object v1, v1, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 3252
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/aC;->a(Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method
