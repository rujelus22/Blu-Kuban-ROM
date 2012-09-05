.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, targetString:Ljava/lang/String;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3b

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 150
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Z)V

    .line 154
    :goto_41
    return-void

    .line 152
    :cond_42
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const/4 v2, 0x1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Z)V

    goto :goto_41
.end method
