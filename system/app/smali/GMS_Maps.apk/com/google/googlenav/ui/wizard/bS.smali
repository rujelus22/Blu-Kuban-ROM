.class public Lcom/google/googlenav/ui/wizard/bs;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bq;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bq;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    .line 205
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 207
    return-void

    .line 205
    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bs;->p()I

    move-result v0

    goto :goto_f
.end method


# virtual methods
.method public O_()Z
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/bq;->c:I

    if-ne v0, v5, :cond_18

    const/16 v0, 0x43d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 228
    :goto_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/bq;->c:I

    packed-switch v0, :pswitch_data_84

    move-object v0, v3

    .line 252
    :goto_17
    return-object v0

    .line 225
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->h:Ljava/lang/String;

    move-object v2, v0

    goto :goto_f

    .line 231
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c3

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 234
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 235
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->an()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 236
    :cond_46
    sget-object v4, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_4f
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 244
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/bq;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    new-instance v2, Lcom/google/googlenav/ui/wizard/bt;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    invoke-direct {v2, v4, v3}, Lcom/google/googlenav/ui/wizard/bt;-><init>(Lcom/google/googlenav/ui/wizard/bq;Lcom/google/googlenav/ui/wizard/br;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 248
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_17

    .line 238
    :cond_76
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bs;->a:Lcom/google/googlenav/ui/wizard/bq;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/bq;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v4, v2}, Lcom/google/googlenav/ui/view/android/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 228
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method
