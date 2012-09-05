.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 249
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "tview"
    .parameter "hasfocus"

    .prologue
    .line 251
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    .line 252
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    check-cast p1, Landroid/widget/TableRow;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    :cond_17
    return-void
.end method
