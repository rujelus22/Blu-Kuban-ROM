.class Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private final synthetic val$newInputView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->val$newInputView:Landroid/view/View;

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->val$newInputView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 840
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$4(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->val$newInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 842
    :cond_f
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->access$4(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 843
    return-void
.end method
