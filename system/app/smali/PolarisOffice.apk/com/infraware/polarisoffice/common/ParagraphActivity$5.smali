.class Lcom/infraware/polarisoffice/common/ParagraphActivity$5;
.super Ljava/lang/Object;
.source "ParagraphActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ParagraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 15
    .parameter "s"

    .prologue
    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, leftID:I
    const/4 v7, 0x0

    .line 411
    .local v7, rightID:I
    const/4 v3, 0x0

    .line 412
    .local v3, firstID:I
    const/4 v1, 0x0

    .line 413
    .local v1, beforeID:I
    const/4 v0, 0x0

    .line 414
    .local v0, afterID:I
    const/4 v6, 0x1

    .line 415
    .local v6, linePerID:I
    const/4 v5, 0x1

    .line 417
    .local v5, linePTID:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v8, :cond_215

    .line 418
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 420
    :try_start_19
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2a} :catch_216

    move-result v4

    .line 424
    :goto_2b
    if-gez v4, :cond_21b

    .line 425
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 427
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x88

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 435
    :cond_62
    :goto_62
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 437
    :try_start_6e
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_7f} :catch_257

    move-result v7

    .line 441
    :goto_80
    if-gez v7, :cond_25c

    .line 442
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 444
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x52

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 452
    :cond_b7
    :goto_b7
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 454
    :try_start_c3
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_d4} :catch_298

    move-result v3

    .line 459
    :goto_d5
    if-gez v3, :cond_29d

    .line 460
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 462
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 470
    :cond_10c
    :goto_10c
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_161

    .line 472
    :try_start_118
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_118 .. :try_end_129} :catch_2d9

    move-result v1

    .line 477
    :goto_12a
    if-gez v1, :cond_2de

    .line 478
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 480
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 488
    :cond_161
    :goto_161
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_1b6

    .line 490
    :try_start_16d
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/NumberFormatException; {:try_start_16d .. :try_end_17e} :catch_31a

    move-result v0

    .line 494
    :goto_17f
    if-gez v0, :cond_31f

    .line 495
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 497
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 505
    :cond_1b6
    :goto_1b6
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_215

    .line 506
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$10(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_39c

    .line 508
    :try_start_1cb
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1dc} :catch_35b

    move-result v6

    .line 513
    :goto_1dd
    const/4 v8, 0x1

    if-ge v6, v8, :cond_360

    .line 514
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 516
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x1

    const/16 v10, 0x258

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    .line 543
    :cond_215
    :goto_215
    return-void

    .line 421
    :catch_216
    move-exception v2

    .line 422
    .local v2, e:Ljava/lang/NumberFormatException;
    const/16 v4, 0x89

    goto/16 :goto_2b

    .line 429
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_21b
    const/16 v8, 0x88

    if-le v4, v8, :cond_62

    .line 430
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x88

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 432
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x88

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_62

    .line 438
    :catch_257
    move-exception v2

    .line 439
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v7, 0x53

    goto/16 :goto_80

    .line 446
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_25c
    const/16 v8, 0x52

    if-le v7, v8, :cond_b7

    .line 447
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x52

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 449
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x52

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_b7

    .line 455
    :catch_298
    move-exception v2

    .line 456
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v3, 0x13d

    goto/16 :goto_d5

    .line 464
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_29d
    const/16 v8, 0x13c

    if-le v3, v8, :cond_10c

    .line 465
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x13c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 467
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_10c

    .line 473
    :catch_2d9
    move-exception v2

    .line 474
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v1, 0x13d

    goto/16 :goto_12a

    .line 482
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2de
    const/16 v8, 0x13c

    if-le v1, v8, :cond_161

    .line 483
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x13c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 485
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_161

    .line 491
    :catch_31a
    move-exception v2

    .line 492
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v0, 0x13d

    goto/16 :goto_17f

    .line 499
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_31f
    const/16 v8, 0x13c

    if-le v0, v8, :cond_1b6

    .line 500
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x13c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 502
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x0

    const/16 v10, 0x13c

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_1b6

    .line 509
    :catch_35b
    move-exception v2

    .line 510
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v6, 0x259

    goto/16 :goto_1dd

    .line 518
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_360
    const/16 v8, 0x258

    if-le v6, v8, :cond_215

    .line 519
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 521
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x1

    const/16 v10, 0x258

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_215

    .line 526
    :cond_39c
    :try_start_39c
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3ad
    .catch Ljava/lang/NumberFormatException; {:try_start_39c .. :try_end_3ad} :catch_3e8

    move-result v5

    .line 530
    :goto_3ae
    const/4 v8, 0x1

    if-ge v5, v8, :cond_3ec

    .line 531
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 533
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x1

    const/16 v10, 0xc8

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_215

    .line 527
    :catch_3e8
    move-exception v2

    .line 528
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const/16 v5, 0xc9

    goto :goto_3ae

    .line 535
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3ec
    const/16 v8, 0xc8

    if-le v5, v8, :cond_215

    .line 536
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xc8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 538
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v9, 0x1

    const/16 v10, 0xc8

    #calls: Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V
    invoke-static {v8, v9, v10}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V

    goto/16 :goto_215
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 405
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 394
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_f

    .line 395
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mOKBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    :cond_e
    :goto_e
    return-void

    .line 398
    :cond_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 399
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 400
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mOKBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_e
.end method
