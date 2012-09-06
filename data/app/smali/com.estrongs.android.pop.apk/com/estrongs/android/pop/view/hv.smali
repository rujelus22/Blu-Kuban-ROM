.class Lcom/estrongs/android/pop/view/hv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/HideList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/HideList;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hv;->a:Lcom/estrongs/android/pop/view/HideList;

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
    if-ne v0, v2, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hv;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hv;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3a

    invoke-static {}, Lcom/estrongs/android/util/g;->b()V

    :try_start_26
    const-string v0, "/sdcard/.estrongs/hide2.txt"

    invoke-static {v0}, Lcom/estrongs/android/util/g;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/util/g;->b:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_4a

    :goto_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hv;->a:Lcom/estrongs/android/pop/view/HideList;

    const v1, 0x7f0902c3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hv;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/HideList;->finish()V

    goto :goto_c

    :cond_40
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const v0, 0x7f02006e

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    :catch_4a
    move-exception v0

    goto :goto_2e
.end method
