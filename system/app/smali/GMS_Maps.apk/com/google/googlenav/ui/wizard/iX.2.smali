.class public Lcom/google/googlenav/ui/wizard/iX;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iT;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/iT;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iX;->b:Lcom/google/googlenav/ui/wizard/iT;

    .line 141
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 142
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iX;->a:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/iX;->requestWindowFeature(I)Z

    .line 150
    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x52f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 155
    const v1, 0x7f04017f

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 158
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iX;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 160
    const v0, 0x7f100025

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_33
    const v0, 0x7f100026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 169
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v6}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 170
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iX;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaQ/H;

    .line 171
    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_4b

    .line 164
    :cond_5b
    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/iX;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 173
    :cond_63
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    new-instance v1, Lcom/google/googlenav/ui/wizard/iW;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/iX;->b:Lcom/google/googlenav/ui/wizard/iT;

    invoke-direct {v1, v3, v7}, Lcom/google/googlenav/ui/wizard/iW;-><init>(Lcom/google/googlenav/ui/wizard/iT;Lcom/google/googlenav/ui/wizard/iU;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 176
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 178
    return-object v2
.end method
