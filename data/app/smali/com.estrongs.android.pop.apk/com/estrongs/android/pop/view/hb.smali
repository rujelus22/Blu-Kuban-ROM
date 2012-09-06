.class Lcom/estrongs/android/pop/view/hb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hb;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hb;->a:Lcom/estrongs/android/pop/view/ff;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Lcom/estrongs/android/pop/view/ff;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hb;->a:Lcom/estrongs/android/pop/view/ff;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hb;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/NewUserView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hb;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x10001003

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
