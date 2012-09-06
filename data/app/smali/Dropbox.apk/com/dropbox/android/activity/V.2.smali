.class final Lcom/dropbox/android/activity/V;
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
    .line 151
    iput-object p1, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    if-nez v0, :cond_c

    .line 168
    :goto_b
    return-void

    .line 157
    :cond_c
    iget-object v0, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v2

    .line 158
    iget-boolean v0, v2, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-nez v0, :cond_40

    move v0, v1

    .line 160
    :goto_19
    :try_start_19
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;Z)V

    .line 162
    iget-object v3, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v3}, Lcom/dropbox/android/activity/GalleryActivity;->c(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 163
    iput-boolean v0, v2, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_b

    .line 164
    :catch_2c
    move-exception v0

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const v2, 0x7f0900b5

    invoke-virtual {v0, v2}, Lcom/dropbox/android/activity/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/dropbox/android/activity/V;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v2, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 158
    :cond_40
    const/4 v0, 0x0

    goto :goto_19
.end method
