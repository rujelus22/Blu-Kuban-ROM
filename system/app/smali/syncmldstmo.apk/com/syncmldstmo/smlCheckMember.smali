.class public Lcom/syncmldstmo/smlCheckMember;
.super Landroid/app/Activity;
.source "smlCheckMember.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckMember;->setContentView(I)V

    .line 22
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckMember;->showDialog(I)V

    .line 23
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_3c

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 31
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlCheckMember;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    new-instance v2, Lcom/syncmldstmo/smlCheckMember$3;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckMember$3;-><init>(Lcom/syncmldstmo/smlCheckMember;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckMember$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckMember$2;-><init>(Lcom/syncmldstmo/smlCheckMember;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckMember$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckMember$1;-><init>(Lcom/syncmldstmo/smlCheckMember;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 28
    nop

    :pswitch_data_3c
    .packed-switch 0x7
        :pswitch_8
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 69
    return-void
.end method
