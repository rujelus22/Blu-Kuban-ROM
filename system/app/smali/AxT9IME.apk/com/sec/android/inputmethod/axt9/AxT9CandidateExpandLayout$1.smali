.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;
.super Ljava/lang/Object;
.source "AxT9CandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 119
    .local v3, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 121
    .local v2, x:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mTouchPosX:I
    invoke-static {v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    .line 123
    packed-switch v0, :pswitch_data_f8

    .line 179
    :cond_19
    :goto_19
    return v9

    .line 126
    :pswitch_1a
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_19

    move-object v1, p1

    .line 127
    check-cast v1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 128
    .local v1, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$102(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;F)F

    .line 129
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;F)F

    .line 130
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v5

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    .line 131
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4, v9}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    .line 132
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v4

    if-eq v4, v7, :cond_19

    .line 133
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)V

    goto :goto_19

    .line 140
    .end local v1           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_57
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_19

    .line 141
    if-lez v2, :cond_7b

    int-to-float v4, v2

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewWidth:F
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7b

    if-lez v3, :cond_7b

    int-to-float v4, v3

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDownViewHeight:F
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7b

    .line 143
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4, v9}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    goto :goto_19

    .line 145
    :cond_7b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    .line 146
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v4

    if-eq v4, v7, :cond_93

    .line 147
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)V

    .line 149
    :cond_93
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto :goto_19

    .line 156
    :pswitch_99
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_19

    move-object v1, p1

    .line 157
    check-cast v1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 158
    .restart local v1       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 159
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getSuggestion()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 161
    :cond_b9
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    .line 162
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v4

    if-eq v4, v7, :cond_d1

    .line 163
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)V

    .line 165
    :cond_d1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto/16 :goto_19

    .line 171
    .end local v1           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_d8
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mIsInDownButton:Z
    invoke-static {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    .line 172
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v4

    if-eq v4, v7, :cond_f0

    .line 173
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mDisplayedNum:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->displayNormal(I)V
    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)V

    .line 175
    :cond_f0
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mBtnIndex:I
    invoke-static {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto/16 :goto_19

    .line 123
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_99
        :pswitch_57
        :pswitch_d8
    .end packed-switch
.end method
