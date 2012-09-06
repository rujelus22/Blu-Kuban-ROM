.class final Lcom/dropbox/android/activity/delegate/B;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/aj;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/dropbox/android/filemanager/LocalEntry;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/B;->d:Lcom/dropbox/android/activity/delegate/x;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/B;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/B;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    iput-object p4, p0, Lcom/dropbox/android/activity/delegate/B;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 545
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/B;->a:Landroid/app/Activity;

    if-eqz v0, :cond_36

    .line 532
    const-string v0, "open.with"

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/B;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "component.shared.to"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 533
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 534
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/B;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 542
    :cond_36
    :goto_36
    return-void

    .line 536
    :cond_37
    new-instance v0, Ldbxyzptlk/e/c;

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/B;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/B;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v0, v1, v2, p1}, Ldbxyzptlk/e/c;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;)V

    .line 537
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    .line 538
    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->d:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/c;->a(I)V

    .line 539
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_36
.end method
