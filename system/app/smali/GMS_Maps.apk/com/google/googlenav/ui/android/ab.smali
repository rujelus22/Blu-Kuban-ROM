.class public abstract Lcom/google/googlenav/ui/android/ab;
.super Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ab;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    invoke-virtual {p0, v0, v5, v5}, Lcom/google/googlenav/ui/android/ab;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/high16 v4, -0x8000

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1f
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    add-int/2addr v0, v2

    return v0
.end method
