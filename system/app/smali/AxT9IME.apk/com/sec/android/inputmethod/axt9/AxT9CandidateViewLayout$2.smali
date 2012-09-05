.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 371
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayExpand()I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v6

    .line 372
    .local v6, displayedNum:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setCandidateMode(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCompletions:Z
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTypedWordValid:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mbActiveWordIndex:B
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)B

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestionsExpand(Ljava/util/List;ZZBII)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->invalidateInputView()V

    .line 377
    return-void
.end method
