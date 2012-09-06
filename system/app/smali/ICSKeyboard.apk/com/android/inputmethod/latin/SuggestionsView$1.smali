.class Lcom/android/inputmethod/latin/SuggestionsView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 710
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$2(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    .line 723
    return-void
.end method

.method public onCustomRequest(I)Z
    .registers 5
    .parameter "requestCode"

    .prologue
    .line 713
    move v0, p1

    .line 714
    .local v0, index:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$0(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 715
    .local v1, word:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$1(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 716
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$2(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    .line 717
    const/4 v2, 0x1

    return v2
.end method
