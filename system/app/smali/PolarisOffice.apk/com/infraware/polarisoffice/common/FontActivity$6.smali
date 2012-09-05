.class Lcom/infraware/polarisoffice/common/FontActivity$6;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FontActivity;->OnFontSizeInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FontActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 625
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FontActivity;->access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, textString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_63

    .line 627
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 628
    .local v0, fontSize:I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_63

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_63

    .line 629
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput v0, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    .line 630
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput v0, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nOtherSize:I

    .line 631
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-virtual {v3, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->getFontSizeIndex(I)I

    move-result v3

    iput v3, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    .line 632
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnSize:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .end local v0           #fontSize:I
    :cond_63
    return-void
.end method
