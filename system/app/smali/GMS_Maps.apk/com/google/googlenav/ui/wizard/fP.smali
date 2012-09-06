.class public Lcom/google/googlenav/ui/wizard/fp;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fo;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fo;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    const v0, 0x7f020348

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 136
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/fs;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fs;-><init>(Lcom/google/googlenav/ui/wizard/fp;)V

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 146
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1004e2

    if-ne v0, v1, :cond_16

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fo;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fo;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/view/android/bb;)V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_15
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const v7, 0x7f10001e

    const/4 v6, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    const v1, 0x7f04011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    const v0, 0x7f1001fa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fp;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/fp;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :goto_2f
    const v0, 0x7f100034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f100262

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    const/16 v3, 0x32a

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f100023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    const/16 v3, 0x32f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v0, Lcom/google/googlenav/ui/wizard/fr;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fr;-><init>(Lcom/google/googlenav/ui/wizard/fp;)V

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 120
    return-object v2

    .line 91
    :cond_76
    const/4 v1, 0x1

    const v3, 0x7f020348

    new-instance v4, Lcom/google/googlenav/ui/wizard/fq;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/fq;-><init>(Lcom/google/googlenav/ui/wizard/fp;)V

    new-array v5, v6, [I

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/googlenav/ui/wizard/fp;->a(ZILag/f;[I)V

    .line 98
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    const/16 v3, 0x323

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2f
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 150
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 152
    const v1, 0x7f110018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    const v0, 0x7f1004e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 154
    const/16 v1, 0x2e4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
