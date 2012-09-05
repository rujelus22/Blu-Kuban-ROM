.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 127
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, targetString:Ljava/lang/String;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 140
    :cond_27
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Z)V

    .line 144
    :goto_2d
    return-void

    .line 142
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    const/4 v2, 0x1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Z)V

    goto :goto_2d
.end method
