.class public Lcom/samsung/wimax/napid/WorkMode;
.super Landroid/app/Activity;
.source "WorkMode.java"


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_ADD_WM:I = 0x0

.field private static final DIALOG_WRNG_WM:I = 0x1


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field mWorkModeListner:Landroid/view/View$OnClickListener;

.field okBtn:Landroid/widget/Button;

.field setWorkModeBtn:Landroid/widget/Button;

.field wmEditText:Landroid/widget/EditText;

.field workModeState:I

.field workModeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    .line 31
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/samsung/wimax/napid/WorkMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/WorkMode$1;-><init>(Lcom/samsung/wimax/napid/WorkMode;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->mWorkModeListner:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/samsung/wimax/napid/WorkMode$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/WorkMode$3;-><init>(Lcom/samsung/wimax/napid/WorkMode;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->mOkListner:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/samsung/wimax/napid/WorkMode$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/WorkMode$4;-><init>(Lcom/samsung/wimax/napid/WorkMode;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->mCancelListner:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method createWmDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 95
    const-string v1, "Add Activation value"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    .line 97
    iget-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->okBtn:Landroid/widget/Button;

    .line 99
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->CancelBtn:Landroid/widget/Button;

    .line 101
    iget-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 104
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/WorkMode;->setContentView(I)V

    .line 38
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/WorkMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeText:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/WorkMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->setWorkModeBtn:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->setWorkModeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WorkMode;->mWorkModeListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 44
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_34

    .line 86
    const/4 v0, 0x0

    :goto_5
    move-object v1, v0

    .line 88
    :goto_6
    return-object v1

    .line 71
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/WorkMode;->createWmDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 72
    goto :goto_5

    .line 74
    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Wrong value entered!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter the value from 0-3"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/wimax/napid/WorkMode$2;

    invoke-direct {v3, p0}, Lcom/samsung/wimax/napid/WorkMode$2;-><init>(Lcom/samsung/wimax/napid/WorkMode;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_6

    .line 69
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getWorkModeState()I

    move-result v0

    iput v0, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    .line 57
    iget-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********** onResume Called ********** :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
