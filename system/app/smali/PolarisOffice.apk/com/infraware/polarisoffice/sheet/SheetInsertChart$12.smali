.class Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;
.super Ljava/lang/Object;
.source "SheetInsertChart.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$20(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;I)V

    .line 467
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_moreLegend:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$21(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    iget-object v1, v1, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->legendItems:[Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->m_nLegend:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$18(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 468
    return-void
.end method
