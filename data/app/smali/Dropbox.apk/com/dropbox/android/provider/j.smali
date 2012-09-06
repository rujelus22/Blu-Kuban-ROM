.class final Lcom/dropbox/android/provider/j;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/dropbox/android/provider/DropboxProvider;


# direct methods
.method constructor <init>(Lcom/dropbox/android/provider/DropboxProvider;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/dropbox/android/provider/j;->b:Lcom/dropbox/android/provider/DropboxProvider;

    iput-object p2, p0, Lcom/dropbox/android/provider/j;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 334
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/dropbox/android/util/Z;

    iget-object v2, p0, Lcom/dropbox/android/provider/j;->a:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/v;->a(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/m;

    .line 336
    return-void
.end method
