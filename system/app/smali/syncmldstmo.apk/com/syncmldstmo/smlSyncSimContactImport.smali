.class public Lcom/syncmldstmo/smlSyncSimContactImport;
.super Landroid/app/Activity;
.source "smlSyncSimContactImport.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static bIsSimContactImport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    return-void
.end method

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
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlSyncSimContactImport;->setContentView(I)V

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    .line 31
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlSyncSimContactImport;->showDialog(I)V

    .line 32
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_52

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 40
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlSyncSimContactImport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlSyncSimContactImport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003d

    new-instance v2, Lcom/syncmldstmo/smlSyncSimContactImport$4;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlSyncSimContactImport$4;-><init>(Lcom/syncmldstmo/smlSyncSimContactImport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003e

    new-instance v2, Lcom/syncmldstmo/smlSyncSimContactImport$3;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlSyncSimContactImport$3;-><init>(Lcom/syncmldstmo/smlSyncSimContactImport;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlSyncSimContactImport$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlSyncSimContactImport$2;-><init>(Lcom/syncmldstmo/smlSyncSimContactImport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlSyncSimContactImport$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlSyncSimContactImport$1;-><init>(Lcom/syncmldstmo/smlSyncSimContactImport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 37
    :pswitch_data_52
    .packed-switch 0x9
        :pswitch_8
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    return-void
.end method
