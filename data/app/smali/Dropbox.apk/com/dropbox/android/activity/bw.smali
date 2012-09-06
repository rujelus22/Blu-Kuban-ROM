.class final enum Lcom/dropbox/android/activity/bw;
.super Lcom/dropbox/android/activity/bs;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/bs;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/bp;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 122
    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 124
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 126
    new-instance v2, Lcom/dropbox/android/activity/bx;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bx;-><init>(Lcom/dropbox/android/activity/bw;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v2, Lcom/dropbox/android/activity/by;

    invoke-direct {v2, p0, v1, p1}, Lcom/dropbox/android/activity/by;-><init>(Lcom/dropbox/android/activity/bw;Landroid/widget/EditText;Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 181
    const v1, 0x7f09000e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v1, 0x7f09000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
