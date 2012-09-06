.class Lcom/estrongs/android/pop/view/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput p2, p0, Lcom/estrongs/android/pop/view/el;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget v0, p0, Lcom/estrongs/android/pop/view/el;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget v0, p0, Lcom/estrongs/android/pop/view/el;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_26
    iget v0, p0, Lcom/estrongs/android/pop/view/el;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/el;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
