.class Lcom/infraware/polarisoffice/common/ParagraphActivity$6;
.super Ljava/lang/Object;
.source "ParagraphActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ParagraphActivity;->OnLineSpaceDlg(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 360
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceSpin:Landroid/widget/Button;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$17(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/ParagraphActivity;->m_LinespaceList:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$10(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v1

    if-eq v1, p2, :cond_7c

    .line 363
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #setter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I
    invoke-static {v1, p2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$18(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V

    .line 364
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_7c

    .line 365
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$10(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v1

    if-ne v1, v3, :cond_80

    .line 366
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, 0x64

    .line 367
    .local v0, mLineSpaceVal:I
    const/16 v1, 0x258

    if-le v0, v1, :cond_52

    .line 368
    const/16 v0, 0x258

    .line 369
    :cond_52
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 382
    .end local v0           #mLineSpaceVal:I
    :cond_7c
    :goto_7c
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 383
    return-void

    .line 373
    :cond_80
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 374
    .restart local v0       #mLineSpaceVal:I
    add-int/lit8 v1, v0, -0x64

    if-ltz v1, :cond_c9

    .line 375
    add-int/lit8 v1, v0, -0x64

    div-int/lit8 v0, v1, 0xa

    .line 377
    :goto_9e
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_7c

    .line 376
    :cond_c9
    const/4 v0, 0x0

    goto :goto_9e
.end method
