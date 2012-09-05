.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->onRenameTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 538
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renameTitleTextWatcher()Z
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v2

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mPossibleRenameTitle:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2202(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mPossibleRenameTitle:Z
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 549
    :goto_13
    return-void

    .line 542
    :cond_14
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renamed:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setFixedNewFileName(ZLjava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 546
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_13
.end method
