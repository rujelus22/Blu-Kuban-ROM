.class public LaM/x;
.super LaM/bj;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/google/googlenav/n;->a(I)V

    .line 36
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LaM/x;->b(B)V

    .line 37
    return-void
.end method


# virtual methods
.method public aB()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public av()I
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x12

    return v0
.end method

.method public h()V
    .registers 5

    .prologue
    const/16 v3, 0x1c

    .line 66
    invoke-virtual {p0}, LaM/x;->by()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    :goto_8
    return-void

    .line 70
    :cond_9
    iget-object v0, p0, LaM/x;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    .line 75
    const/16 v2, 0xd

    if-eq v1, v2, :cond_25

    const/16 v2, 0xb

    if-eq v1, v2, :cond_25

    if-eq v1, v3, :cond_25

    .line 78
    invoke-super {p0}, LaM/bj;->h()V

    goto :goto_8

    .line 82
    :cond_25
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 83
    if-ne v1, v3, :cond_3c

    .line 87
    iget-object v0, p0, LaM/x;->b:Lcom/google/googlenav/ui/v;

    const-string v1, "recent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    .line 89
    iget-object v0, p0, LaM/x;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    goto :goto_8

    .line 93
    :cond_3c
    iget-object v0, p0, LaM/x;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 94
    iget-object v0, p0, LaM/x;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e

    goto :goto_8

    .line 103
    :sswitch_57
    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->bC()V

    goto :goto_8

    .line 95
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_57
        0x2 -> :sswitch_57
        0xd -> :sswitch_57
        0x1a -> :sswitch_57
    .end sparse-switch
.end method

.method protected l()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method
