.class final Lcom/dropbox/android/activity/Y;
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
    .line 191
    iput-object p1, p0, Lcom/dropbox/android/activity/Y;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/android/activity/Y;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->showDialog(I)V

    .line 195
    return-void
.end method
