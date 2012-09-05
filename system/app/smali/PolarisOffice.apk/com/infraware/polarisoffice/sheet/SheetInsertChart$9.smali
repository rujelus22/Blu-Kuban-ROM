.class Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$11(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 294
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$12(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 295
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$11(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    :goto_21
    return-void

    .line 298
    :cond_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mBtn_more:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$12(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 299
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertChart$9;->this$0:Lcom/infraware/polarisoffice/sheet/SheetInsertChart;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->mLlayout_moreInfo:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertChart;->access$11(Lcom/infraware/polarisoffice/sheet/SheetInsertChart;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21
.end method
