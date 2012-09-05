.class public Lcom/syncmldstmo/smlCheckRoaming;
.super Landroid/app/Activity;
.source "smlCheckRoaming.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smlCheckRoaming;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/syncmldstmo/smlCheckRoaming;->smluiStartSync()V

    return-void
.end method

.method private smluiStartSync()V
    .registers 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/smluiStartSync;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckRoaming;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckRoaming;->setContentView(I)V

    .line 28
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smlCheckRoaming;->showDialog(I)V

    .line 29
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_86

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 37
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003c

    new-instance v2, Lcom/syncmldstmo/smlCheckRoaming$4;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckRoaming$4;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003b

    new-instance v2, Lcom/syncmldstmo/smlCheckRoaming$3;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckRoaming$3;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckRoaming$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckRoaming$2;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckRoaming$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckRoaming$1;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 98
    :pswitch_52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    new-instance v2, Lcom/syncmldstmo/smlCheckRoaming$7;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smlCheckRoaming$7;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckRoaming$6;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckRoaming$6;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smlCheckRoaming$5;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smlCheckRoaming$5;-><init>(Lcom/syncmldstmo/smlCheckRoaming;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 34
    nop

    :pswitch_data_86
    .packed-switch 0x4
        :pswitch_8
        :pswitch_52
    .end packed-switch
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    return-void
.end method
