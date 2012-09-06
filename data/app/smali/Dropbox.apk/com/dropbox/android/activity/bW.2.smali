.class final Lcom/dropbox/android/activity/bW;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/UploadsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/UploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dropbox/android/activity/bW;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/bW;->a:Lcom/dropbox/android/activity/UploadsActivity;

    const-class v2, Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "BROWSE_MODE"

    sget-object v2, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/dropbox/android/activity/bW;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/UploadsActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
