.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 2862
    const/4 v1, -0x1

    .line 2863
    .local v1, nEvent:I
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iput v8, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    .line 2864
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupListType:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$0(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v5

    packed-switch v5, :pswitch_data_172

    .line 2948
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 2866
    :pswitch_12
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetNumbers(I)V
    invoke-static {v5, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$1(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    goto :goto_11

    .line 2869
    :pswitch_18
    packed-switch p2, :pswitch_data_1aa

    .line 2875
    :goto_1b
    if-eq v1, v7, :cond_11

    .line 2876
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    invoke-virtual {v5, v9, v1}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertCell(II)V

    goto :goto_11

    .line 2870
    :pswitch_27
    const/4 v1, 0x1

    goto :goto_1b

    .line 2871
    :pswitch_29
    const/4 v1, 0x0

    goto :goto_1b

    .line 2872
    :pswitch_2b
    const/4 v1, 0x2

    goto :goto_1b

    .line 2873
    :pswitch_2d
    const/4 v1, 0x3

    goto :goto_1b

    .line 2879
    :pswitch_2f
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatDate(I)V
    invoke-static {v5, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$3(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    goto :goto_11

    .line 2882
    :pswitch_35
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatTime(I)V
    invoke-static {v5, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$4(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    goto :goto_11

    .line 2885
    :pswitch_3b
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnSheetFormatFraction(I)V
    invoke-static {v5, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$5(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    goto :goto_11

    .line 2888
    :pswitch_41
    packed-switch p2, :pswitch_data_1b6

    goto :goto_11

    .line 2889
    :pswitch_45
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetClear(I)V

    goto :goto_11

    .line 2890
    :pswitch_50
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetClear(I)V

    goto :goto_11

    .line 2891
    :pswitch_5a
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/infraware/office/evengine/EvInterface;->ISheetClear(I)V

    goto :goto_11

    .line 2895
    :pswitch_64
    packed-switch p2, :pswitch_data_1c0

    .line 2901
    :goto_67
    if-eq v1, v7, :cond_11

    .line 2902
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    invoke-virtual {v5, v8, v1}, Lcom/infraware/office/evengine/EvInterface;->ISheetInsertCell(II)V

    goto :goto_11

    .line 2896
    :pswitch_73
    const/4 v1, 0x1

    goto :goto_67

    .line 2897
    :pswitch_75
    const/4 v1, 0x0

    goto :goto_67

    .line 2898
    :pswitch_77
    const/4 v1, 0x2

    goto :goto_67

    .line 2899
    :pswitch_79
    const/4 v1, 0x3

    goto :goto_67

    .line 2905
    :pswitch_7b
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p2, v5, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2906
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnDecimal:Landroid/widget/Button;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$6(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 2909
    :pswitch_8f
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p2, v5, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wCurrency:I

    .line 2910
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2911
    .local v3, symbolItems:[Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnSymbol:Landroid/widget/Button;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$7(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;

    move-result-object v5

    aget-object v6, v3, p2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 2914
    .end local v3           #symbolItems:[Ljava/lang/String;
    :pswitch_b3
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput p2, v5, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wNegative:I

    .line 2915
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, negativeNumItems:[Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$8(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;

    move-result-object v5

    aget-object v6, v2, p2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2917
    packed-switch p2, :pswitch_data_1cc

    .line 2924
    :pswitch_d8
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$8(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_11

    .line 2921
    :pswitch_e3
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mBtnNegativeNum:Landroid/widget/Button;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$8(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_11

    .line 2929
    .end local v2           #negativeNumItems:[Ljava/lang/String;
    :pswitch_f0
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const-string v7, ""

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$9(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 2930
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2931
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v5

    const/4 v6, 0x6

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 2933
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 2934
    .local v4, totalNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11c
    if-lt v0, v4, :cond_13a

    .line 2939
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2940
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_11

    .line 2935
    :cond_13a
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    .line 2936
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2937
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 2934
    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    .line 2944
    .end local v0           #i:I
    .end local v4           #totalNum:I
    :pswitch_163
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v5, p2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onMakeList(I)V

    .line 2945
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnShowDialog(I)V

    goto/16 :goto_11

    .line 2864
    nop

    :pswitch_data_172
    .packed-switch 0xd
        :pswitch_12
        :pswitch_18
        :pswitch_2f
        :pswitch_35
        :pswitch_3b
        :pswitch_41
        :pswitch_64
        :pswitch_7b
        :pswitch_8f
        :pswitch_b3
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_163
    .end packed-switch

    .line 2869
    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
    .end packed-switch

    .line 2888
    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_45
        :pswitch_50
        :pswitch_5a
    .end packed-switch

    .line 2895
    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_73
        :pswitch_75
        :pswitch_77
        :pswitch_79
    .end packed-switch

    .line 2917
    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_d8
        :pswitch_e3
        :pswitch_d8
        :pswitch_e3
    .end packed-switch
.end method
