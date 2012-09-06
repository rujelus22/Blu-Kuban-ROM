.class Lcom/estrongs/android/pop/view/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/hy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/hy;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hz;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    const v2, -0x2c2c2d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    const v0, -0x888889

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_10
    :goto_10
    return v3

    :cond_11
    if-ne v0, v3, :cond_23

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->e()V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hz;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hy;->b()V

    goto :goto_10

    :cond_23
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_10
.end method
