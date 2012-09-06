.class Lcom/google/googlenav/ui/view/android/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 431
    if-nez v0, :cond_f

    .line 436
    :goto_e
    return-void

    .line 434
    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aU;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/aU;->a(Lcom/google/googlenav/ui/aQ;)Z

    .line 435
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aU;->v()V

    goto :goto_e
.end method
