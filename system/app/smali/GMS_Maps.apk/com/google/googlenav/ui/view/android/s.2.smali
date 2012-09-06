.class public Lcom/google/googlenav/ui/view/android/S;
.super Lcom/google/googlenav/ui/view/android/H;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/H;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/S;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 36
    iget v1, v0, Lcom/google/googlenav/ui/bd;->r:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_11

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/H;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    :goto_10
    return-object v0

    .line 41
    :cond_11
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 43
    const v2, 0x7f04015f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 46
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 47
    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_30

    .line 51
    :cond_40
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 53
    goto :goto_10
.end method
