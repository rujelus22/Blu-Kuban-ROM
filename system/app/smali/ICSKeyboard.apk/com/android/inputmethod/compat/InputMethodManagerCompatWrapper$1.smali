.class Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;
.super Ljava/lang/Object;
.source "InputMethodManagerCompatWrapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;)I
    .registers 7
    .parameter "imi1"
    .parameter "imi2"

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    #getter for: Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->access$0(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, imiId1:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;->this$0:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    #getter for: Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->access$0(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, imiId2:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    check-cast p2, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper$1;->compare(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;)I

    move-result v0

    return v0
.end method
