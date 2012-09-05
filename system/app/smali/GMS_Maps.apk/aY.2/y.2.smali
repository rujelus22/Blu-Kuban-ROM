.class public LaY/y;
.super LaY/t;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    return-void
.end method


# virtual methods
.method public aD()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aG()Z
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

    const/16 v0, 0xb

    return v0
.end method

.method public g(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_a

    invoke-super {p0, p1}, LaY/t;->g(I)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
