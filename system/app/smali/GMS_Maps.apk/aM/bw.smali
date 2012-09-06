.class public LaM/bw;
.super LaM/y;
.source "SourceFile"


# instance fields
.field private C:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v5, Lcom/google/googlenav/layer/m;

    const-string v0, "s"

    invoke-direct {v5, v0}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lat/p;->a()Lat/D;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/o;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/bw;->C:Z

    .line 58
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->a()Lah/a;

    .line 59
    return-void
.end method


# virtual methods
.method protected X()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0}, LaM/y;->X()Z

    .line 75
    iget-boolean v0, p0, LaM/bw;->C:Z

    if-eqz v0, :cond_2e

    .line 76
    iget-object v0, p0, LaM/bw;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/bw;->b(Lat/B;)I

    move-result v0

    .line 77
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LaM/bw;->b(B)V

    .line 79
    invoke-virtual {p0}, LaM/bw;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->a(I)V

    .line 80
    iget-object v0, p0, LaM/bw;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->d(LaM/i;)V

    .line 81
    invoke-virtual {p0}, LaM/bw;->an()Z

    .line 83
    :cond_2c
    iput-boolean v2, p0, LaM/bw;->C:Z

    .line 85
    :cond_2e
    return v2
.end method

.method public Y()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/bw;->e(Z)V

    .line 64
    return-void
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public aT()Z
    .registers 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 118
    iget-object v0, p0, LaM/bw;->c:Lat/p;

    invoke-virtual {v0, p0}, Lat/p;->a(Lat/m;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 3

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 128
    invoke-virtual {p0}, LaM/bw;->f()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 131
    iget-object v0, p0, LaM/bw;->c:Lat/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/m;)V

    .line 132
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 90
    const/16 v0, 0x10

    return v0
.end method

.method protected bE()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_a

    .line 143
    invoke-super {p0, p1}, LaM/y;->g(I)Z

    move-result v0

    :goto_7
    return v0

    .line 140
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    .line 136
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
