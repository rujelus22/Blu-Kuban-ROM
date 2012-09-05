.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iput v2, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 166
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 169
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method
