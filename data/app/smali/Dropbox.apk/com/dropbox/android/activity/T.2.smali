.class final Lcom/dropbox/android/activity/T;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dropbox/android/activity/T;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/android/activity/T;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/dropbox/android/activity/T;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;Z)V

    .line 127
    return-void
.end method
