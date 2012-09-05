.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;
.super Ljava/lang/Object;
.source "AxT9CandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 188
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 191
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleAddWord()V

    .line 192
    return-void
.end method
