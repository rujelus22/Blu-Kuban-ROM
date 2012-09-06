.class final Lcom/dropbox/android/activity/ah;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryPickerFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dropbox/android/activity/ah;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dropbox/android/activity/ah;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->b(Lcom/dropbox/android/activity/GalleryPickerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/ai;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/ai;-><init>(Lcom/dropbox/android/activity/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method
