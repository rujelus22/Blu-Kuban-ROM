.class final Lcom/dropbox/android/widget/h;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(Lcom/dropbox/android/widget/DbxMediaController;)V

    .line 215
    iget-object v0, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b(Lcom/dropbox/android/widget/DbxMediaController;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    iget-object v0, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->e(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxMediaController;->c(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/widget/h;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxMediaController;->d(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_22
    return-void
.end method
