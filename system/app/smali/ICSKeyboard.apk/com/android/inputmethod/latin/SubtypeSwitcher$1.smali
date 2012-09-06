.class Lcom/android/inputmethod/latin/SubtypeSwitcher$1;
.super Landroid/os/AsyncTask;
.source "SubtypeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private final synthetic val$imiId:Ljava/lang/String;

.field private final synthetic val$subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iput-object p2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 326
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "params"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    #getter for: Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->access$0(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->this$0:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    #getter for: Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->access$1(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->val$subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->notifyOnCurrentInputMethodSubtypeChanged(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 342
    return-void
.end method
