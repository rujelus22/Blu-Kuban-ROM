.class public Lcom/google/googlenav/ui/wizard/hA;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hx;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hx;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    .line 166
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 167
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 189
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 190
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    new-instance v2, Lcom/google/googlenav/ui/wizard/hC;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hA;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/ui/wizard/hC;-><init>(Lcom/google/googlenav/ui/wizard/hx;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/hy;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/ui/wizard/hx;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 191
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hx;->b(Lcom/google/googlenav/ui/wizard/hx;)V

    .line 192
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hx;->c(Lcom/google/googlenav/ui/wizard/hx;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    new-instance v1, Lcom/google/googlenav/ui/wizard/hB;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hB;-><init>(Lcom/google/googlenav/ui/wizard/hA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 203
    return-void
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 207
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 208
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hA;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x437

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :goto_13
    return-void

    .line 210
    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hA;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 216
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hA;->requestWindowFeature(I)Z

    .line 219
    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hA;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/ui/wizard/hx;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/ui/wizard/hx;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04016e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_49

    .line 175
    const v0, 0x7f100025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    const/16 v2, 0x437

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 179
    const v0, 0x7f100033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_49
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/hA;->a(Landroid/view/View;)V

    .line 185
    return-object v1
.end method
