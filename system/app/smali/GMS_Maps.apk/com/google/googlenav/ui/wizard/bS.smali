.class Lcom/google/googlenav/ui/wizard/bS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lai/f;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bR;Lai/f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bS;->a:Lai/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bR;->f:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bR;->f:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lbd/a;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bS;->a:Lai/f;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bR;->f:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lbd/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bR;->e:Lcom/google/googlenav/ui/wizard/bU;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bS;->a:Lai/f;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/bU;->a(Lai/f;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bS;->b:Lcom/google/googlenav/ui/wizard/bR;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bR;->e:Lcom/google/googlenav/ui/wizard/bU;

    invoke-virtual {v0, v1}, Lbd/a;->a(Lcom/google/googlenav/ui/wizard/bU;)V

    :cond_2e
    return-void
.end method
