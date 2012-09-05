.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;
.super Landroid/widget/TableRow;


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/f;

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e:Z

    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d:I

    return-void
.end method

.method private a(I)I
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d()I

    move-result v2

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e()I

    move-result v2

    add-int/2addr v0, v2

    if-gez v0, :cond_21

    add-int/2addr v0, v1

    :cond_21
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e:Z

    return v0
.end method

.method public c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    return-object v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/android/rideabout/f;->b()V

    :cond_9
    return-void
.end method

.method public e()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b()V

    invoke-super {p0, p1, p2}, Landroid/widget/TableRow;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->measure(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/TableRow;->onMeasure(II)V

    return-void

    :cond_27
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    goto :goto_1e
.end method
