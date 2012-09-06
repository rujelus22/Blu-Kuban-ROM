.class final enum Lcom/dropbox/android/activity/delegate/k;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 98
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/e/e;

    .line 99
    if-eqz v0, :cond_14

    .line 100
    new-instance v0, Lcom/dropbox/android/widget/z;

    invoke-direct {v0, p2}, Lcom/dropbox/android/widget/z;-><init>(Landroid/content/Context;)V

    .line 103
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    .line 86
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/e/e;

    .line 87
    if-eqz v0, :cond_1a

    .line 88
    check-cast p3, Lcom/dropbox/android/widget/z;

    .line 89
    invoke-virtual {v0}, Ldbxyzptlk/e/e;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/dropbox/android/widget/z;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 90
    invoke-virtual {v0, p3}, Ldbxyzptlk/e/e;->a(Lcom/dropbox/android/widget/z;)V

    .line 93
    :cond_1a
    return-void
.end method
