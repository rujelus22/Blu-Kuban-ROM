.class public Lcom/google/googlenav/ui/view/android/Y;
.super Lcom/google/googlenav/ui/view/android/N;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/N;-><init>(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/Y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget v1, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_11

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/N;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030114

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    goto :goto_30

    :cond_40
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_10
.end method
