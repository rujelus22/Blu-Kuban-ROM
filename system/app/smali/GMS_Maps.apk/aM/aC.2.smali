.class LaM/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lae/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:LaM/az;


# direct methods
.method constructor <init>(LaM/az;ILjava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, LaM/aC;->c:LaM/az;

    iput p2, p0, LaM/aC;->a:I

    iput-object p3, p0, LaM/aC;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, LaM/aC;->b:Ljava/util/List;

    iget-object v1, p0, LaM/aC;->c:LaM/az;

    invoke-static {v1}, LaM/az;->b(LaM/az;)Ljava/util/List;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 280
    :cond_a
    :goto_a
    return-void

    .line 270
    :cond_b
    iget-object v0, p0, LaM/aC;->b:Ljava/util/List;

    iget v1, p0, LaM/aC;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 277
    iget-object v0, p0, LaM/aC;->b:Ljava/util/List;

    iget v1, p0, LaM/aC;->a:I

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, LaM/aC;->c:LaM/az;

    invoke-static {v0}, LaM/az;->c(LaM/az;)I

    .line 279
    iget-object v0, p0, LaM/aC;->c:LaM/az;

    invoke-static {v0}, LaM/az;->d(LaM/az;)V

    goto :goto_a
.end method
