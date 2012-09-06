.class public Lcom/google/googlenav/ui/view/dialog/bm;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bm;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bm;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bm;->a:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic i()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bm;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method static synthetic l()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bm;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method static synthetic m()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bm;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    return-void
.end method

.method protected a(Ljava/lang/String;)Lcom/google/googlenav/aW;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 111
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bm;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v0}, Lat/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v0}, Lat/u;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->d(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->l(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    const-string v2, "29"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->i(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/bq;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/bq;-><init>(Lcom/google/googlenav/ui/view/dialog/bm;)V

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    .line 142
    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/google/googlenav/aW;

    invoke-direct {v2, v1, v0}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    return-object v2
.end method

.method public c()Landroid/view/View;
    .registers 10

    .prologue
    const v4, 0x7f100031

    const v3, 0x7f100030

    const/4 v8, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 49
    const v0, 0x7f100305

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    .line 50
    const v1, 0x7f100306

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    const v2, 0x7f10002e

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 52
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_95

    move v2, v3

    .line 53
    :goto_33
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 54
    :goto_39
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 55
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 58
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->setFeatureTypeRestrict(I)V

    .line 59
    const/16 v4, 0x35d

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    .line 61
    const/16 v4, 0x354

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v7}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v4, Lcom/google/googlenav/ui/view/dialog/bn;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/dialog/bn;-><init>(Lcom/google/googlenav/ui/view/dialog/bm;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bo;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/bo;-><init>(Lcom/google/googlenav/ui/view/dialog/bm;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bp;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/dialog/bp;-><init>(Lcom/google/googlenav/ui/view/dialog/bm;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v5

    :cond_95
    move v2, v4

    .line 52
    goto :goto_33

    :cond_97
    move v4, v3

    .line 53
    goto :goto_39
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const/16 v0, 0x342

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
