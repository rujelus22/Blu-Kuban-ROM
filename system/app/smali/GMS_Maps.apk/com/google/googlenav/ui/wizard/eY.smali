.class Lcom/google/googlenav/ui/wizard/eY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/fd;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eV;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/eV;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/eV;Lcom/google/googlenav/ui/wizard/eW;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eY;-><init>(Lcom/google/googlenav/ui/wizard/eV;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lax/au;->l()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x30a

    :goto_10
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/fe;->b(I)V

    :cond_19
    return-void

    :cond_1a
    const/16 v0, 0x17c

    goto :goto_10
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eV;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eV;->c(Lcom/google/googlenav/ui/wizard/eV;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/fe;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eY;->a:Lcom/google/googlenav/ui/wizard/eV;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eV;->a(Lcom/google/googlenav/ui/wizard/eV;)Lcom/google/googlenav/ui/wizard/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fe;->i()V

    :cond_2f
    return-void
.end method
