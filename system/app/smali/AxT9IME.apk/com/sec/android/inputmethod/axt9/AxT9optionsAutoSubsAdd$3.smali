.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 261
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 262
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    .line 266
    return-void
.end method
