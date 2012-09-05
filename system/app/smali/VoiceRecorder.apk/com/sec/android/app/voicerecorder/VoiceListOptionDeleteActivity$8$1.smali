.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;
.super Ljava/lang/Object;
.source "VoiceListOptionDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 370
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : Cancel interrupt!!!"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->interrupt()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    .line 373
    return-void
.end method
