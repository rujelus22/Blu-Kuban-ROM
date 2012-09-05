.class Lcom/android/email/activity/MessageCompose$15;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 2783
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2664
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 14
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2686
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 2689
    if-eqz p4, :cond_20

    .line 2690
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V
    invoke-static {v5, v7}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;Z)V

    .line 2694
    :cond_20
    const/4 v1, 0x0

    .line 2695
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 2696
    const/16 v5, 0x15

    if-eq p3, v5, :cond_35

    const/16 v5, 0x13

    if-ne p3, v5, :cond_7a

    .line 2697
    :cond_35
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionStartRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2702
    :cond_43
    :goto_43
    if-nez v1, :cond_77

    .line 2703
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 2704
    if-eqz v1, :cond_77

    .line 2705
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getScale()F

    move-result v2

    .line 2707
    .local v2, scale:F
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2708
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2709
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 2710
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 2725
    .end local v2           #scale:F
    :cond_77
    :goto_77
    if-nez v1, :cond_c4

    .line 2779
    :cond_79
    :goto_79
    return-void

    .line 2698
    :cond_7a
    const/16 v5, 0x16

    if-eq p3, v5, :cond_82

    const/16 v5, 0x14

    if-ne p3, v5, :cond_43

    .line 2699
    :cond_82
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_43

    .line 2714
    :cond_91
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 2715
    if-eqz v1, :cond_77

    .line 2716
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getScale()F

    move-result v2

    .line 2718
    .restart local v2       #scale:F
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2719
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2720
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 2721
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_77

    .line 2743
    .end local v2           #scale:F
    :cond_c4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2744
    .local v3, scrollViewRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/ExtendedScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2747
    :try_start_d2
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/email/ExtendedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e1} :catch_12d

    .line 2759
    :goto_e1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_fc

    .line 2760
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 2762
    :cond_fc
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 2763
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v6

    .line 2768
    .local v4, scrolly:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I
    invoke-static {v5, v6}, Lcom/android/email/activity/MessageCompose;->access$3002(Lcom/android/email/activity/MessageCompose;I)I

    .line 2769
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_147

    .line 2770
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_79

    .line 2748
    .end local v4           #scrolly:I
    :catch_12d
    move-exception v0

    .line 2750
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured at offsetDescendantRectToMyCoords(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 2772
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #scrolly:I
    :cond_147
    const-string v5, "com.android.email.intent.action.REPLY"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17e

    const-string v5, "com.android.email.intent.action.REPLY_ALL"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17e

    const-string v5, "com.android.email.intent.action.FORWARD"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17e

    .line 2774
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8, v6}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_79

    .line 2776
    :cond_17e
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$3100()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v8, v6}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_79
.end method
