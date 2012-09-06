.class Lcom/estrongs/android/pop/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/af;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/af;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/af;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/af;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/af;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/af;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/view/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ag;-><init>(Lcom/estrongs/android/pop/view/af;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ag;->start()V

    return-void
.end method
