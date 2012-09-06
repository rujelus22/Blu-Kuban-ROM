.class Lcom/estrongs/android/pop/view/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/fd;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Z)Lcom/estrongs/android/pop/clipboardview/d;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-boolean v1, v0, Lcom/estrongs/android/pop/clipboardview/d;->e:Z

    if-eqz v1, :cond_4e

    iput-boolean v2, v0, Lcom/estrongs/android/pop/clipboardview/d;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/clipboardview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    :cond_37
    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->w()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V

    :cond_4d
    return-void

    :cond_4e
    if-eqz v0, :cond_1d

    iput-boolean v2, v0, Lcom/estrongs/android/pop/clipboardview/d;->f:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/clipboardview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/co;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_1d
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method
