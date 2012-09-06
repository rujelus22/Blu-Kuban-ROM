.class Lcom/estrongs/android/pop/view/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/HideList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/HideList;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hw;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, -0x7c00

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_c
    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2

    :cond_10
    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hw;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/HideList;->finish()V

    goto :goto_c

    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const v0, 0x7f02006e

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c
.end method
