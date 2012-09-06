.class Lcom/estrongs/android/pop/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090034

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1d
.end method
