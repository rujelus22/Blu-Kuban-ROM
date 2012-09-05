.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;
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
    .line 206
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v13, -0x1

    const/4 v10, 0x0

    .line 208
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 209
    .local v2, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;
    invoke-static {v11, v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 210
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;
    invoke-static {v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 212
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;
    invoke-static {v11, v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 213
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;
    invoke-static {v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v3

    .line 219
    .local v3, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v3

    .line 222
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_ac

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v13, :cond_ac

    .line 223
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9f

    .line 224
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e0

    move v5, v9

    .line 225
    .local v5, isShortcutChanged:Z
    :goto_73
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e2

    move v6, v9

    .line 226
    .local v6, isSubstitutionChanged:Z
    :goto_84
    if-eqz v5, :cond_e4

    .line 227
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->hasEntry(Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9f

    .line 228
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->deleteEntry(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V

    .line 234
    .end local v5           #isShortcutChanged:Z
    .end local v6           #isSubstitutionChanged:Z
    :cond_9f
    :goto_9f
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I
    invoke-static {v11, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I

    move-result v7

    .line 235
    .local v7, nResult:I
    if-ne v7, v9, :cond_f2

    .line 236
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->writeDBdataToFile()V
    invoke-static {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 248
    .end local v7           #nResult:I
    :cond_ac
    :goto_ac
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const v11, 0x7f070034

    invoke-virtual {v9, v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 249
    .local v1, editText:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const-string v11, "input_method"

    invoke-virtual {v9, v11}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v4, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 252
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 253
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    .line 254
    return-void

    .end local v1           #editText:Landroid/widget/EditText;
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_e0
    move v5, v10

    .line 224
    goto :goto_73

    .restart local v5       #isShortcutChanged:Z
    :cond_e2
    move v6, v10

    .line 225
    goto :goto_84

    .line 230
    .restart local v6       #isSubstitutionChanged:Z
    :cond_e4
    if-eqz v6, :cond_9f

    .line 231
    iget-object v11, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->deleteEntry(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V

    goto :goto_9f

    .line 237
    .end local v5           #isShortcutChanged:Z
    .end local v6           #isSubstitutionChanged:Z
    .restart local v7       #nResult:I
    :cond_f2
    if-ne v7, v13, :cond_105

    .line 238
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, context:Landroid/content/Context;
    const v9, 0x7f0a009c

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 240
    .local v8, toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_ac

    .line 242
    .end local v0           #context:Landroid/content/Context;
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_105
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .restart local v0       #context:Landroid/content/Context;
    const v9, 0x7f0a009d

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 244
    .restart local v8       #toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_ac
.end method
