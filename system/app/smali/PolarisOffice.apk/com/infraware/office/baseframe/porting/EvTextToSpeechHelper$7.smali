.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 176
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    const/4 v1, 0x3

    iput v1, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 177
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 188
    :goto_18
    return-void

    .line 180
    :cond_19
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 182
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v2, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 183
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v3, v3}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    .line 184
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 186
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_18
.end method
