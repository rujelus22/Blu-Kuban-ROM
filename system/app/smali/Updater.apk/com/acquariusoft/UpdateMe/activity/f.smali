.class final Lcom/acquariusoft/UpdateMe/activity/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/f;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/f;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0, p2}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/f;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->c(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
