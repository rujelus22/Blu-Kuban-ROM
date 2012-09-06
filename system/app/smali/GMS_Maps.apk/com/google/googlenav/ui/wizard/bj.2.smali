.class Lcom/google/googlenav/ui/wizard/bJ;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bH;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bJ;->a:Lcom/google/googlenav/ui/wizard/bH;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    .line 172
    new-instance v0, Lcom/google/googlenav/ui/android/GmmListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bJ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/GmmListView;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bJ;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bJ;->a:Lcom/google/googlenav/ui/wizard/bH;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bJ;->a:Lcom/google/googlenav/ui/wizard/bH;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/bH;->e()Ljava/util/Vector;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/GmmListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    return-object v0
.end method
