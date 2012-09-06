.class Lcom/google/googlenav/ui/wizard/iW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iT;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/iT;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iW;->a:Lcom/google/googlenav/ui/wizard/iT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/iT;Lcom/google/googlenav/ui/wizard/iU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iW;-><init>(Lcom/google/googlenav/ui/wizard/iT;)V

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
    .line 196
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 198
    if-eqz v0, :cond_20

    .line 199
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    .line 203
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    .line 205
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iW;->a:Lcom/google/googlenav/ui/wizard/iT;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/googlenav/ui/wizard/iT;->a(IILjava/lang/Object;)Z

    .line 207
    :cond_20
    return-void
.end method
