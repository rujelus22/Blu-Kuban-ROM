.class final Lcom/dropbox/android/activity/as;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/Z;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/dropbox/android/activity/LocalFileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LocalFileBrowserActivity;Lcom/dropbox/android/util/Z;Ljava/io/File;Landroid/net/Uri;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dropbox/android/activity/as;->d:Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/as;->a:Lcom/dropbox/android/util/Z;

    iput-object p3, p0, Lcom/dropbox/android/activity/as;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/dropbox/android/activity/as;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/android/activity/as;->d:Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/as;->a:Lcom/dropbox/android/util/Z;

    iget-object v2, p0, Lcom/dropbox/android/activity/as;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/dropbox/android/activity/as;->c:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/activity/LocalFileBrowserActivity;->a(Lcom/dropbox/android/util/Z;Ljava/io/File;Landroid/net/Uri;Z)V

    .line 144
    return-void
.end method
