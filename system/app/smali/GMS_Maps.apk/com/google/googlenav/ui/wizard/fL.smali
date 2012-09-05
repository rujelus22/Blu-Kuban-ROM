.class Lcom/google/googlenav/ui/wizard/fL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/cc;


# instance fields
.field private final a:Lcom/google/googlenav/ah;

.field private final b:Lcom/google/googlenav/ui/bF;

.field private final c:Lcom/google/googlenav/ui/view/android/Z;

.field private final d:LaS/e;

.field private final e:Lcom/google/googlenav/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;LaS/e;Lcom/google/googlenav/L;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Lcom/google/googlenav/ui/bF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Lcom/google/googlenav/L;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;Lcom/google/googlenav/ui/view/android/Z;Lcom/google/googlenav/L;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Lcom/google/googlenav/ui/bF;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Lcom/google/googlenav/L;

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/Z;->a(Z)V

    :cond_e
    :goto_e
    if-eqz p1, :cond_7e

    if-eqz p2, :cond_7e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->a()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/google/googlenav/aw;

    invoke-direct {v3, v0}, Lcom/google/googlenav/aw;-><init>(Lam/b;)V

    invoke-virtual {v3}, Lcom/google/googlenav/aw;->b()Lcom/google/googlenav/ui/bG;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/av;->a(Lcom/google/googlenav/aw;)Z

    goto :goto_1f

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    invoke-virtual {v0, v2}, LaS/e;->a(Z)V

    goto :goto_e

    :cond_52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/fK;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/fK;-><init>(Lcom/google/googlenav/ui/view/android/Z;LaS/e;)V

    invoke-virtual {v0, v1, v2}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    :cond_6a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/view/android/Z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Z;->onContentChanged()V

    :cond_73
    :goto_73
    return-void

    :cond_74
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:LaS/e;

    invoke-virtual {v0}, LaS/e;->i()V

    goto :goto_73

    :cond_7e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Lcom/google/googlenav/L;

    const/16 v1, 0x345

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/av;->a(Z)V

    goto :goto_73
.end method
