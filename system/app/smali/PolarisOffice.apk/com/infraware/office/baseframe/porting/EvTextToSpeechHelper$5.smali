.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    .line 144
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 146
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 147
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v1, v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$4(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 148
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, v4}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 159
    :goto_41
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void

    .line 152
    :cond_4b
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 154
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v3, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 155
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v4, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    .line 156
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    goto :goto_41
.end method
