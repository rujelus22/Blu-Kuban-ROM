.class Lcom/google/googlenav/ui/wizard/eB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eQ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;Lcom/google/googlenav/ui/wizard/eQ;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eB;->b:Lcom/google/googlenav/ui/wizard/eA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eB;->a:Lcom/google/googlenav/ui/wizard/eQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eB;->b:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    if-eqz p2, :cond_17

    invoke-static {p2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eB;->a:Lcom/google/googlenav/ui/wizard/eQ;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/eQ;->a(Lcom/google/googlenav/ah;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eB;->b:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x335

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_16
.end method
