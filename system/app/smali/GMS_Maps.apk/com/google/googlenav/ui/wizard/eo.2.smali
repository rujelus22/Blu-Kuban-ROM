.class public Lcom/google/googlenav/ui/wizard/eO;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/google/googlenav/ui/view/dialog/cF;

.field c:Lcom/google/googlenav/ui/view/dialog/bD;

.field i:Lcom/google/googlenav/ui/view/dialog/bO;

.field final j:Lax/m;

.field k:Lcom/google/googlenav/ui/wizard/dG;

.field private l:Lax/L;

.field private m:Landroid/support/v4/view/ViewPager;

.field private n:Lcom/google/googlenav/ui/ba;

.field private o:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lax/m;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 58
    const-string v0, "recent"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eO;->j:Lax/m;

    .line 90
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->c()Lax/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->l:Lax/L;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eO;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->m:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eO;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eO;->m:Landroid/support/v4/view/ViewPager;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eO;Lcom/google/googlenav/ui/ba;)Lcom/google/googlenav/ui/ba;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eO;->n:Lcom/google/googlenav/ui/ba;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eO;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eO;->o:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eO;)Lax/L;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->l:Lax/L;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    const-string v1, "stars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 410
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->c()Landroid/view/View;

    move-result-object v0

    .line 416
    :cond_f
    :goto_f
    return-object v0

    .line 411
    :cond_10
    const-string v1, "recent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 412
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bD;->c()Landroid/view/View;

    move-result-object v0

    goto :goto_f

    .line 413
    :cond_1f
    const-string v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->c()Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    if-nez v0, :cond_6

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/dialog/cF;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected a(ILandroid/view/View;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->n:Lcom/google/googlenav/ui/ba;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/ba;->a(ILandroid/view/View;)V

    .line 403
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method protected b()V
    .registers 7

    .prologue
    .line 134
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bD;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->j:Lax/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eO;->k:Lcom/google/googlenav/ui/wizard/dG;

    new-instance v5, Lcom/google/googlenav/ui/wizard/eP;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/wizard/eP;-><init>(Lcom/google/googlenav/ui/wizard/eO;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/bD;-><init>(Lax/m;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/dG;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->j()LaM/bx;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->k:Lcom/google/googlenav/ui/wizard/dG;

    invoke-virtual {v0, v1}, LaM/bx;->a(Lcom/google/googlenav/ui/wizard/dG;)V

    .line 145
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/cF;-><init>(LaM/bx;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    .line 147
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 148
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bO;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 152
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_46

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 156
    :cond_46
    new-instance v0, Lcom/google/googlenav/ui/wizard/eQ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eQ;-><init>(Lcom/google/googlenav/ui/wizard/eO;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 159
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 160
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0, v1}, Laz/a;->a(Laz/m;)V

    .line 163
    :cond_61
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->l:Lax/L;

    const/4 v1, 0x0

    sget-object v2, Lax/I;->b:Lax/I;

    invoke-interface {v0, v1, v2}, Lax/L;->a(ZLax/I;)V

    .line 164
    return-void
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 169
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eO;->k:Lcom/google/googlenav/ui/wizard/dG;

    .line 170
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->b()Lax/U;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-interface {v0, v1}, Lax/U;->b(Lax/V;)V

    .line 172
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-interface {v0, v1}, Lax/U;->b(Lax/V;)V

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    if-eqz v0, :cond_23

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bD;->dismiss()V

    .line 176
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eO;->c:Lcom/google/googlenav/ui/view/dialog/bD;

    .line 178
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    if-eqz v0, :cond_2e

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->dismiss()V

    .line 180
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    .line 182
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    if-eqz v0, :cond_42

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->dismiss()V

    .line 184
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0, v1}, Laz/a;->b(Laz/m;)V

    .line 185
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eO;->i:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 187
    :cond_42
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->b:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->i()V

    .line 214
    :cond_11
    return-void
.end method

.method public h()V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->k:Lcom/google/googlenav/ui/wizard/dG;

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    .line 193
    :goto_5
    if-eqz v0, :cond_18

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->y()Lcom/google/googlenav/ui/wizard/dp;

    move-result-object v0

    const/16 v1, 0x32c

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/dp;->a(IILjava/lang/Object;)Z

    .line 197
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_37

    .line 199
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(I)V

    .line 202
    :cond_37
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 203
    return-void

    .line 192
    :cond_3b
    const/4 v0, 0x0

    goto :goto_5
.end method
