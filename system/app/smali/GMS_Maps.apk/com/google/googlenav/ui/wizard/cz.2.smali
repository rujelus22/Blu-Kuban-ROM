.class final Lcom/google/googlenav/ui/wizard/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cw;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/ui/wizard/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cw;Lcom/google/googlenav/ui/wizard/cu;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cz;-><init>(Lcom/google/googlenav/ui/wizard/cw;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cj;->a()V

    :cond_15
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cj;->e()V

    :cond_15
    return-void
.end method
