.class Lcom/estrongs/android/pop/view/ag;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/af;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ag;->a:Lcom/estrongs/android/pop/view/af;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ag;->a:Lcom/estrongs/android/pop/view/af;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/af;->a(Lcom/estrongs/android/pop/view/af;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kanbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ag;->a:Lcom/estrongs/android/pop/view/af;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/af;->a(Lcom/estrongs/android/pop/view/af;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    const-string v1, "http://graph.kanbox.com/graph_auth"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ag;->a:Lcom/estrongs/android/pop/view/af;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/af;->a(Lcom/estrongs/android/pop/view/af;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kuaipan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ag;->a:Lcom/estrongs/android/pop/view/af;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/af;->a(Lcom/estrongs/android/pop/view/af;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->b(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)V

    goto :goto_1d
.end method
