.class Lcom/estrongs/android/pop/view/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cg;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cj;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cj;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cj;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
