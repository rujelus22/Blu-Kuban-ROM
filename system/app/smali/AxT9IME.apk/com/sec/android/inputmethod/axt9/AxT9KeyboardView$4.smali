.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;
.super Ljava/lang/Object;
.source "AxT9KeyboardView.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 4811
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 4814
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 4815
    return-void
.end method

.method public onPress(I)V
    .registers 3
    .parameter "primaryCode"

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 4823
    return-void
.end method

.method public onRelease(I)V
    .registers 3
    .parameter "primaryCode"

    .prologue
    .line 4825
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 4826
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 4828
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 4829
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 4830
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 4820
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 4817
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 4818
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 4819
    return-void
.end method
