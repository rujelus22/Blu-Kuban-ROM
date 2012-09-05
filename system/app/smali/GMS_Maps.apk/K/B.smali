.class LK/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:LK/A;


# direct methods
.method constructor <init>(LK/A;)V
    .registers 4

    iput-object p1, p0, LK/B;->c:LK/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, LK/B;->c:LK/A;

    iget-object v0, v0, LK/A;->c:Ljava/util/Collection;

    iput-object v0, p0, LK/B;->b:Ljava/util/Collection;

    iget-object v0, p1, LK/A;->f:LK/r;

    iget-object v1, p1, LK/A;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, LK/r;->a(LK/r;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LK/B;->a:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(LK/A;Ljava/util/Iterator;)V
    .registers 4

    iput-object p1, p0, LK/B;->c:LK/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, LK/B;->c:LK/A;

    iget-object v0, v0, LK/A;->c:Ljava/util/Collection;

    iput-object v0, p0, LK/B;->b:Ljava/util/Collection;

    iput-object p2, p0, LK/B;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, LK/B;->c:LK/A;

    invoke-virtual {v0}, LK/A;->a()V

    iget-object v0, p0, LK/B;->c:LK/A;

    iget-object v0, v0, LK/A;->c:Ljava/util/Collection;

    iget-object v1, p0, LK/B;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method b()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/B;->a()V

    iget-object v0, p0, LK/B;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    invoke-virtual {p0}, LK/B;->a()V

    iget-object v0, p0, LK/B;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/B;->a()V

    iget-object v0, p0, LK/B;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, LK/B;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, LK/B;->c:LK/A;

    iget-object v0, v0, LK/A;->f:LK/r;

    invoke-static {v0}, LK/r;->b(LK/r;)I

    iget-object v0, p0, LK/B;->c:LK/A;

    invoke-virtual {v0}, LK/A;->b()V

    return-void
.end method
