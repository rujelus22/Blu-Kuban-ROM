.class final Lcom/dropbox/android/widget/k;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxMediaController;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 444
    :cond_5
    :goto_5
    return-void

    .line 434
    :pswitch_6
    iget-object v0, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    goto :goto_5

    .line 437
    :pswitch_c
    iget-object v0, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxMediaController;->f(Lcom/dropbox/android/widget/DbxMediaController;)I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxMediaController;->g(Lcom/dropbox/android/widget/DbxMediaController;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxMediaController;->b(Lcom/dropbox/android/widget/DbxMediaController;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dropbox/android/widget/k;->a:Lcom/dropbox/android/widget/DbxMediaController;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxMediaController;->h(Lcom/dropbox/android/widget/DbxMediaController;)Lcom/dropbox/android/widget/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/dropbox/android/widget/q;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/k;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/dropbox/android/widget/k;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 432
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
