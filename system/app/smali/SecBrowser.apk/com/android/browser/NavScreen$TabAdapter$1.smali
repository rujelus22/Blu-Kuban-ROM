.class Lcom/android/browser/NavScreen$TabAdapter$1;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/NavScreen$TabAdapter;

.field final synthetic val$closePosition:I

.field final synthetic val$closeView:Landroid/widget/ImageView;

.field final synthetic val$position:I

.field final synthetic val$tabCount:I

.field final synthetic val$updateTab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen$TabAdapter;Landroid/widget/ImageView;IILcom/android/browser/Tab;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iput-object p2, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closeView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closePosition:I

    iput p4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabCount:I

    iput-object p5, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    iput p6, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 621
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1f

    .line 623
    const-string v3, "Nav"

    const-string v4, "NavScreen :TabAdapter getView()change close icon pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closeView:Landroid/widget/ImageView;

    const v4, 0x7f020072

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mCloseIconPressed:Z
    invoke-static {v3, v6}, Lcom/android/browser/NavScreen;->access$802(Lcom/android/browser/NavScreen;Z)Z

    .line 691
    :cond_1e
    :goto_1e
    return v6

    .line 627
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v6, v3, :cond_15d

    .line 628
    const-string v3, "Nav"

    const-string v4, "NavScreen :TabAdapter getView()change close normal"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closeView:Landroid/widget/ImageView;

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mCloseIconPressed:Z
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$800(Lcom/android/browser/NavScreen;)Z

    move-result v3

    if-ne v3, v6, :cond_1e

    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-boolean v3, v3, Lcom/android/browser/NavScreen;->isOpeningNewTab:Z

    if-nez v3, :cond_1e

    .line 632
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iput-boolean v6, v3, Lcom/android/browser/NavScreen;->isClosingTab:Z

    .line 633
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mCloseIconPressed:Z
    invoke-static {v3, v5}, Lcom/android/browser/NavScreen;->access$802(Lcom/android/browser/NavScreen;Z)Z

    .line 634
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v4, v4, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, v4, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    iget v5, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closePosition:I

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    #calls: Lcom/android/browser/NavScreen;->onCloseTab(Lcom/android/browser/Tab;)V
    invoke-static {v3, v4}, Lcom/android/browser/NavScreen;->access$000(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V

    .line 636
    iget v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabCount:I

    if-eq v3, v6, :cond_1e

    .line 640
    iget v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabCount:I

    iget v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closePosition:I

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_89

    .line 642
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10c

    .line 649
    :goto_7a
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v3, v3, Lcom/android/browser/NavScreen;->mTabUrl:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_89
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v3, v3, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 655
    .local v0, count:I
    iget v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closePosition:I

    add-int/lit8 v2, v3, 0x1

    .line 656
    .local v2, positionCount:I
    const/4 v1, 0x0

    .local v1, pageIndicator:I
    :goto_98
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageCount:I
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$100(Lcom/android/browser/NavScreen;)I

    move-result v3

    if-ge v1, v3, :cond_152

    .line 658
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_109

    .line 659
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v4, v4, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 661
    if-ge v1, v0, :cond_109

    .line 662
    iget v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$position:I

    if-ne v1, v3, :cond_11d

    .line 663
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const v4, 0x7f0200d2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 665
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v4, v4, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    :cond_109
    :goto_109
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 646
    .end local v0           #count:I
    .end local v1           #pageIndicator:I
    .end local v2           #positionCount:I
    :cond_10c
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v3, v3, Lcom/android/browser/NavScreen;->mTabTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$updateTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 668
    .restart local v0       #count:I
    .restart local v1       #pageIndicator:I
    .restart local v2       #positionCount:I
    :cond_11d
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    const v4, 0x7f0200d3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 670
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v4, v4, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_109

    .line 677
    :cond_152
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v3, v3, Lcom/android/browser/NavScreen;->mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

    invoke-virtual {v3}, Lcom/android/browser/NavScreen$TabAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1e

    .line 683
    .end local v0           #count:I
    .end local v1           #pageIndicator:I
    .end local v2           #positionCount:I
    :cond_15d
    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_1e

    .line 686
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closeView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_18b

    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$closeView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_18b

    .line 687
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mCloseIconPressed:Z
    invoke-static {v3, v6}, Lcom/android/browser/NavScreen;->access$802(Lcom/android/browser/NavScreen;Z)Z

    goto/16 :goto_1e

    .line 689
    :cond_18b
    iget-object v3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v3, v3, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    #setter for: Lcom/android/browser/NavScreen;->mCloseIconPressed:Z
    invoke-static {v3, v5}, Lcom/android/browser/NavScreen;->access$802(Lcom/android/browser/NavScreen;Z)Z

    goto/16 :goto_1e
.end method
