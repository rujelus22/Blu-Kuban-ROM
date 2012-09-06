.class final Lcom/dropbox/android/activity/X;
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
    .line 183
    iput-object p1, p0, Lcom/dropbox/android/activity/X;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/android/activity/X;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    iget-object v1, p0, Lcom/dropbox/android/activity/X;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v2, p0, Lcom/dropbox/android/activity/X;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v3, p0, Lcom/dropbox/android/activity/X;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v3, v3, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v3}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 187
    return-void
.end method
