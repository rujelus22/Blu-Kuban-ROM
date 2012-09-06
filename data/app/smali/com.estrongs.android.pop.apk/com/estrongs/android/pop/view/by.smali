.class Lcom/estrongs/android/pop/view/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->t()I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const/4 v0, 0x1

    return v0
.end method
