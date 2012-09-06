.class public LaM/aL;
.super LaM/i;
.source "SourceFile"

# interfaces
.implements Laz/m;


# instance fields
.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v5, LaM/aO;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, LaM/aO;-><init>(LaM/aM;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/i;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 65
    iput-object p5, p0, LaM/aL;->u:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic a(LaM/aL;Lcom/google/googlenav/F;Laz/f;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, LaM/aL;->a(Lcom/google/googlenav/F;Laz/f;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/F;Laz/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    if-nez p2, :cond_3

    .line 76
    :goto_2
    return-void

    .line 73
    :cond_3
    check-cast p1, LaM/aO;

    new-instance v1, LaM/aN;

    invoke-virtual {p2}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/E;

    invoke-direct {v1, v0}, LaM/aN;-><init>(Lcom/google/googlenav/prefetch/android/E;)V

    invoke-virtual {p1, v1}, LaM/aO;->a(LaM/aN;)V

    goto :goto_2
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, LaM/i;->X()Z

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, LaM/aL;->f:Lcom/google/googlenav/F;

    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/aL;->b(I)V

    .line 157
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 270
    return-void
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f110012

    :goto_9
    return v0

    :cond_a
    invoke-super {p0}, LaM/i;->aF()I

    move-result v0

    goto :goto_9
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 208
    const/16 v0, 0x344

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    const/16 v0, 0x33f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()LS/f;
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, LaM/aL;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->aw:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public aT()Z
    .registers 2

    .prologue
    .line 212
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->a(Laz/m;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 2

    .prologue
    .line 254
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->b(Laz/m;)V

    .line 255
    return-void
.end method

.method public aW()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 218
    invoke-super {p0}, LaM/i;->aW()V

    .line 219
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 220
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 222
    const v1, 0x7f04011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 223
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    iget-object v2, p0, LaM/aL;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 231
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_47
    return-void
.end method

.method public aX()V
    .registers 3

    .prologue
    .line 241
    invoke-super {p0}, LaM/i;->aX()V

    .line 242
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 243
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->j()V

    .line 247
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_1d
    return-void
.end method

.method protected ap()V
    .registers 1

    .prologue
    .line 265
    return-void
.end method

.method protected aq()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 181
    const/16 v0, 0x16

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, LaM/aL;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    new-array v2, v0, [Lcom/google/googlenav/ui/aH;

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, LaM/aL;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 110
    invoke-virtual {p0}, LaM/aL;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, LaM/aN;

    .line 112
    invoke-virtual {v0}, LaM/aN;->h()Lcom/google/googlenav/ui/aH;

    move-result-object v0

    aput-object v0, v2, v1

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 114
    :cond_26
    return-object v2
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_11

    invoke-virtual {p1}, LZ/a;->e()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_39

    :cond_11
    iget-object v1, p0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aB()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_39

    .line 170
    iget-object v1, p0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 171
    iget-object v1, p0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    const-string v2, "offline"

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    .line 172
    iget-object v0, p0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 173
    const/4 v0, 0x1

    .line 176
    :cond_39
    return v0
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 119
    new-instance v0, LaO/g;

    invoke-direct {v0, p0}, LaO/g;-><init>(LaM/i;)V

    return-object v0
.end method

.method public onOfflineDataUpdate(Laz/l;)V
    .registers 5
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Laz/l;->n()Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    :goto_6
    return-void

    .line 87
    :cond_7
    iget-object v0, p0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, LaM/aM;

    invoke-direct {v1, p0, p1}, LaM/aM;-><init>(LaM/aL;Laz/l;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_6
.end method
