.class public LaM/D;
.super LaM/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 31
    return-void
.end method


# virtual methods
.method public aB()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public av()I
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0xb

    return v0
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_a

    .line 62
    invoke-super {p0, p1}, LaM/y;->g(I)Z

    move-result v0

    :goto_7
    return v0

    .line 59
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    .line 55
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
