.class Lcom/estrongs/android/pop/view/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cg;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ci;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    :cond_13
    return-void
.end method
