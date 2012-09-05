.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 288
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 290
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 291
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    sget-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v5, :cond_34

    .line 293
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->readDBdataFromFile()V
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 294
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)[B

    move-result-object v5

    const/16 v6, 0x5000

    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    .line 298
    :cond_34
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_71

    .line 299
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->addWordtoMyWords(Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)I

    move-result v3

    .line 300
    .local v3, nResult:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_a7

    .line 301
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 302
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->deleteMyWord(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 304
    :cond_6c
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->writeDBdataToFile()V
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 316
    .end local v3           #nResult:I
    :cond_71
    :goto_71
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const v6, 0x7f070042

    invoke-virtual {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 317
    .local v1, editText:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 318
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 320
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setResult(ILandroid/content/Intent;)V

    .line 321
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->finish()V

    .line 322
    return-void

    .line 305
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v3       #nResult:I
    :cond_a7
    if-ne v3, v8, :cond_ba

    .line 306
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0a009c

    invoke-static {v0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 308
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_71

    .line 310
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_ba
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 311
    .restart local v0       #context:Landroid/content/Context;
    const v5, 0x7f0a009d

    invoke-static {v0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 312
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_71
.end method
