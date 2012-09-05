.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->onClick(Landroid/view/View;)V
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
    .line 630
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->getCommand()Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->getCommand()Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    if-ne v0, v1, :cond_49

    .line 639
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2502(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->start()V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->start()V

    .line 647
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    return-void
.end method
