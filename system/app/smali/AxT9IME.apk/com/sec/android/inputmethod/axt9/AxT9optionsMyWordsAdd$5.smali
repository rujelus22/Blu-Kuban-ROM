.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsAdd.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;
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
    .line 437
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 12
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 439
    const-string v6, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 440
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 441
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_24

    .line 442
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 444
    :cond_24
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;
    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 445
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_97

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_97

    .line 455
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->addWordtoMyWords(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)I

    move-result v2

    .line 457
    .local v2, nResult:I
    if-ne v2, v5, :cond_98

    .line 458
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 459
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->deleteMyWord(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 461
    :cond_79
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->writeDBdataToFile()V
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 472
    :goto_7e
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setResult(ILandroid/content/Intent;)V

    .line 473
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->finish()V

    .line 478
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #nResult:I
    :cond_97
    :goto_97
    return v4

    .line 462
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #nResult:I
    :cond_98
    if-ne v2, v8, :cond_ab

    .line 463
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 464
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0a009c

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 465
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7e

    .line 467
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_ab
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 468
    .restart local v0       #context:Landroid/content/Context;
    const v5, 0x7f0a009d

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 469
    .restart local v3       #toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7e

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #nResult:I
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_bc
    move v4, v5

    .line 478
    goto :goto_97
.end method
