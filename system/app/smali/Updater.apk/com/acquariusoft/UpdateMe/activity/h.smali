.class final Lcom/acquariusoft/UpdateMe/activity/h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    :cond_1a
    :goto_1a
    return v3

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_48

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_48

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V

    goto :goto_1a

    :catch_46
    move-exception v0

    goto :goto_1a

    :cond_48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/h;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_72} :catch_46

    goto :goto_1a
.end method
