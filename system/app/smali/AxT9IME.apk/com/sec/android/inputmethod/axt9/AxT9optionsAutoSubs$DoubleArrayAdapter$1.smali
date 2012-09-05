.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 730
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 731
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    iget-object v1, v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$1002(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 732
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 733
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1e

    .line 734
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 736
    :cond_1e
    return v2
.end method
