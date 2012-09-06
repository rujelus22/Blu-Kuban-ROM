.class Lcom/estrongs/android/pop/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/au;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/au;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/av;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/av;)Lcom/estrongs/android/pop/view/au;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->f(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/aw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/aw;-><init>(Lcom/estrongs/android/pop/view/av;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->g(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_46

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_46
    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->h(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-string v2, "smb://"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->h(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Z

    move-result v1

    if-eqz v1, :cond_9c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->setResult(ILandroid/content/Intent;)V

    :cond_9c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/au;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->finish()V

    goto/16 :goto_23
.end method
