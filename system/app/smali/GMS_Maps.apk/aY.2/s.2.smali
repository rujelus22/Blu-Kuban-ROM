.class public LaY/s;
.super LaY/aG;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V
    .registers 10

    invoke-direct/range {p0 .. p8}, LaY/aG;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/google/googlenav/n;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LaY/s;->b(B)V

    return-void
.end method


# virtual methods
.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x12

    return v0
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 5

    const/16 v3, 0x1c

    invoke-virtual {p0}, LaY/s;->bA()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, LaY/s;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_25

    const/16 v2, 0xb

    if-eq v1, v2, :cond_25

    if-eq v1, v3, :cond_25

    invoke-super {p0}, LaY/aG;->o()V

    goto :goto_8

    :cond_25
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    iget-object v0, p0, LaY/s;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->f(LaY/i;)V

    if-ne v1, v3, :cond_3b

    iget-object v0, p0, LaY/s;->b:Lcom/google/googlenav/ui/D;

    const-string v1, "recent"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->d(Ljava/lang/String;)V

    goto :goto_8

    :cond_3b
    iget-object v0, p0, LaY/s;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    goto :goto_8

    :sswitch_4d
    check-cast v0, LaY/m;

    invoke-virtual {v0}, LaY/m;->bF()V

    goto :goto_8

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_4d
        0x2 -> :sswitch_4d
        0xd -> :sswitch_4d
    .end sparse-switch
.end method
