.class public Lcom/infraware/polarisoffice/word/ColumnsActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "ColumnsActivity.java"


# instance fields
.field private applyto:Landroid/widget/TextView;

.field private cancel_btn:Landroid/widget/Button;

.field private columns:Landroid/widget/TextView;

.field private mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private ok_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 14
    iput-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 15
    iput-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 16
    iput-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 17
    iput-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 12
    return-void
.end method

.method private SetApplyToAll(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V
    .registers 4
    .parameter "applyToBtn"

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 78
    return-void
.end method

.method private SetColumns(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V
    .registers 4
    .parameter "columnBtn"

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public OnClickBtn(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    .line 103
    :goto_8
    return-void

    .line 83
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 85
    const-string v1, "COLUMN_NUMBER"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :goto_1c
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 92
    const-string v1, "APPLY_TO_ALL"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    :goto_29
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->finish()V

    goto :goto_8

    .line 86
    :cond_31
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 87
    const-string v1, "COLUMN_NUMBER"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    .line 89
    :cond_40
    const-string v1, "COLUMN_NUMBER"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c

    .line 94
    :cond_46
    const-string v1, "APPLY_TO_ALL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_29

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4d
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->finish()V

    goto :goto_8

    .line 81
    nop

    :pswitch_data_52
    .packed-switch 0x7f0c02fd
        :pswitch_9
        :pswitch_4d
    .end packed-switch
.end method

.method public OnClickRadioBtn(Landroid/view/View;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 65
    .end local p1
    :goto_7
    :pswitch_7
    return-void

    .line 58
    .restart local p1
    :pswitch_8
    check-cast p1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .end local p1
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetColumns(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    goto :goto_7

    .line 62
    .restart local p1
    :pswitch_e
    check-cast p1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .end local p1
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetApplyToAll(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    goto :goto_7

    .line 54
    :pswitch_data_14
    .packed-switch 0x7f0c02f7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0200a4

    const v4, 0x7f0200a3

    const v3, 0x7f0200a2

    .line 24
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030084

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f080241

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->setTitle(I)V

    .line 29
    const v2, 0x7f0c02f6

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->columns:Landroid/widget/TextView;

    .line 30
    const v2, 0x7f0c02fa

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->applyto:Landroid/widget/TextView;

    .line 31
    const v2, 0x7f0c02f7

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 32
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v2, v3, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 33
    const v2, 0x7f0c02f8

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 34
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v2, v4, v4}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 35
    const v2, 0x7f0c02f9

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 36
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v2, v5, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 37
    const v2, 0x7f0c02fb

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 38
    const v2, 0x7f0c02fc

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 39
    const v2, 0x7f0c02fd

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->ok_btn:Landroid/widget/Button;

    .line 40
    const v2, 0x7f0c02fe

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->cancel_btn:Landroid/widget/Button;

    .line 42
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "COLUMN_NUMBER"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, columns:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a3

    .line 45
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetColumns(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    .line 50
    :goto_9d
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetApplyToAll(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    .line 51
    return-void

    .line 46
    :cond_a3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_ac

    .line 47
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetColumns(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    goto :goto_9d

    .line 49
    :cond_ac
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mColumns1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->SetColumns(Lcom/infraware/polarisoffice/common/SelectibleRadioButton;)V

    goto :goto_9d
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    const v1, 0x7f080241

    .line 108
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/word/ColumnsActivity;->setTitle(I)V

    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->columns:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->applyto:Landroid/widget/TextView;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mCurrentPage:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v1, 0x7f080243

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->mAllPages:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v1, 0x7f080244

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->ok_btn:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/ColumnsActivity;->cancel_btn:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 116
    return-void
.end method
