.class public Lcom/google/googlenav/ui/wizard/da;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/da;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/da;->a:Lcom/google/googlenav/ui/wizard/cA;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/da;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/cA;->b(Lcom/google/googlenav/ui/wizard/cA;Lam/b;)Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/da;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cA;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/da;->a:Lcom/google/googlenav/ui/wizard/cA;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method
