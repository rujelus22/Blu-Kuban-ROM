.class public LON;
.super Ldd;
.source "UploadSharedItemActivity.java"


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic a:Landroid/os/Handler;

.field final synthetic a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;Landroid/net/Uri;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, LON;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iput-object p2, p0, LON;->a:Landroid/net/Uri;

    iput-object p3, p0, LON;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, LON;->a:Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a:LZE;

    iget-object v1, p0, LON;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, LZE;->a(Landroid/net/Uri;)LZF;

    move-result-object v0

    .line 399
    iget-object v1, p0, LON;->a:Landroid/os/Handler;

    invoke-virtual {v0}, LZF;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    return-void
.end method
