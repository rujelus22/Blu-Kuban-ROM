.class Lcom/google/googlenav/ui/view/android/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aq;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/aq;Lcom/google/googlenav/ui/view/android/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/at;-><init>(Lcom/google/googlenav/ui/view/android/aq;)V

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
    .line 583
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 584
    if-nez v0, :cond_f

    .line 592
    :cond_e
    :goto_e
    return-void

    .line 587
    :cond_f
    instance-of v1, v0, LaQ/a;

    if-eqz v1, :cond_e

    .line 588
    check-cast v0, LaQ/a;

    .line 589
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/aq;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {v0}, LaQ/a;->d()I

    move-result v2

    invoke-virtual {v0}, LaQ/a;->e()I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    goto :goto_e
.end method
