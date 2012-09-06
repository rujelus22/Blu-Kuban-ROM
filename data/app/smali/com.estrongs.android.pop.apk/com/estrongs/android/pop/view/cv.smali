.class Lcom/estrongs/android/pop/view/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->k()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1b
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->f()I

    move-result v0

    if-nez v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/4 v0, 0x2

    :try_start_27
    new-array v1, v0, [I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090222

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v2, v0, v3, v1}, Lcom/estrongs/android/pop/view/hy;->a(Landroid/view/View;Ljava/lang/String;II)Lcom/estrongs/android/pop/view/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hy;->i()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4e} :catch_4f

    goto :goto_25

    :catch_4f
    move-exception v0

    goto :goto_25
.end method
