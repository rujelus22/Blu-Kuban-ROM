.class public Lcom/dropbox/android/activity/DropboxBrowser;
.super Lcom/dropbox/android/activity/base/BaseMinActivity;
.source "panda.py"


# static fields
.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/activity/DropboxBrowser;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseMinActivity;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/dropbox/android/activity/DropboxBrowser;->b:Z

    return v0
.end method

.method public static b()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    const-class v0, Lcom/dropbox/android/activity/DropboxActionBarActivity;

    .line 58
    :goto_8
    return-object v0

    :cond_9
    const-class v0, Lcom/dropbox/android/activity/DropboxTabActivity;

    goto :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseMinActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 30
    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    const-string v1, "EXTRA_CAME_FROM_PROMO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/dropbox/android/activity/DropboxBrowser;->b:Z

    .line 36
    const-string v1, "EXTRA_DONT_CLEAR_FLAGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_28

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    :cond_28
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v2, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FULL_SCREEN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/DropboxBrowser;->startActivity(Landroid/content/Intent;)V

    .line 47
    :goto_48
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxBrowser;->finish()V

    .line 48
    return-void

    .line 45
    :cond_4c
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxBrowser;->startActivity(Landroid/content/Intent;)V

    goto :goto_48
.end method
