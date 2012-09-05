.class Lcom/google/googlenav/ui/wizard/ac;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/P;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ac;-><init>(Lcom/google/googlenav/ui/wizard/P;)V

    return-void
.end method


# virtual methods
.method public a(ILaE/h;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(I)V

    :cond_13
    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->m(Lcom/google/googlenav/ui/wizard/P;)LaE/l;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    invoke-virtual {v0}, LaE/l;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0}, LaE/l;->c()LaJ/B;

    move-result-object v3

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ad;->a(II)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ad;->a(LaE/l;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ac;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(I)V

    goto :goto_33
.end method
