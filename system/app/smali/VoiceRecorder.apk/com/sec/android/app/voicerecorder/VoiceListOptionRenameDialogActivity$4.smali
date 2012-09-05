.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 215
    monitor-enter p0

    const/16 v1, 0x36

    .line 216
    .local v1, rename_max_len:I
    :try_start_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v1, :cond_68

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 218
    .local v0, caretPos:I
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_6a

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 222
    :goto_29
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5b

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 226
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060030

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showManagedToast(Landroid/content/Context;II)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6d

    .line 228
    .end local v0           #caretPos:I
    :cond_68
    monitor-exit p0

    return-void

    .line 221
    .restart local v0       #caretPos:I
    :cond_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 215
    .end local v0           #caretPos:I
    :catchall_6d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mBeforeFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$102(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 233
    return-void
.end method
