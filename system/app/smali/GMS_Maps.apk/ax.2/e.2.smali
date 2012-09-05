.class Lax/e;
.super Lax/aq;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lax/aq;-><init>(Ljava/util/List;Lax/aC;Z)V

    iput-object p2, p0, Lax/e;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lax/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/d;

    iget-boolean v1, p0, Lax/e;->b:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lax/e;->a:Lam/b;

    :goto_19
    invoke-interface {v0, v1}, Lax/d;->a(Lam/b;)V

    iget-object v1, p0, Lax/e;->a:Lam/b;

    invoke-interface {v0, v1}, Lax/d;->c(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lax/e;->b:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lax/e;->a:Lam/b;

    :goto_2a
    invoke-interface {v0, v1}, Lax/d;->b(Lam/b;)V

    goto :goto_7

    :cond_2e
    move-object v1, v2

    goto :goto_19

    :cond_30
    move-object v1, v2

    goto :goto_2a

    :cond_32
    invoke-super {p0}, Lax/aq;->b()V

    return-void
.end method
