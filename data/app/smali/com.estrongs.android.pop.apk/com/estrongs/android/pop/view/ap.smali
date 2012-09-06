.class Lcom/estrongs/android/pop/view/ap;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ao;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ao;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ap;->a:Lcom/estrongs/android/pop/view/ao;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ap;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->a:Lcom/estrongs/android/pop/view/ao;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ao;->a(Lcom/estrongs/android/pop/view/ao;)Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ap;->a:Lcom/estrongs/android/pop/view/ao;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ao;->a(Lcom/estrongs/android/pop/view/ao;)Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ap;->a:Lcom/estrongs/android/pop/view/ao;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ao;->a(Lcom/estrongs/android/pop/view/ao;)Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
