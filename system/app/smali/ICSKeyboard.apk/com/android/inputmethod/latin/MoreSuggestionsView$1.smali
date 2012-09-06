.class Lcom/android/inputmethod/latin/MoreSuggestionsView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreSuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 58
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$0(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 80
    return-void
.end method

.method public onCodeInput(I[III)V
    .registers 7
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    add-int/lit16 v0, p1, -0x400

    .line 72
    .local v0, index:I
    if-ltz v0, :cond_11

    const/16 v1, 0x12

    if-ge v0, v1, :cond_11

    .line 73
    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v1}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$0(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    .line 75
    :cond_11
    return-void
.end method

.method public onPress(IZ)V
    .registers 4
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$0(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 62
    return-void
.end method

.method public onRelease(IZ)V
    .registers 4
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$0(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 67
    return-void
.end method
