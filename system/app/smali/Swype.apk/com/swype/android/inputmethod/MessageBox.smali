.class public Lcom/swype/android/inputmethod/MessageBox;
.super Lcom/swype/android/inputmethod/SwypeDialog;
.source "MessageBox.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msgText"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeDialog;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/swype/android/inputmethod/MessageBox;->message:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 5
    .parameter "context"

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/inputmethod/MessageBox;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/swype/android/inputmethod/MessageBox$1;

    invoke-direct {v2, p0}, Lcom/swype/android/inputmethod/MessageBox$1;-><init>(Lcom/swype/android/inputmethod/MessageBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
