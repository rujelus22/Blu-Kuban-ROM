.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCreate(Landroid/os/Bundle;)V
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
    .line 137
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 141
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, targetShortCutString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, targetSubString:Ljava/lang/String;
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 156
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Z)V

    .line 160
    :goto_62
    return-void

    .line 158
    :cond_63
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Z)V

    goto :goto_62
.end method
