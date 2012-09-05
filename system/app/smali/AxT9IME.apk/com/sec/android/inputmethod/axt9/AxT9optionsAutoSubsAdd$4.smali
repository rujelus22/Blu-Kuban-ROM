.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


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
    .line 421
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 423
    const-string v8, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 424
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 425
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_24

    .line 426
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v3, v8, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 428
    :cond_24
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 429
    .local v1, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;
    invoke-static {v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 430
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;
    invoke-static {v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 432
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;
    invoke-static {v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 433
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;
    invoke-static {v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v2

    .line 439
    .local v2, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v2

    .line 442
    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9b

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_9b

    .line 443
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I
    invoke-static {v8, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I

    move-result v4

    .line 444
    .local v4, nResult:I
    if-ne v4, v7, :cond_b3

    .line 445
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_96

    .line 446
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->deleteEntry(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V

    .line 448
    :cond_96
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->writeDBdataToFile()V
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 460
    .end local v4           #nResult:I
    :cond_9b
    :goto_9b
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 461
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    .line 465
    .end local v1           #entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .end local v2           #errorcode:S
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_b2
    return v6

    .line 449
    .restart local v1       #entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .restart local v2       #errorcode:S
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v4       #nResult:I
    :cond_b3
    if-ne v4, v10, :cond_c6

    .line 450
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 451
    .local v0, context:Landroid/content/Context;
    const v7, 0x7f0a009c

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 452
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_9b

    .line 454
    .end local v0           #context:Landroid/content/Context;
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_c6
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 455
    .restart local v0       #context:Landroid/content/Context;
    const v7, 0x7f0a009d

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 456
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_9b

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .end local v2           #errorcode:S
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #nResult:I
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_d7
    move v6, v7

    .line 465
    goto :goto_b2
.end method
