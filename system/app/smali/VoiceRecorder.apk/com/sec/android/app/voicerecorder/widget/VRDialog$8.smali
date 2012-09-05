.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createDefaultNameDialog(Landroid/app/Activity;Landroid/os/Handler;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;->val$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_4b

    .line 332
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 333
    .local v0, caretPos:I
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4c

    .line 334
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    :goto_20
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_42

    .line 338
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 341
    :cond_42
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f060030

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V

    .line 343
    .end local v0           #caretPos:I
    :cond_4b
    return-void

    .line 336
    .restart local v0       #caretPos:I
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_20
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 348
    return-void
.end method
