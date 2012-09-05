.class Lcom/android/calendar/ComposeHeaderView$1;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v4, 0x0

    .line 739
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #setter for: Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z
    invoke-static {v1, v4}, Lcom/android/calendar/ComposeHeaderView;->access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z

    .line 741
    if-eqz p2, :cond_45

    .line 745
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->resumeQuery()V

    .line 747
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$400(Lcom/android/calendar/ComposeHeaderView;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 827
    :goto_17
    return-void

    .line 757
    :cond_18
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 759
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 763
    :cond_2d
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #calls: Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$600(Lcom/android/calendar/ComposeHeaderView;)V

    .line 765
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$700(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/ToBtnLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    .line 767
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 809
    :cond_45
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->pauseQuery()V

    .line 811
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$400(Lcom/android/calendar/ComposeHeaderView;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 813
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #setter for: Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z
    invoke-static {v1, v4}, Lcom/android/calendar/ComposeHeaderView;->access$402(Lcom/android/calendar/ComposeHeaderView;Z)Z

    goto :goto_17

    .line 817
    :cond_5a
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, input:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static {v1, v0, v2, v4, v3}, Lcom/android/calendar/ComposeHeaderView;->access$800(Lcom/android/calendar/ComposeHeaderView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 821
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$1;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #calls: Lcom/android/calendar/ComposeHeaderView;->looseFocusFromEditText()V
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView;->access$300(Lcom/android/calendar/ComposeHeaderView;)V

    goto :goto_17
.end method
