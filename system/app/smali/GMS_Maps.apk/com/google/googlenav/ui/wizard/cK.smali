.class Lcom/google/googlenav/ui/wizard/cK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cK;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cK;->a:Lcom/google/googlenav/ui/wizard/cA;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cK;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cA;Lam/b;)V

    return-void
.end method
