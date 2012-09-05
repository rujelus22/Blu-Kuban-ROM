.class Lcom/android/email/activity/MessageCompose$16;
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
    .line 2787
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 2899
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2790
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    .line 2811
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 2815
    const/4 v1, 0x0

    .line 2816
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    if-eqz v5, :cond_97

    .line 2818
    const/16 v5, 0x15

    if-eq p3, v5, :cond_2d

    const/16 v5, 0x13

    if-ne p3, v5, :cond_80

    .line 2819
    :cond_2d
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionStartRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2824
    :cond_3b
    :goto_3b
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionCursorRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2825
    if-nez v1, :cond_7d

    .line 2826
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 2827
    if-eqz v1, :cond_7d

    .line 2828
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getScale()F

    move-result v2

    .line 2830
    .local v2, scale:F
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2831
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2832
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 2833
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 2849
    .end local v2           #scale:F
    :cond_7d
    :goto_7d
    if-nez v1, :cond_ca

    .line 2895
    :cond_7f
    :goto_7f
    return-void

    .line 2820
    :cond_80
    const/16 v5, 0x16

    if-eq p3, v5, :cond_88

    const/16 v5, 0x14

    if-ne p3, v5, :cond_3b

    .line 2821
    :cond_88
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3b

    .line 2837
    :cond_97
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 2838
    if-eqz v1, :cond_7d

    .line 2839
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getScale()F

    move-result v2

    .line 2841
    .restart local v2       #scale:F
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2842
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2843
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 2844
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_7d

    .line 2867
    .end local v2           #scale:F
    :cond_ca
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2868
    .local v3, scrollViewRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/ExtendedScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2871
    :try_start_d8
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/email/ExtendedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e7} :catch_11a

    .line 2883
    :goto_e7
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_102

    .line 2884
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 2886
    :cond_102
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 2887
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v6

    .line 2892
    .local v4, scrolly:I
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_7f

    .line 2872
    .end local v4           #scrolly:I
    :catch_11a
    move-exception v0

    .line 2874
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

    goto :goto_e7
.end method
