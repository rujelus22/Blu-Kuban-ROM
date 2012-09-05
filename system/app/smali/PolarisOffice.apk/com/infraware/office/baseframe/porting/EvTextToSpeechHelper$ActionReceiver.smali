.class public Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EvTextToSpeechHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 761
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 763
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 765
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_42

    .line 767
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 768
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 769
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 770
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 771
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 775
    :cond_42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$3(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 776
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 777
    .local v0, newState:I
    if-nez v0, :cond_7c

    .line 778
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 779
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 780
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 781
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 782
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 785
    .end local v0           #newState:I
    :cond_7c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 787
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 788
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 789
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 790
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 791
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    :cond_aa
    return-void
.end method
