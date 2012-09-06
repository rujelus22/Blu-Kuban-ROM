.class final Lcom/dropbox/android/activity/o;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/Q;

.field final synthetic b:I

.field final synthetic c:Lcom/dropbox/android/activity/n;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/n;Lcom/dropbox/android/filemanager/Q;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    iput-object p2, p0, Lcom/dropbox/android/activity/o;->a:Lcom/dropbox/android/filemanager/Q;

    iput p3, p0, Lcom/dropbox/android/activity/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 546
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_17

    .line 548
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->a:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_16

    .line 549
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->a:Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 569
    :cond_16
    :goto_16
    return-void

    .line 553
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v0}, Lcom/dropbox/android/activity/n;->a(Lcom/dropbox/android/activity/n;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/dropbox/android/activity/o;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v0}, Lcom/dropbox/android/activity/n;->b(Lcom/dropbox/android/activity/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 556
    if-ltz v6, :cond_16

    .line 562
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->a:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_46

    .line 563
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    iget-object v2, p0, Lcom/dropbox/android/activity/o;->a:Lcom/dropbox/android/filemanager/Q;

    invoke-static {v0, v1, v2, v6, v7}, Lcom/dropbox/android/activity/n;->a(Lcom/dropbox/android/activity/n;Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V

    .line 568
    :goto_40
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v0}, Lcom/dropbox/android/activity/n;->c(Lcom/dropbox/android/activity/n;)V

    goto :goto_16

    .line 565
    :cond_46
    iget-object v0, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    iget-object v2, p0, Lcom/dropbox/android/activity/o;->c:Lcom/dropbox/android/activity/n;

    iget-object v2, v2, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->j()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/dropbox/android/activity/n;->a(Lcom/dropbox/android/activity/n;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V

    goto :goto_40
.end method
