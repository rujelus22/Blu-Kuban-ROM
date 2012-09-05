.class Lcom/google/googlenav/ui/wizard/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bs;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;Z)V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-static {v1, p1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;Lam/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;Ljava/util/List;)V

    return-void
.end method
