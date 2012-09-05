.class Lcom/google/googlenav/ui/aF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aD;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/aD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aD;Lcom/google/googlenav/ui/aE;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aF;-><init>(Lcom/google/googlenav/ui/aD;)V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->R()Lcom/google/googlenav/ui/wizard/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dv;->B_()V

    return-void
.end method

.method public C_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->R()Lcom/google/googlenav/ui/wizard/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dv;->C_()V

    return-void
.end method

.method public E_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->c(Lcom/google/googlenav/ui/aD;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aD;->b()V

    :cond_1c
    return-void
.end method

.method public F_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->R()Lcom/google/googlenav/ui/wizard/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dv;->F_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->b(Lcom/google/googlenav/ui/aD;)LaY/Y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaY/Y;->d(I)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x274

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->c(Lcom/google/googlenav/ui/aD;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/aF;->a:Lcom/google/googlenav/ui/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/aD;->a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->R()Lcom/google/googlenav/ui/wizard/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dv;->i()V

    return-void
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
