.class public abstract Lcom/google/googlenav/ui/android/ax;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 22
    move v0, v1

    move v2, v1

    .line 23
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ax;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 24
    invoke-virtual {p0, v0, v5, v5}, Lcom/google/googlenav/ui/android/ax;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 25
    const/high16 v4, -0x8000

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 26
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 29
    :cond_1f
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    add-int/2addr v0, v2

    .line 30
    return v0
.end method
