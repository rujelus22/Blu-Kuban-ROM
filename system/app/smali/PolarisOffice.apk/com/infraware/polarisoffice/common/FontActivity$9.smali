.class Lcom/infraware/polarisoffice/common/FontActivity$9;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FontActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 865
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_12

    .line 866
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #calls: Lcom/infraware/polarisoffice/common/FontActivity;->OnFontSizeInputDialog()V
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/FontActivity;->access$3(Lcom/infraware/polarisoffice/common/FontActivity;)V

    .line 867
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 880
    :goto_11
    return-void

    .line 870
    :cond_12
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    aget-object v1, v2, p2

    check-cast v1, Ljava/lang/String;

    .line 871
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3c

    .line 872
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, num:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    .line 874
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget v3, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    iput v3, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nOtherSize:I

    .line 876
    .end local v0           #num:Ljava/lang/String;
    :cond_3c
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnSize:Landroid/widget/Button;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iget-object v3, v3, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity$9;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    iput p2, v2, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    .line 878
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_11
.end method
