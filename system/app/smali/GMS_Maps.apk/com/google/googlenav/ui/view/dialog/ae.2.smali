.class public Lcom/google/googlenav/ui/view/dialog/aE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private final b:Landroid/widget/ListView;

.field private final c:LaM/i;

.field private final d:Lcom/google/googlenav/ui/view/android/L;

.field private e:Lcom/google/googlenav/ui/view/K;


# direct methods
.method public constructor <init>(LaM/i;Lcom/google/googlenav/ui/view/K;Landroid/view/LayoutInflater;Landroid/content/Context;ZLjava/util/List;Landroid/widget/ListView;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:LaM/i;

    .line 54
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->e:Lcom/google/googlenav/ui/view/K;

    .line 56
    iput-object p7, p0, Lcom/google/googlenav/ui/view/dialog/aE;->b:Landroid/widget/ListView;

    .line 58
    const v0, 0x7f0400a3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    const/16 v1, 0x268

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 63
    invoke-virtual {p0, p5}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p7, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, p4, p8, p6}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Landroid/content/Context;ILjava/util/List;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aE;->a()V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p7, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;ILjava/util/List;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:LaM/i;

    invoke-direct {v0, p1, v1, p3, p2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aE;->c:LaM/i;

    invoke-virtual {v1}, LaM/i;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 127
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/dialog/aE;->a(Z)V

    .line 123
    return-void
.end method

.method protected a(Z)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/16 v3, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_38

    .line 78
    if-eqz p1, :cond_39

    .line 80
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->e:Lcom/google/googlenav/ui/view/K;

    invoke-virtual {v0, v2, v4}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setVisibility(I)V

    move v0, v1

    .line 83
    :goto_1f
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 84
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 90
    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    .line 103
    :cond_38
    return-void

    .line 91
    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setPadding(IIII)V

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/ui/android/LoadingFooterView;->setViewportListener(Lcom/google/googlenav/ui/view/K;Lcom/google/googlenav/ui/view/a;)V

    .line 97
    :goto_50
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_38

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aE;->a:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method
