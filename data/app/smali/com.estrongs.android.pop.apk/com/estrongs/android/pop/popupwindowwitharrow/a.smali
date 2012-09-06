.class Lcom/estrongs/android/pop/popupwindowwitharrow/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 8

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    iget-object v5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v5}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)I

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v6}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)I

    move-result v6

    invoke-static {v4, v0, v2, v5, v6}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(IIIIZ)V

    :cond_46
    return-void
.end method
