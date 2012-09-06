.class final Lcom/dropbox/android/activity/bk;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/dropbox/android/activity/bk;->b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    iput-object p2, p0, Lcom/dropbox/android/activity/bk;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/dropbox/android/activity/bk;->b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    iget-object v1, p0, Lcom/dropbox/android/activity/bk;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->startActivity(Landroid/content/Intent;)V

    .line 612
    return-void
.end method
