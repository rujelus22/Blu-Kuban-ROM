.class Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;
.super Ljava/lang/Object;
.source "SheetFormatAlignment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/16 v1, 0x10e

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$5(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 123
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$6(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;I)V

    .line 124
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$7(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 125
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$8(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 126
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;->this$0:Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->access$9(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 128
    :cond_2c
    return-void
.end method
