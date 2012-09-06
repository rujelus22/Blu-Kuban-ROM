.class Lcom/estrongs/android/pop/view/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_35

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    if-eq p2, v0, :cond_35

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/he;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    invoke-direct {v1, v2, v4, v3}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;II)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/hd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)Z

    :cond_2c
    :goto_2c
    const/4 v0, 0x3

    if-eq p2, v0, :cond_31

    sput p2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    :cond_31
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_35
    if-ne p2, v5, :cond_5f

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    if-eq p2, v0, :cond_5f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/he;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    invoke-direct {v1, v2, v5, v3}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;II)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/hd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)Z

    goto :goto_2c

    :cond_5f
    if-ne p2, v6, :cond_2c

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    if-eq p2, v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/he;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak:I

    invoke-direct {v1, v2, v6, v3}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;II)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/hd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/eh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)Z

    goto :goto_2c
.end method
