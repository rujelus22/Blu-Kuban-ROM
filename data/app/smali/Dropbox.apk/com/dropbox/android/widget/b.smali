.class final Lcom/dropbox/android/widget/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/a;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/a;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 133
    iget-object v0, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->a(Lcom/dropbox/android/widget/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 134
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v1}, Lcom/dropbox/android/widget/a;->b(Lcom/dropbox/android/widget/a;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 135
    iget-object v1, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v1}, Lcom/dropbox/android/widget/a;->b(Lcom/dropbox/android/widget/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 138
    iget-object v1, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    iget-object v4, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    iget-object v5, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v5}, Lcom/dropbox/android/widget/a;->c(Lcom/dropbox/android/widget/a;)I

    move-result v5

    iget-object v6, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v6}, Lcom/dropbox/android/widget/a;->d(Lcom/dropbox/android/widget/a;)I

    move-result v6

    invoke-static {v4, v0, v2, v5, v6}, Lcom/dropbox/android/widget/a;->a(Lcom/dropbox/android/widget/a;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/dropbox/android/widget/a;->a(Lcom/dropbox/android/widget/a;Z)Z

    .line 139
    iget-object v0, p0, Lcom/dropbox/android/widget/b;->a:Lcom/dropbox/android/widget/a;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/a;->a(IIIIZ)V

    .line 141
    :cond_46
    return-void
.end method
