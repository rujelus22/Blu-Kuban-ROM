.class final Lcom/dropbox/android/activity/W;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dropbox/android/activity/W;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/android/activity/W;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    if-nez v0, :cond_b

    .line 179
    :goto_a
    return-void

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/activity/W;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    iget-object v1, p0, Lcom/dropbox/android/activity/W;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v2, p0, Lcom/dropbox/android/activity/W;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v2, v2, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v2}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto :goto_a
.end method
