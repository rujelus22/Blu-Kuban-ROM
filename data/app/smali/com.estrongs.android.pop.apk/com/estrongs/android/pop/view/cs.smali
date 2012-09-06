.class Lcom/estrongs/android/pop/view/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cr;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w()Z

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    goto :goto_1f

    :cond_39
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cs;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x()V

    goto :goto_1f
.end method
