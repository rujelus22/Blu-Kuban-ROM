.class public abstract Lcom/google/googlenav/ui/view/android/bx;
.super Lcom/google/googlenav/ui/view/android/ay;


# static fields
.field protected static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/bx;->b:I

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/p;ILbb/f;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    sget v0, Lcom/google/googlenav/ui/view/android/bx;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bx;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/google/googlenav/ui/view/android/bx;->b:I

    :cond_28
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/view/android/bx;->b()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bx;->x()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bx;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    if-eqz v0, :cond_12

    sget v1, Lcom/google/googlenav/ui/view/android/bx;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_12
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2a

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    :goto_c
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_c

    :cond_17
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2a

    instance-of v1, v0, Lcom/google/googlenav/ui/view/android/cl;

    if-eqz v1, :cond_25

    move-object v1, v0

    check-cast v1, Lcom/google/googlenav/ui/view/android/cl;

    invoke-interface {v1}, Lcom/google/googlenav/ui/view/android/cl;->a()V

    :cond_25
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2a
    return-void
.end method

.method protected d(Landroid/view/View;)Landroid/widget/ListView;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const v0, 0x7f0f005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ListView;

    goto :goto_3
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected x()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bx;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bx;->d(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
