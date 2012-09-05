.class Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;
.super Ljava/lang/Object;
.source "AxT9IMETutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;

    const v4, 0x7f070052

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 127
    .local v0, editText:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_36

    .line 129
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, lastInputMethodId:Ljava/lang/String;
    const-string v3, "AxT9IME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 132
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 133
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 136
    .end local v2           #lastInputMethodId:Ljava/lang/String;
    :cond_36
    return-void
.end method
