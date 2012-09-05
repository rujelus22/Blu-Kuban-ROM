.class Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;
.super Ljava/lang/Object;
.source "InsertTableActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/InsertTableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchListenerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/InsertTableActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 57
    .local v4, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 58
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 59
    .local v3, width:I
    div-int/lit8 v2, v3, 0x5

    .line 60
    .local v2, one_w:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 61
    .local v0, height:I
    div-int/lit8 v1, v0, 0x4

    .line 63
    .local v1, one_h:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ca

    move v6, v7

    .line 84
    :cond_1f
    :goto_1f
    return v6

    .line 67
    :pswitch_20
    cmpl-float v8, v4, v9

    if-lez v8, :cond_1f

    int-to-float v8, v3

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1f

    cmpl-float v8, v5, v9

    if-lez v8, :cond_1f

    int-to-float v8, v0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1f

    .line 68
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    float-to-int v9, v4

    div-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    .line 69
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    float-to-int v9, v5

    div-int/2addr v9, v1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 70
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4e

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    const/4 v9, 0x4

    iput v9, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 71
    :cond_4e
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    const-string v9, "%d"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v11, v11, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 73
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v9, v9, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 75
    :cond_80
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    const-string v9, "%d"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v11, v11, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v7, v7, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 77
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v7, v7, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 78
    :cond_b2
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v7, v7, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v8, v8, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v9, v9, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->setRowCol(II)V

    .line 79
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v7, v7, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->invalidate()V

    goto/16 :goto_1f

    .line 63
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method
