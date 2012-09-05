.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createRenameDialog(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
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
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x36

    if-le v1, v2, :cond_4c

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 223
    .local v0, caretPos:I
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4e

    .line 224
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_43

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$editText:Landroid/widget/EditText;

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 231
    :cond_43
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;->val$activity:Landroid/app/Activity;

    const v2, 0x7f060030

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_51

    .line 233
    .end local v0           #caretPos:I
    :cond_4c
    monitor-exit p0

    return-void

    .line 226
    .restart local v0       #caretPos:I
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 221
    .end local v0           #caretPos:I
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 238
    return-void
.end method
