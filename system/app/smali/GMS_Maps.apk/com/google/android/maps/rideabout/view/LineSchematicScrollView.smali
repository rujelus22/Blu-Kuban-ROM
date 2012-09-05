.class public Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:I

.field private b:Lcom/google/android/maps/rideabout/view/c;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v0

    if-ne p1, v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    invoke-virtual {p0, v2, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->smoothScrollTo(II)V

    goto :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    :cond_4
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->removeAllViews()V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a:I

    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->scrollTo(II)V

    :cond_1d
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :cond_b
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->a()V

    goto :goto_b

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->b()V

    goto :goto_b

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p2, v0, :cond_17

    if-ge v0, p4, :cond_1b

    :cond_17
    if-gt p2, v0, :cond_20

    if-gt v0, p4, :cond_20

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_20
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/rideabout/view/c;->a(II)V

    :cond_29
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a:I

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->measure(II)V

    :cond_2c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    return-void
.end method
