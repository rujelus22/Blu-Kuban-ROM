.class Lcom/android/email/activity/MessageListFragment$4;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->initScaleGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1757
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z
    invoke-static {v0, v3}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1759
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$602(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1760
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    .line 1761
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$702(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1762
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$808(Lcom/android/email/activity/MessageListFragment;)I

    .line 1767
    :goto_22
    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch inprogress"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    return v3

    .line 1764
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$708(Lcom/android/email/activity/MessageListFragment;)I

    .line 1765
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$802(Lcom/android/email/activity/MessageListFragment;I)I

    goto :goto_22
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 1773
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1775
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$602(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1776
    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch start"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x0

    .line 1782
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1784
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z
    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$602(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1785
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z
    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$502(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 1786
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$700(Lcom/android/email/activity/MessageListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessagesAdapter;->expandOrShinkListItemAll(III)V

    .line 1788
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I
    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$702(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1789
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I
    invoke-static {v0, v4}, Lcom/android/email/activity/MessageListFragment;->access$802(Lcom/android/email/activity/MessageListFragment;I)I

    .line 1791
    :cond_33
    const-string v0, "MessageListFragment"

    const-string v1, "Multi-touch End"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    return-void
.end method
