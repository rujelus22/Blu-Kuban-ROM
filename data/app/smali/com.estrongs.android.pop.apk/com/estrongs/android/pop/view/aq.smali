.class Lcom/estrongs/android/pop/view/aq;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aq;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24
.end method
