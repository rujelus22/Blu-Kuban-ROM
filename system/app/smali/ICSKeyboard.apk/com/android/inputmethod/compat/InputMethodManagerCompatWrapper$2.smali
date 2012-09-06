.class Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "di"
    .parameter "whichButton"

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$2;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    #getter for: Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mService:Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->access$1(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method
