.class Lcom/infraware/polarisoffice/sheet/SortView$1;
.super Ljava/lang/Object;
.source "SortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SortView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SortView;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SortView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SortView;->access$0(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v1

    if-ne v1, v0, :cond_15

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$1(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v2

    neg-int v2, v2

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$2(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 45
    :cond_15
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SortView;->access$3(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v1

    if-ne v1, v0, :cond_29

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$4(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v2

    neg-int v2, v2

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$5(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 46
    :cond_29
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SortView;->access$6(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v1

    if-ne v1, v0, :cond_3d

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$7(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v2

    neg-int v2, v2

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$8(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 48
    :cond_3d
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SortView;->access$9(Lcom/infraware/polarisoffice/sheet/SortView;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$10(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v2

    if-lez v2, :cond_4c

    const/4 v0, 0x0

    :cond_4c
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$1(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SortView;->access$4(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SortView;->access$7(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->ISheetSort(IIII)V

    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$1;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SortView;->finish()V

    .line 50
    return-void
.end method
