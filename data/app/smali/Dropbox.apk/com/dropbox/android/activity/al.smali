.class final Lcom/dropbox/android/activity/al;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/dropbox/android/activity/al;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/android/activity/al;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)Lcom/dropbox/android/activity/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/al;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)Lcom/dropbox/android/util/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/ar;->b(Landroid/net/Uri;)V

    .line 209
    return-void
.end method
