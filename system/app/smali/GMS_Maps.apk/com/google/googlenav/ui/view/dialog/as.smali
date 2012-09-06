.class public Lcom/google/googlenav/ui/view/dialog/as;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lcom/google/googlenav/J;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/J;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f0f0018

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 34
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:Lcom/google/googlenav/ai;

    .line 35
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/as;->b:Lcom/google/googlenav/J;

    .line 36
    return-void
.end method


# virtual methods
.method public c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/as;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 47
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:Lcom/google/googlenav/ai;

    if-nez v1, :cond_13

    move-object v0, v6

    .line 72
    :goto_12
    return-object v0

    .line 51
    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ch()Lcom/google/googlenav/ao;

    move-result-object v2

    .line 52
    if-nez v2, :cond_1d

    move-object v0, v6

    .line 53
    goto :goto_12

    .line 57
    :cond_1d
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 58
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/as;->b:Lcom/google/googlenav/J;

    invoke-virtual {v2}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, LaQ/B;->a(ILcom/google/googlenav/J;Lcom/google/googlenav/ao;ILjava/util/List;Z)V

    .line 66
    const v1, 0x7f100026

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 67
    new-instance v2, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/as;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/as;->g:Lcom/google/googlenav/ui/g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v2, v3, v5, v4, v7}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    move-object v0, v6

    .line 72
    goto :goto_12
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
