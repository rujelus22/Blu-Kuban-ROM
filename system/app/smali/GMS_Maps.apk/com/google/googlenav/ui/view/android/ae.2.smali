.class Lcom/google/googlenav/ui/view/android/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aD;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aE;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    .line 149
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aI;

    .line 150
    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/aI;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 152
    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/aI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    invoke-virtual {v0}, Lcom/google/googlenav/at;->a()Lcom/google/googlenav/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aE;->a:Lcom/google/googlenav/ui/view/android/aD;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/aD;->g:Lcom/google/googlenav/ui/g;

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 155
    :cond_2d
    return-void
.end method
