.class Lcom/estrongs/android/pop/view/gv;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;ILjava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    iput p2, p0, Lcom/estrongs/android/pop/view/gv;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/view/gv;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/gv;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->f(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->k(Lcom/estrongs/android/pop/view/ff;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/android/pop/view/gv;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/a/c;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_20
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/view/gw;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/gv;->d:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lcom/estrongs/android/pop/view/gw;-><init>(Lcom/estrongs/android/pop/view/gv;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/view/gv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gv;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_40

    move-result-object v0

    goto :goto_20

    :catch_40
    move-exception v0

    goto :goto_32
.end method
