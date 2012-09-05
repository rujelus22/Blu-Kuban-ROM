.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .registers 2
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 686
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 689
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 690
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 691
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 694
    :cond_15
    return-void
.end method
