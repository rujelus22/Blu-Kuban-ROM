.class Lcom/infraware/polarisoffice/common/FontActivity$4;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FontActivity;->OnInputSizeDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FontActivity;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput-object p2, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->val$input:Landroid/widget/EditText;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 558
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, num:I
    if-lez v0, :cond_4c

    const/16 v3, 0x1f5

    if-ge v0, v3, :cond_4c

    .line 561
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput v0, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    .line 562
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput v0, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_nOtherSize:I

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, text_num:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-virtual {v4, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->getFontSizeIndex(I)I

    move-result v4

    iput v4, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    .line 566
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v3, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnSize:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 567
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 572
    .end local v1           #text_num:Ljava/lang/String;
    :goto_4b
    return-void

    .line 570
    :cond_4c
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$4;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/FontActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08023b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4b
.end method
