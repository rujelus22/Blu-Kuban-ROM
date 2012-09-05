.class final Lcom/google/common/collect/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/dn;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dn;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/common/collect/do;->b:Lcom/google/common/collect/dn;

    iput-object p2, p0, Lcom/google/common/collect/do;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ds;

    iget-object v0, v0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 627
    return-void
.end method
