.class public Lcom/syncmldstmo/smlCheckStartSanSync;
.super Landroid/app/Activity;
.source "smlCheckStartSanSync.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckStartSanSync;->setContentView(I)V

    .line 27
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckStartSanSync;->showDialog(I)V

    .line 28
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_3e

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 36
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlCheckStartSanSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    new-instance v2, Lcom/syncmldstmo/smlCheckStartSanSync$3;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckStartSanSync$3;-><init>(Lcom/syncmldstmo/smlCheckStartSanSync;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003b

    new-instance v2, Lcom/syncmldstmo/smlCheckStartSanSync$2;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckStartSanSync$2;-><init>(Lcom/syncmldstmo/smlCheckStartSanSync;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckStartSanSync$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckStartSanSync$1;-><init>(Lcom/syncmldstmo/smlCheckStartSanSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 33
    :pswitch_data_3e
    .packed-switch 0x8
        :pswitch_8
    .end packed-switch
.end method
