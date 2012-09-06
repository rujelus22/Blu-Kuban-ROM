.class Lcom/google/android/apps/plus/fragments/ReshareFragment$1;
.super Ljava/lang/Object;
.source "ReshareFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ReshareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-direct {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 125
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    if-nez v7, :cond_9

    .line 145
    :cond_8
    :goto_8
    return-void

    .line 128
    :cond_9
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 129
    .local v0, cursor:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-virtual {v7, p1, v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v8}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getThreshold()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v0, :cond_8

    .line 130
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0207

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 132
    .local v3, minHeight:I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 133
    .local v2, location:[I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getLocationOnScreen([I)V

    .line 134
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v6, windowRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 137
    const/4 v7, 0x1

    aget v4, v2, v7

    .line 138
    .local v4, viewScreenY:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getCursorYPosition()I

    move-result v7

    add-int v1, v4, v7

    .line 139
    .local v1, cursorScreenY:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 141
    .local v5, windowHeight:I
    sub-int v7, v5, v1

    if-ge v7, v3, :cond_8

    .line 142
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$200(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Landroid/widget/ScrollView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ReshareFragment;->mEditor:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v9}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getCursorYTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_8
.end method
