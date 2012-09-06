.class Lcom/estrongs/android/pop/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->p(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->q(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->v(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->r(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
