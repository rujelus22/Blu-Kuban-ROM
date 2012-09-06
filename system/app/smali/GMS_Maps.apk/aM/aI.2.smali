.class public LaM/aI;
.super LaM/bj;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/bu;


# instance fields
.field private E:Lcom/google/googlenav/ui/view/dialog/bs;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/googlenav/ui/view/dialog/bs;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v7, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 70
    iput-object p7, p0, LaM/aI;->E:Lcom/google/googlenav/ui/view/dialog/bs;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/googlenav/ui/view/dialog/bs;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v9, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 93
    move-object/from16 v0, p8

    iput-object v0, p0, LaM/aI;->E:Lcom/google/googlenav/ui/view/dialog/bs;

    .line 94
    return-void
.end method

.method static synthetic a(LaM/aI;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, LaM/aI;->bS()V

    return-void
.end method

.method private bS()V
    .registers 5

    .prologue
    .line 175
    invoke-virtual {p0}, LaM/aI;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 176
    iget-object v1, p0, LaM/aI;->y:Lah/s;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aE()[Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, LaM/aK;

    invoke-direct {v3, p0}, LaM/aK;-><init>(LaM/aI;)V

    iget-object v0, p0, LaM/aI;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    invoke-virtual {v1, v2, v3, v0}, Lah/s;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    .line 183
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/dialog/br;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, LaM/aI;->h()V

    .line 233
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0}, LaM/aI;->bN()Lcom/google/googlenav/aW;

    .line 188
    sparse-switch p1, :sswitch_data_28

    .line 202
    invoke-super {p0, p1, p2, p3}, LaM/bj;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_b
    return v0

    .line 192
    :sswitch_c
    const/4 v1, 0x0

    iput-boolean v1, p0, LaM/aI;->B:Z

    .line 193
    iput p2, p0, LaM/aI;->D:I

    .line 194
    const-string v1, "o"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, LaM/aI;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p2}, LaM/aI;->j(I)V

    goto :goto_b

    .line 198
    :sswitch_1c
    iget-object v1, p0, LaM/aI;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    iget-object v2, p0, LaM/aI;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/view/android/bb;)V

    goto :goto_b

    .line 188
    :sswitch_data_28
    .sparse-switch
        0x2bc -> :sswitch_c
        0x76f -> :sswitch_1c
    .end sparse-switch
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public aF()I
    .registers 3

    .prologue
    .line 207
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 210
    iget-object v0, p0, LaM/aI;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const v0, 0x7f110010

    .line 213
    :goto_16
    return v0

    .line 210
    :cond_17
    const v0, 0x7f110011

    goto :goto_16

    .line 213
    :cond_1b
    invoke-super {p0}, LaM/bj;->aF()I

    move-result v0

    goto :goto_16
.end method

.method protected ap()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, LaM/aI;->E:Lcom/google/googlenav/ui/view/dialog/bs;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bs;->a(Lcom/google/googlenav/ui/view/dialog/bu;)Lcom/google/googlenav/ui/view/dialog/br;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, LaM/aI;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/br;->a(Lcom/google/googlenav/ai;I)V

    .line 137
    invoke-virtual {p0}, LaM/aI;->bI()V

    .line 138
    iput-object v0, p0, LaM/aI;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 139
    return-void
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/aI;->d(Z)V

    .line 145
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bv;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bv;-><init>(LaM/aI;)V

    iput-object v0, p0, LaM/aI;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 153
    invoke-virtual {p0}, LaM/aI;->bE()V

    .line 154
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 98
    const/16 v0, 0x1a

    return v0
.end method

.method protected b(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, LaM/bj;->b(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, LaM/aI;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/common/offerslib/x;->b:Lcom/google/android/apps/common/offerslib/x;

    invoke-virtual {v1}, Lcom/google/android/apps/common/offerslib/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/offers/i;->a(Lcom/google/googlenav/aW;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0}, LaM/aI;->h()V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method protected bE()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, LaM/aI;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_10

    .line 161
    new-instance v1, LaM/aJ;

    invoke-direct {v1, p0, v0}, LaM/aJ;-><init>(LaM/aI;LY/c;)V

    invoke-virtual {v1}, LaM/aJ;->g()V

    .line 168
    :cond_10
    return-void
.end method

.method protected c(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, LaM/bj;->c(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, LaM/aI;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->az()Lcom/google/googlenav/offers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/offers/a;->e()V

    .line 221
    invoke-static {}, Lcom/google/googlenav/offers/k;->h()Lcom/google/googlenav/offers/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/offers/k;->d()V

    .line 222
    return-void
.end method

.method protected c(Lcom/google/googlenav/aW;)Z
    .registers 3
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/googlenav/ui/view/dialog/br;)Z
    .registers 3
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 103
    const/16 v0, 0xb

    return v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected k(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
