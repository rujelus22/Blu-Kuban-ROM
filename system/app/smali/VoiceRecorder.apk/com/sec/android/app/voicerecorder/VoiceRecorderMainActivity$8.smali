.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->showCancelDialog()V
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
    .line 1364
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "keyCode"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doCancel()V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1368
    return-void
.end method
