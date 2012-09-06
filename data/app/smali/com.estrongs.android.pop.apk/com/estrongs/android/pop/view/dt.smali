.class Lcom/estrongs/android/pop/view/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/dt;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_20
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dt;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/dt;->b:Z

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    return-void
.end method
