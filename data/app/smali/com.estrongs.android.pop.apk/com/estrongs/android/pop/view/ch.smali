.class Lcom/estrongs/android/pop/view/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cg;

.field private final synthetic b:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cg;Landroid/os/Message;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ch;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x1

    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f070147

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->ab()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_30
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ch;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_59
    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ch;->a:Lcom/estrongs/android/pop/view/cg;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/cg;->a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ch;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_59
.end method
