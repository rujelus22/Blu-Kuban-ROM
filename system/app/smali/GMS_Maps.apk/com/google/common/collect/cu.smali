.class Lcom/google/common/collect/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/ct;

.field b:Lcom/google/common/collect/ct;

.field final synthetic c:Lcom/google/common/collect/cj;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/cu;->c:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/cu;->c:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;)Lcom/google/common/collect/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/common/collect/cu;-><init>(Lcom/google/common/collect/cj;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ct;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    invoke-static {v0}, Lcom/google/common/collect/cj;->e(Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cu;->b:Lcom/google/common/collect/ct;

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->c:Lcom/google/common/collect/ct;

    iput-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/cu;->b:Lcom/google/common/collect/ct;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/cu;->a()Lcom/google/common/collect/ct;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/common/collect/cu;->b:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/common/collect/cu;->c:Lcom/google/common/collect/cj;

    iget-object v1, p0, Lcom/google/common/collect/cu;->b:Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Lcom/google/common/collect/cj;->a(Lcom/google/common/collect/cj;Lcom/google/common/collect/ct;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cu;->b:Lcom/google/common/collect/ct;

    .line 296
    return-void

    .line 293
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
