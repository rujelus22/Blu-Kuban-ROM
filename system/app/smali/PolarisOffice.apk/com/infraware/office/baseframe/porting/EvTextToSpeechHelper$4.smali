.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 124
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v4, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 125
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 135
    :goto_17
    return-void

    .line 128
    :cond_18
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 130
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 131
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v1, 0x32

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    .line 132
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 133
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_17
.end method
