.class Lcom/google/googlenav/ui/wizard/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bq;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/bq;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bt;->a:Lcom/google/googlenav/ui/wizard/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/bq;Lcom/google/googlenav/ui/wizard/br;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bt;-><init>(Lcom/google/googlenav/ui/wizard/bq;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/L;

    .line 332
    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/bt;

    .line 333
    if-nez v0, :cond_11

    .line 339
    :goto_10
    return-void

    .line 336
    :cond_11
    invoke-virtual {v0}, LaQ/bt;->d()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->a:Lcom/google/googlenav/ui/wizard/bq;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Lcom/google/googlenav/ui/wizard/bq;->a(IILjava/lang/Object;)Z

    goto :goto_10
.end method
