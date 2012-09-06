.class final Lcom/google/common/collect/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/base/D;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/D;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/ch;->b:Lcom/google/common/base/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/google/common/collect/ch;->b:Lcom/google/common/base/D;

    invoke-interface {v1, v0}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/common/collect/ch;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 770
    return-void
.end method
