.class final Lcom/dropbox/android/widget/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/dropbox/android/widget/n;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lcom/dropbox/android/widget/n;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->d()I

    move-result v0

    .line 677
    add-int/lit16 v0, v0, -0x1388

    .line 678
    iget-object v1, p0, Lcom/dropbox/android/widget/n;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxMediaController;->h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dropbox/android/widget/q;->a(I)V

    .line 679
    iget-object v0, p0, Lcom/dropbox/android/widget/n;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->f(Lcom/dropbox/android/widget/DbxMediaController;)I

    .line 681
    iget-object v0, p0, Lcom/dropbox/android/widget/n;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 682
    return-void
.end method
