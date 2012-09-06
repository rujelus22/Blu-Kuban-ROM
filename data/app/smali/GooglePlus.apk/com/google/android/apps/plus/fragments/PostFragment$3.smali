.class Lcom/google/android/apps/plus/fragments/PostFragment$3;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

.field final synthetic val$mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/util/MentionTokenizer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->val$mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$800(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 643
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 605
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 612
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    if-nez v7, :cond_9

    .line 634
    :cond_8
    :goto_8
    return-void

    .line 615
    :cond_9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 616
    .local v0, cursor:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->val$mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-virtual {v7, p1, v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getThreshold()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v0, :cond_8

    .line 619
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0207

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 621
    .local v3, minHeight:I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 622
    .local v2, location:[I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getLocationOnScreen([I)V

    .line 623
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 624
    .local v6, windowRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 626
    const/4 v7, 0x1

    aget v4, v2, v7

    .line 627
    .local v4, viewScreenY:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getCursorYPosition()I

    move-result v7

    add-int v1, v4, v7

    .line 628
    .local v1, cursorScreenY:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 630
    .local v5, windowHeight:I
    sub-int v7, v5, v1

    if-ge v7, v3, :cond_8

    .line 631
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$2000(Lcom/google/android/apps/plus/fragments/PostFragment;)Landroid/widget/ScrollView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PostFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v9}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getCursorYTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_8
.end method
