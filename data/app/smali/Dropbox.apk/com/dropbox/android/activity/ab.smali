.class final Lcom/dropbox/android/activity/ab;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 340
    new-instance v0, Lcom/dropbox/android/activity/ac;

    iget-object v1, p0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/ac;-><init>(Lcom/dropbox/android/activity/ab;Landroid/content/Context;)V

    .line 382
    invoke-virtual {v0}, Ldbxyzptlk/e/b;->e()V

    .line 383
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dropbox/android/filemanager/LocalEntry;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/android/activity/ab;->a:Lcom/dropbox/android/activity/GalleryActivity;

    iget-object v3, v3, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v3}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    return-void
.end method
