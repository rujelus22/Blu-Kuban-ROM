.class Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;
.super Ljava/lang/Object;
.source "SheetInsertChart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$13(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$14(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nChartType:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nChartType:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$15(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow1:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol1:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRow2:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nCol2:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nLeft:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nTop:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nRight:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nRight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_tRange_nBottom:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_sCellInfo:Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$16(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v2, v2, Lcom/infraware/office/evengine/EV$RANGE;->nBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nSeriesIn:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$17(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szXAxis:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreXaxis:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$5(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_szYAxis:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mEt_moreYaxis:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$6(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nLegend:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$18(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    sget-object v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->a_nDimension:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->setResult(ILandroid/content/Intent;)V

    .line 338
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$10;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->finish()V

    .line 339
    return-void
.end method
