.class Lcom/google/googlenav/ui/wizard/eN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/ui/wizard/eM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/ui/wizard/eM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->i(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/bb;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/ui/wizard/eM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/ui/wizard/eM;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eM;->a:LaE/l;

    invoke-virtual {v1}, LaE/l;->c()LaJ/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;LaJ/B;)V

    :cond_19
    return-void
.end method
