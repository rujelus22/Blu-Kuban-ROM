.class Lcom/estrongs/android/pop/view/lg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/le;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/le;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lg;->a:Lcom/estrongs/android/pop/view/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lg;->a:Lcom/estrongs/android/pop/view/le;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/lg;->a:Lcom/estrongs/android/pop/view/le;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    aget v1, v1, v0

    add-int/2addr v1, v3

    if-lt v2, v1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
