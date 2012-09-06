.class Lcom/estrongs/android/pop/view/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method
