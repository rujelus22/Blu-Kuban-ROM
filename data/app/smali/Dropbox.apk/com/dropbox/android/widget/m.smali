.class final Lcom/dropbox/android/widget/m;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    if-nez p3, :cond_3

    .line 633
    :cond_2
    :goto_2
    return-void

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/dropbox/android/widget/q;->c()I

    move-result v0

    int-to-long v0, v0

    .line 629
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 630
    iget-object v2, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxMediaController;->h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lcom/dropbox/android/widget/q;->a(I)V

    .line 631
    iget-object v2, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxMediaController;->k(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxMediaController;->k(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/dropbox/android/widget/DbxMediaController;->a(Lcom/dropbox/android/widget/DbxMediaController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 610
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(Lcom/dropbox/android/widget/DbxMediaController;Z)Z

    .line 617
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->j(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(Lcom/dropbox/android/widget/DbxMediaController;Z)Z

    .line 638
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->f(Lcom/dropbox/android/widget/DbxMediaController;)I

    .line 639
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->l(Lcom/dropbox/android/widget/DbxMediaController;)V

    .line 640
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    .line 645
    iget-object v0, p0, Lcom/dropbox/android/widget/m;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->j(Lcom/dropbox/android/widget/DbxMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    return-void
.end method
