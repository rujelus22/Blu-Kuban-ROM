.class Lcom/infraware/common/setting/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/setting/SettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 14
    .parameter "s"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/16 v9, 0x32

    const/4 v8, 0x0

    const/16 v7, 0xc8

    .line 507
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$8(Lcom/infraware/common/setting/SettingActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I
    invoke-static {v3, v4}, Lcom/infraware/common/setting/SettingActivity;->access$10(Lcom/infraware/common/setting/SettingActivity;I)V

    .line 508
    const/16 v2, 0x32

    .line 509
    .local v2, nZoom:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_55

    .line 512
    :try_start_1a
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_92

    move-result v2

    .line 517
    :goto_22
    if-le v2, v7, :cond_96

    .line 518
    const/16 v2, 0xc8

    .line 520
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 523
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->onShowFieldValueError(II)V
    invoke-static {v3, v9, v7}, Lcom/infraware/common/setting/SettingActivity;->access$9(Lcom/infraware/common/setting/SettingActivity;II)V

    .line 535
    :cond_55
    :goto_55
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$11(Lcom/infraware/common/setting/SettingActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I
    invoke-static {v4}, Lcom/infraware/common/setting/SettingActivity;->access$8(Lcom/infraware/common/setting/SettingActivity;)I

    move-result v4

    invoke-virtual {v3, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 536
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$11(Lcom/infraware/common/setting/SettingActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_84

    if-lt v2, v9, :cond_84

    if-le v2, v7, :cond_ca

    .line 539
    :cond_84
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    :goto_91
    return-void

    .line 513
    .end local v1           #msg:Landroid/os/Message;
    :catch_92
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v2, 0xc9

    goto :goto_22

    .line 525
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_96
    if-nez v2, :cond_55

    .line 526
    const/16 v2, 0x32

    .line 528
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 531
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->onShowFieldValueError(II)V
    invoke-static {v3, v9, v7}, Lcom/infraware/common/setting/SettingActivity;->access$9(Lcom/infraware/common/setting/SettingActivity;II)V

    goto :goto_55

    .line 541
    .restart local v1       #msg:Landroid/os/Message;
    :cond_ca
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$3;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_91
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 545
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 548
    return-void
.end method
