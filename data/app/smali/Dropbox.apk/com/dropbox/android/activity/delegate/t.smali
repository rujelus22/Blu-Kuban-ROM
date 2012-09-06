.class final enum Lcom/dropbox/android/activity/delegate/t;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 284
    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 285
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 286
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 288
    new-instance v2, Lcom/dropbox/android/activity/delegate/u;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/delegate/u;-><init>(Lcom/dropbox/android/activity/delegate/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 311
    new-instance v2, Lcom/dropbox/android/activity/delegate/v;

    invoke-direct {v2, p0, v1, p2}, Lcom/dropbox/android/activity/delegate/v;-><init>(Lcom/dropbox/android/activity/delegate/t;Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 335
    const v1, 0x7f09000e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v1, 0x7f09000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    return-void
.end method
