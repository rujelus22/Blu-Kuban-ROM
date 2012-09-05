.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;)V
    .registers 2
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 651
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;

    iget-object v1, v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 652
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;

    iget-object v1, v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 653
    return-void
.end method
