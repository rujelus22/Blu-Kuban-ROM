.class Lcom/google/googlenav/ui/wizard/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/H;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/P;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ab;-><init>(Lcom/google/googlenav/ui/wizard/P;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->k(Lcom/google/googlenav/ui/wizard/P;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->l(Lcom/google/googlenav/ui/wizard/P;)LaD/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaD/i;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->b()V

    return-void
.end method
