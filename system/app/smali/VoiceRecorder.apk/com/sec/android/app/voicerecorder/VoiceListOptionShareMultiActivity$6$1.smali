.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;
.super Ljava/lang/Object;
.source "VoiceListOptionShareMultiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->interrupt()V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6$1;->this$1:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 420
    return-void
.end method
