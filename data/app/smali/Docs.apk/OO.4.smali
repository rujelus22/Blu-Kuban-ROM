.class public LOO;
.super Ljava/lang/Object;
.source "UploadSharedItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, LOO;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, LOO;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LOO;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 419
    iget-object v1, p0, LOO;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    iget-object v0, p0, LOO;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->finish()V

    .line 421
    return-void
.end method
