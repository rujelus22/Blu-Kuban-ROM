.class Lcom/estrongs/android/pop/view/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->L(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_13
.end method
