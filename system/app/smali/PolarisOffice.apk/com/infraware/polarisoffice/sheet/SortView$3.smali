.class Lcom/infraware/polarisoffice/sheet/SortView$3;
.super Ljava/lang/Object;
.source "SortView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SortView;->onCreateListPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SortView;->access$11(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 193
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SortView;->checkButtonStatus()V

    .line 194
    return-void

    .line 167
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$12(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 170
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$13(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 173
    :pswitch_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$14(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 176
    :pswitch_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$2(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 179
    :pswitch_28
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$5(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 182
    :pswitch_2e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$8(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 185
    :pswitch_34
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #getter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SortView;->access$10(Lcom/infraware/polarisoffice/sheet/SortView;)I

    move-result v0

    if-eq v0, p2, :cond_a

    .line 186
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$15(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 187
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SortView;->access$2(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 188
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I
    invoke-static {v0, v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$5(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    .line 189
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView$3;->this$0:Lcom/infraware/polarisoffice/sheet/SortView;

    #setter for: Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I
    invoke-static {v0, v2}, Lcom/infraware/polarisoffice/sheet/SortView;->access$8(Lcom/infraware/polarisoffice/sheet/SortView;I)V

    goto :goto_a

    .line 165
    :pswitch_data_52
    .packed-switch 0x17
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
