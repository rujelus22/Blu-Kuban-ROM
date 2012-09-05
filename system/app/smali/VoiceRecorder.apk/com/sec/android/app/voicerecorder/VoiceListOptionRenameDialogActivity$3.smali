.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 209
    return-void
.end method
