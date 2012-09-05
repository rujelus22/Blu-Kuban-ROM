.class Ly/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Ly/k;


# direct methods
.method constructor <init>(Ly/k;)V
    .registers 2

    iput-object p1, p0, Ly/l;->a:Ly/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Ly/l;->a:Ly/k;

    iget-object v1, v1, Ly/k;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(FF)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Ly/l;->a:Ly/k;

    iget-object v1, v1, Ly/k;->f:Ly/p;

    invoke-virtual {v1}, Ly/p;->c()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Ly/l;->a:Ly/k;

    iget-object v1, v1, Ly/k;->f:Ly/p;

    sget-object v2, Ly/a;->a:Ly/a;

    invoke-virtual {v1, v2, v0}, Ly/p;->a(Ly/s;Z)Z

    :cond_26
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method
