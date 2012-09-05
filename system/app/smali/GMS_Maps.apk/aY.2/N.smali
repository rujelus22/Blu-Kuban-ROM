.class LaY/N;
.super Ljava/lang/Object;

# interfaces
.implements LaX/f;


# instance fields
.field final synthetic a:LaY/K;


# direct methods
.method constructor <init>(LaY/K;)V
    .registers 2

    iput-object p1, p0, LaY/N;->a:LaY/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lax/bz;)V
    .registers 7

    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-static {v0}, LaY/K;->c(LaY/K;)Lax/aS;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/bz;->a(Lax/aS;)V

    invoke-virtual {p1}, Lax/bz;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-static {v0}, LaY/K;->e(LaY/K;)LaX/a;

    move-result-object v0

    iget-object v1, p0, LaY/N;->a:LaY/K;

    invoke-static {v1}, LaY/K;->d(LaY/K;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LaX/a;->a(Lcom/google/googlenav/android/ac;LaX/f;)V

    :goto_1e
    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->az()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->bK()V

    :cond_2b
    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-static {v0}, LaY/K;->g(LaY/K;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->e()V

    return-void

    :cond_35
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lax/bz;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/by;

    new-instance v3, Lay/o;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_58
    iget-object v0, p0, LaY/N;->a:LaY/K;

    invoke-static {v0}, LaY/K;->f(LaY/K;)Lay/a;

    move-result-object v0

    new-instance v2, LaY/O;

    invoke-direct {v2, p0}, LaY/O;-><init>(LaY/N;)V

    invoke-virtual {v0, v1, v2}, Lay/a;->a(Ljava/util/Vector;Lay/q;)Z

    goto :goto_1e
.end method
