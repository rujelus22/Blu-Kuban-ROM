.class Lcom/google/googlenav/ui/view/android/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aq;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/au;->a:Lcom/google/googlenav/ui/view/android/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/aq;Lcom/google/googlenav/ui/view/android/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/au;-><init>(Lcom/google/googlenav/ui/view/android/aq;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 599
    if-nez v0, :cond_10

    .line 600
    const/4 v0, 0x0

    .line 607
    :goto_f
    return v0

    .line 602
    :cond_10
    instance-of v1, v0, LaQ/s;

    if-eqz v1, :cond_26

    .line 603
    check-cast v0, LaQ/s;

    .line 604
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/au;->a:Lcom/google/googlenav/ui/view/android/aq;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {v0}, LaQ/s;->f()I

    move-result v2

    invoke-virtual {v0}, LaQ/s;->e()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 607
    :cond_26
    const/4 v0, 0x1

    goto :goto_f
.end method
