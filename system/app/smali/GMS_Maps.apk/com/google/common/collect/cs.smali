.class Lcom/google/common/collect/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/ct;

.field c:Lcom/google/common/collect/ct;

.field final synthetic d:Lcom/google/common/collect/cj;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 4
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/common/collect/cs;->d:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/common/collect/cs;->d:Lcom/google/common/collect/cj;

    invoke-virtual {v1}, Lcom/google/common/collect/cj;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/cs;->a:Ljava/util/Set;

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/cs;->d:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;)Lcom/google/common/collect/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/common/collect/cs;-><init>(Lcom/google/common/collect/cj;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    invoke-static {v0}, Lcom/google/common/collect/cj;->e(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/cs;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    .line 316
    iget-object v0, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/cs;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/cs;->b:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 317
    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 322
    iget-object v0, p0, Lcom/google/common/collect/cs;->d:Lcom/google/common/collect/cj;

    iget-object v1, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cs;->c:Lcom/google/common/collect/ct;

    .line 324
    return-void

    .line 321
    :cond_15
    const/4 v0, 0x0

    goto :goto_5
.end method
