.class final enum Lcom/dropbox/android/activity/delegate/r;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 256
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    const v0, 0x7f0900a6

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/dropbox/android/activity/delegate/x;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v4, v4, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    const v0, 0x7f0900a7

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 264
    const v0, 0x7f09000e

    new-instance v2, Lcom/dropbox/android/activity/delegate/s;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/delegate/s;-><init>(Lcom/dropbox/android/activity/delegate/r;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    const v0, 0x7f0900a6

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/dropbox/android/activity/delegate/x;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method
