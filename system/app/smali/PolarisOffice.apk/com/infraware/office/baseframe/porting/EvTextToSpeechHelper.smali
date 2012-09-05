.class public Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;
.implements Lcom/infraware/office/baseframe/EvBaseE;
.implements Lcom/infraware/office/baseframe/EvBaseE$BaseActivityEventType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;
    }
.end annotation


# static fields
.field private static final END_SPEAK_CHECK:I = 0x1

.field private static final REPEAT_SPEAK_CHECK:I


# instance fields
.field private DUMMY_PARAMS:Ljava/util/HashMap;

.field final eTTSLang_FRANCE:I

.field final eTTSLang_GERMAN:I

.field final eTTSLang_ITALY:I

.field final eTTSLang_JAPAN:I

.field final eTTSLang_KOREA:I

.field final eTTSLang_SIMPLE_CHINA:I

.field final eTTSLang_SPAIN:I

.field final eTTSLang_TAIWAN:I

.field final eTTSLang_TRADI_CHINA:I

.field final eTTSLang_UK:I

.field final eTTSLang_US:I

.field final eTTSStatus_Pause:I

.field final eTTSStatus_Play_Auto:I

.field final eTTSStatus_Play_AutoCur:I

.field final eTTSStatus_Play_UserNext:I

.field final eTTSStatus_Play_UserPrev:I

.field mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothActionString:Ljava/lang/String;

.field mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field mSupportLangIndex:[I

.field mSupportLangStrs:[Ljava/lang/CharSequence;

.field private mTtsBar:Landroid/widget/LinearLayout;

.field private mTtsNextBtn:Landroid/widget/ImageButton;

.field private mTtsNextImg:Landroid/widget/ImageView;

.field private mTtsPauseBtn:Landroid/widget/ImageButton;

.field private mTtsPauseImg:Landroid/widget/ImageView;

.field mTtsPauseLayout:Landroid/widget/FrameLayout;

.field private mTtsPlayBtn:Landroid/widget/ImageButton;

.field private mTtsPlayImg:Landroid/widget/ImageView;

.field mTtsPlayLayout:Landroid/widget/FrameLayout;

.field private mTtsPrevBtn:Landroid/widget/ImageButton;

.field private mTtsPrevImg:Landroid/widget/ImageView;

.field private mTtsSetupBtn:Landroid/widget/ImageButton;

.field private mTtsSetupImg:Landroid/widget/ImageView;

.field m_TtsEngine:Landroid/speech/tts/TextToSpeech;

.field m_bClose:Z

.field m_bEnablePrevNext:Z

.field m_bScreenTimeOutDisable:Z

.field m_bTTSInit:Z

.field m_nTTSLangIndex:I

.field m_nTTSStatus:I

.field private m_oFilter:Landroid/content/IntentFilter;

.field private m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

.field m_strReadTTS:Ljava/lang/String;

.field protected final messageHandler:Landroid/os/Handler;

.field private screenTimeOutCheckHandler:Landroid/os/Handler;

.field strHashMap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSStatus_Play_Auto:I

    .line 31
    iput v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSStatus_Pause:I

    .line 32
    iput v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSStatus_Play_UserPrev:I

    .line 33
    iput v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSStatus_Play_UserNext:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSStatus_Play_AutoCur:I

    .line 36
    iput v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_US:I

    .line 37
    iput v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_UK:I

    .line 38
    iput v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_GERMAN:I

    .line 39
    iput v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_FRANCE:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_ITALY:I

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_SPAIN:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_KOREA:I

    .line 43
    const/4 v0, 0x7

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_SIMPLE_CHINA:I

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_TRADI_CHINA:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_TAIWAN:I

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->eTTSLang_JAPAN:I

    .line 48
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    .line 49
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    .line 51
    iput v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 53
    const-string v0, "officeTTS"

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->strHashMap:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    .line 62
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    .line 65
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    .line 66
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    .line 67
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevImg:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayImg:Landroid/widget/ImageView;

    .line 71
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseImg:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextImg:Landroid/widget/ImageView;

    .line 73
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupImg:Landroid/widget/ImageView;

    .line 75
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    .line 76
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    .line 78
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 79
    iput v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    .line 81
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bClose:Z

    .line 82
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    .line 83
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bEnablePrevNext:Z

    .line 87
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    .line 88
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    .line 91
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bScreenTimeOutDisable:Z

    .line 96
    iput-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;

    .line 640
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$1;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->messageHandler:Landroid/os/Handler;

    .line 675
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$2;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    .line 737
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$3;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$3;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 100
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 101
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 103
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->strHashMap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const v0, 0x7f0c0149

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0c014a

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    .line 107
    const v0, 0x7f0c014d

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    .line 108
    const v0, 0x7f0c0150

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    .line 109
    const v0, 0x7f0c0152

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    .line 110
    const v0, 0x7f0c0154

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f0c014b

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevImg:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0c014e

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayImg:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0c0151

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseImg:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0c0153

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextImg:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0c0155

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupImg:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    invoke-direct {p0, v3}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setTTSControlbutton(Z)V

    .line 121
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$4;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$5;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$6;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$7;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$8;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$8;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f0c014c

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    .line 205
    const v0, 0x7f0c014f

    invoke-virtual {p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    .line 211
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 212
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 214
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    .line 216
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    .line 221
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 224
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;

    .line 228
    :goto_19f
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    .line 231
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    return-void

    .line 226
    :cond_1bc
    const-string v0, "android.bluetooth.headset.action.STATE_CHANGED"

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;

    goto :goto_19f
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mBluetoothActionString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    return-object v0
.end method

.method public static isSupportTTS(I)Z
    .registers 3
    .parameter "EV_DOCEXTENSION_TYPE"

    .prologue
    const/4 v0, 0x0

    .line 240
    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    const/16 v1, 0x12

    if-eq p0, v1, :cond_c

    const/16 v1, 0xc

    if-ne p0, v1, :cond_13

    .line 241
    :cond_c
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isTTSSupportModel()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 242
    const/4 v0, 0x1

    .line 247
    :cond_13
    return v0
.end method

.method public static isSupportTTS(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 253
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.settings.TextToSpeechSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 261
    :goto_15
    return v4

    .line 256
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.settings.Settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_15

    .line 258
    :catch_21
    move-exception v0

    .line 261
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15
.end method

.method private setTTSControlbutton(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 812
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 813
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 814
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 816
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 817
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 818
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 819
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 822
    return-void
.end method


# virtual methods
.method public BGMPause()V
    .registers 7

    .prologue
    .line 720
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 721
    .local v1, mgr:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 728
    .end local v0           #intent:Landroid/content/Intent;
    :cond_23
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 729
    return-void
.end method

.method public chaeckLanguage()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, nAvailableCount:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_e

    .line 529
    add-int/lit8 v0, v0, 0x1

    .line 530
    :cond_e
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_1a

    .line 531
    add-int/lit8 v0, v0, 0x1

    .line 532
    :cond_1a
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_26

    .line 533
    add-int/lit8 v0, v0, 0x1

    .line 534
    :cond_26
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_32

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 536
    :cond_32
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_3e

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 538
    :cond_3e
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_4a

    .line 539
    add-int/lit8 v0, v0, 0x1

    .line 540
    :cond_4a
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v3

    if-nez v3, :cond_63

    .line 541
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/util/Locale;

    const-string v5, "spa"

    const-string v6, "ESP"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_63

    .line 542
    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_63
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_6f

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 546
    :cond_6f
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_7b

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 548
    :cond_7b
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_87

    .line 549
    add-int/lit8 v0, v0, 0x1

    .line 550
    :cond_87
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_93

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 553
    :cond_93
    new-array v3, v0, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    .line 554
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, nPos:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_bb

    .line 558
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080261

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 559
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .local v2, nPos:I
    const/4 v4, 0x0

    aput v4, v3, v1

    move v1, v2

    .line 561
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_bb
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_da

    .line 562
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080267

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 563
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x6

    aput v4, v3, v1

    move v1, v2

    .line 565
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_da
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_f8

    .line 566
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080262

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 567
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    aput v7, v3, v1

    move v1, v2

    .line 569
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_f8
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_117

    .line 570
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080263

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 571
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x2

    aput v4, v3, v1

    move v1, v2

    .line 573
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_117
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_136

    .line 574
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080264

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 575
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x3

    aput v4, v3, v1

    move v1, v2

    .line 577
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_136
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_155

    .line 578
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080265

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 579
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x4

    aput v4, v3, v1

    move v1, v2

    .line 581
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_155
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v3

    if-nez v3, :cond_181

    .line 582
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/util/Locale;

    const-string v5, "spa"

    const-string v6, "ESP"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_181

    .line 583
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080266

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 584
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x5

    aput v4, v3, v1

    move v1, v2

    .line 587
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_181
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_1a0

    .line 588
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080268

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 589
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/4 v4, 0x7

    aput v4, v3, v1

    move v1, v2

    .line 591
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_1a0
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_1c0

    .line 592
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f080269

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 593
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/16 v4, 0x8

    aput v4, v3, v1

    move v1, v2

    .line 595
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_1c0
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_1e0

    .line 596
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f08026a

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 597
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/16 v4, 0x9

    aput v4, v3, v1

    move v1, v2

    .line 599
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_1e0
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_200

    .line 600
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v5, 0x7f08026b

    invoke-virtual {v4, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 601
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    const/16 v4, 0xa

    aput v4, v3, v1

    move v1, v2

    .line 603
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_200
    return-void
.end method

.method public finalizeSpeech()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 292
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bClose:Z

    .line 295
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_16

    .line 296
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 298
    :cond_16
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 299
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 301
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    if-eqz v1, :cond_25

    .line 302
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_25
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oFilter:Landroid/content/IntentFilter;

    .line 305
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_oReceiver:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$ActionReceiver;

    .line 307
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v2, "TTS_Lang"

    invoke-virtual {v1, v2, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_41

    .line 309
    const-string v1, "TTSLang"

    iget v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    :cond_41
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v4, v4, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    .line 314
    iget-boolean v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    if-eqz v1, :cond_54

    .line 315
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 316
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 318
    :cond_54
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    .line 319
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 321
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 329
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    .line 330
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    .line 331
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    .line 332
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    .line 333
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    .line 334
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    .line 335
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    .line 336
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevImg:Landroid/widget/ImageView;

    .line 337
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayImg:Landroid/widget/ImageView;

    .line 338
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseImg:Landroid/widget/ImageView;

    .line 339
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextImg:Landroid/widget/ImageView;

    .line 340
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupImg:Landroid/widget/ImageView;

    .line 342
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    .line 343
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    .line 345
    iput-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    .line 346
    return-void
.end method

.method public getCurLanguage()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    return v0
.end method

.method public getLanguages()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public initialize()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v2, "TTS_Lang"

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 277
    const-string v1, "TTSLang"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    .line 281
    :goto_29
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v4, v4}, Lcom/infraware/office/evengine/EvInterface;->IGetTextToSpeachString(III)V

    .line 282
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 284
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    return-void

    .line 279
    :cond_39
    const-string v1, "TTSLang"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    goto :goto_29
.end method

.method public isTextToSpeechPlay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 798
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1a

    .line 800
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 801
    :cond_19
    const/4 v0, 0x1

    .line 806
    :cond_1a
    return v0
.end method

.method public onInit(I)V
    .registers 9
    .parameter "status"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 409
    if-nez p1, :cond_ac

    .line 410
    iput-boolean v6, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    .line 412
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->chaeckLanguage()V

    .line 413
    invoke-direct {p0, v6}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setTTSControlbutton(Z)V

    .line 415
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    array-length v2, v2

    if-lt v2, v6, :cond_16

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangStrs:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v2, v6, :cond_57

    .line 416
    :cond_16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    const v3, 0x7f080215

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 418
    const v3, 0x7f080216

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$9;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v4, 0x7f080045

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;-><init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 484
    :cond_56
    :goto_56
    return-void

    .line 449
    :cond_57
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    iget v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setLanguage(I)I

    move-result v1

    .line 450
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    .line 451
    const/4 v2, -0x2

    if-ne v1, v2, :cond_82

    .line 452
    :cond_67
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v4, 0x7f080260

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 453
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setLanguage(I)I

    .line 454
    iput v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    .line 459
    :cond_82
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    .line 460
    .local v0, nRtn:I
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    if-eqz v2, :cond_56

    .line 462
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 463
    iput v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 464
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 466
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 467
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_56

    .line 474
    .end local v0           #nRtn:I
    .end local v1           #result:I
    :cond_ac
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v3, "Could not initialize TextToSpeech."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 476
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    .line 477
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 478
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 479
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 480
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 481
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsSetupBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 482
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_56
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 4
    .parameter "utteranceId"

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->strHashMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 702
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 704
    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 707
    :cond_16
    return-void
.end method

.method public setEnablePrevNext(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 735
    return-void
.end method

.method public setLanguage(I)I
    .registers 6
    .parameter "nLang"

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_76

    .line 522
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    :goto_b
    return v0

    .line 489
    :pswitch_c
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 492
    :pswitch_15
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 495
    :pswitch_1e
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 498
    :pswitch_27
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 501
    :pswitch_30
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 504
    :pswitch_39
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "spa"

    const-string v3, "ESP"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 507
    :pswitch_49
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 510
    :pswitch_52
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 513
    :pswitch_5b
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 516
    :pswitch_64
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 519
    :pswitch_6d
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_b

    .line 487
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_39
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public setLanguageIndex(I)V
    .registers 8
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->BGMPause()V

    .line 607
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setLanguage(I)I

    move-result v1

    .line 608
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 609
    const/4 v2, -0x2

    if-ne v1, v2, :cond_58

    .line 610
    :cond_12
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v4, 0x7f080260

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 611
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mSupportLangIndex:[I

    iget v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setLanguage(I)I

    .line 619
    :goto_2d
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    .line 620
    .local v0, nRtn:I
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    if-eqz v2, :cond_57

    .line 622
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 623
    iput v5, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 624
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 625
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 626
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 627
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 630
    :cond_57
    return-void

    .line 614
    .end local v0           #nRtn:I
    :cond_58
    iput p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSLangIndex:I

    goto :goto_2d
.end method

.method public speechString(Ljava/lang/String;)V
    .registers 7
    .parameter "string"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bClose:Z

    if-eqz v0, :cond_9

    .line 388
    :cond_8
    :goto_8
    return-void

    .line 362
    :cond_9
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    .line 364
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_bTTSInit:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    if-nez v0, :cond_4b

    .line 366
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 367
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 368
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 370
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 375
    :cond_32
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->DUMMY_PARAMS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 376
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 378
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->setEnablePrevNext(Z)V

    .line 379
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    :cond_4b
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_strReadTTS:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 384
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 710
    iput v2, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_nTTSStatus:I

    .line 711
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPlayLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mTtsPauseLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->m_TtsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 714
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->screenTimeOutCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 715
    return-void
.end method
