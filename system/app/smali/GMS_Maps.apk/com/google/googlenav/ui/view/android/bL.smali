.class public abstract Lcom/google/googlenav/ui/view/android/bl;
.super Lcom/google/googlenav/ui/view/android/ah;
.source "SourceFile"


# static fields
.field protected static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/bl;->b:I

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/g;ILcom/google/googlenav/ui/view/p;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/ah;-><init>(Lcom/google/googlenav/ui/g;ILcom/google/googlenav/ui/view/p;)V

    .line 39
    sget v0, Lcom/google/googlenav/ui/view/android/bl;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 40
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/google/googlenav/ui/view/android/bl;->b:I

    .line 52
    :cond_28
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2a

    .line 94
    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 96
    :goto_c
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_17

    .line 97
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_c

    .line 100
    :cond_17
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2a

    .line 101
    instance-of v1, v0, Lcom/google/googlenav/ui/view/android/cf;

    if-eqz v1, :cond_25

    move-object v1, v0

    .line 102
    check-cast v1, Lcom/google/googlenav/ui/view/android/cf;

    invoke-interface {v1}, Lcom/google/googlenav/ui/view/android/cf;->a()V

    .line 104
    :cond_25
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 107
    :cond_2a
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
