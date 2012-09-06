.class Lcom/estrongs/android/pop/view/fs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fs;->a:Lcom/estrongs/android/pop/view/ff;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/fs;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/fs;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, -0x1

    if-nez p2, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fs;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fs;->b:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x1

    if-ne p2, v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->b:Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/fs;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fs;->b:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fs;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    goto :goto_22
.end method
