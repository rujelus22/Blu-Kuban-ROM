.class final Lcom/dropbox/android/widget/v;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 361
    invoke-static {}, Lcom/dropbox/android/widget/DbxVideoView;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->c(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 363
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->d(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 364
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 365
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 369
    :cond_41
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->l(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 370
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->l(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 407
    :cond_5b
    :goto_5b
    return v4

    .line 380
    :cond_5c
    iget-object v0, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 383
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_96

    .line 384
    const v0, 0x1040015

    .line 389
    :goto_6b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v2}, Lcom/dropbox/android/widget/DbxVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040012

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040010

    new-instance v2, Lcom/dropbox/android/widget/w;

    invoke-direct {v2, p0}, Lcom/dropbox/android/widget/w;-><init>(Lcom/dropbox/android/widget/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5b

    .line 386
    :cond_96
    const v0, 0x1040011

    goto :goto_6b
.end method
