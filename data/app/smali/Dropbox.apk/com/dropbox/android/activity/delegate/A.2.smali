.class final Lcom/dropbox/android/activity/delegate/A;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/aj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dropbox/android/filemanager/LocalEntry;

.field final synthetic c:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/x;Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/A;->c:Lcom/dropbox/android/activity/delegate/x;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/A;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/A;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 482
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/A;->a:Landroid/content/Context;

    if-eqz v0, :cond_1e

    .line 475
    new-instance v0, Ldbxyzptlk/e/t;

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/A;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/A;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    sget-object v3, Ldbxyzptlk/e/w;->a:Ldbxyzptlk/e/w;

    invoke-direct {v0, v1, v2, p1, v3}, Ldbxyzptlk/e/t;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;Ldbxyzptlk/e/w;)V

    .line 476
    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->b:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/t;->a(I)V

    .line 477
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 479
    :cond_1e
    return-void
.end method
