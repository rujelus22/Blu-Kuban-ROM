.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->SearchSetPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

.field private final synthetic val$SrcListItem:Ljava/util/ArrayList;

.field private final synthetic val$adapter:Lcom/infraware/polarisoffice/common/MultiAdapter;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Ljava/util/ArrayList;Lcom/infraware/polarisoffice/common/MultiAdapter;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iput-object p2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$SrcListItem:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$adapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, bChecked:I
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$SrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getRightBtnState()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 529
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$SrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1, v3}, Lcom/infraware/polarisoffice/common/MultiListItem;->setRightBtnState(I)V

    .line 530
    const/4 v0, 0x0

    .line 538
    :goto_1d
    if-ne v0, v2, :cond_3f

    .line 539
    if-nez p3, :cond_39

    .line 540
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I
    invoke-static {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$12(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    .line 549
    :goto_26
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$adapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 550
    return-void

    .line 534
    :cond_2c
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->val$SrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/MultiListItem;->setRightBtnState(I)V

    .line 535
    const/4 v0, 0x1

    goto :goto_1d

    .line 542
    :cond_39
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I
    invoke-static {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$13(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    goto :goto_26

    .line 544
    :cond_3f
    if-nez p3, :cond_47

    .line 545
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$12(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    goto :goto_26

    .line 547
    :cond_47
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I
    invoke-static {v1, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$13(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    goto :goto_26
.end method
