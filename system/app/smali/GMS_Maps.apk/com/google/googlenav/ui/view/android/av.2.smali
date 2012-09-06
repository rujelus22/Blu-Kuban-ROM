.class Lcom/google/googlenav/ui/view/android/aV;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/view/u;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/google/googlenav/ui/view/android/aU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aU;Landroid/view/View;Lcom/google/googlenav/ui/view/u;Landroid/view/ViewGroup;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Lcom/google/googlenav/ui/view/android/aU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aV;->b:Lcom/google/googlenav/ui/view/u;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/aV;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Lcom/google/googlenav/ui/view/android/aU;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/aU;->a(Lcom/google/googlenav/ui/view/android/aU;Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->b:Lcom/google/googlenav/ui/view/u;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->b:Lcom/google/googlenav/ui/view/u;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 235
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 237
    :cond_1c
    return-void
.end method
