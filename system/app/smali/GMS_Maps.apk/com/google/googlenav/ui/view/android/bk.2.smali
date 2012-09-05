.class Lcom/google/googlenav/ui/view/android/bk;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lbb/o;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/google/googlenav/ui/view/android/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bj;Landroid/view/View;Lbb/o;Landroid/view/ViewGroup;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bk;->d:Lcom/google/googlenav/ui/view/android/bj;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bk;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lbb/o;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bk;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->d:Lcom/google/googlenav/ui/view/android/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bk;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/view/android/bj;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lbb/o;

    iget-object v0, v0, Lbb/o;->l:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->b:Lbb/o;

    iget-object v0, v0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bk;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1c
    return-void
.end method
