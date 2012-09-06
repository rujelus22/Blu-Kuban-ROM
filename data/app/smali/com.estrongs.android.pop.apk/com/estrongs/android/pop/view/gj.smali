.class Lcom/estrongs/android/pop/view/gj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/gj;->a:Lcom/estrongs/android/pop/view/ff;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/gj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gj;->a:Lcom/estrongs/android/pop/view/ff;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gj;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/gj;->a:Lcom/estrongs/android/pop/view/ff;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gj;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/ff;->d(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gj;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/a/a;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gj;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->o(Lcom/estrongs/android/pop/view/ff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
