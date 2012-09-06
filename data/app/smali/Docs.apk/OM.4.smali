.class public LOM;
.super Landroid/os/Handler;
.source "UploadSharedItemActivity.java"


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/app/ProgressDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, LOM;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iput-object p2, p0, LOM;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, LOM;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 388
    iget-object v0, p0, LOM;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, LZF;->b:LZF;

    invoke-virtual {v1}, LZF;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 390
    iget-object v0, p0, LOM;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V

    .line 393
    :cond_1c
    return-void
.end method
