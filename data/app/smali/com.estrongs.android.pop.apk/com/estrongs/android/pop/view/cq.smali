.class Lcom/estrongs/android/pop/view/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f09019f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090135

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :goto_3f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    goto :goto_19

    :cond_45
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    goto :goto_3f
.end method
