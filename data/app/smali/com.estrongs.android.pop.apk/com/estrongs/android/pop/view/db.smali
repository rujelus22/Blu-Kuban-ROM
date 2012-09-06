.class Lcom/estrongs/android/pop/view/db;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/db;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/db;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/db;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/db;->b:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->e()V

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->g()V

    :goto_1a
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->c()V

    :cond_21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/estrongs/android/pop/view/db;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Lcom/estrongs/android/pop/e/a;->b()V

    :cond_33
    return-void

    :cond_34
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->h()V

    goto :goto_1a
.end method
