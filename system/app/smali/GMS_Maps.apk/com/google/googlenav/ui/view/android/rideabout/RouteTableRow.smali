.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;
.super Landroid/widget/TableRow;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/f;

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;IZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 58
    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e:Z

    .line 59
    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d:I

    .line 60
    return-void
.end method

.method private a(I)I
    .registers 5
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a()I

    move-result v0

    sub-int v0, p1, v0

    .line 85
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c()I

    move-result v1

    .line 86
    rem-int/2addr v0, v1

    .line 87
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d()I

    move-result v2

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e()I

    move-result v2

    add-int/2addr v0, v2

    .line 89
    if-gez v0, :cond_21

    .line 90
    add-int/2addr v0, v1

    .line 92
    :cond_21
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d:I

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e:Z

    return v0
.end method

.method public c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/android/rideabout/f;->c()V

    .line 129
    :cond_9
    return-void
.end method

.method public e()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b()V

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/TableRow;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getMeasuredHeight()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 70
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    .line 74
    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->measure(II)V

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/TableRow;->onMeasure(II)V

    .line 76
    return-void

    .line 72
    :cond_27
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    goto :goto_1e
.end method

.method public setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    .line 104
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->addView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    .line 123
    return-void
.end method
