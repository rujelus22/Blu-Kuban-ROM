.class public Lcom/vlingo/client/asr/ProgressView;
.super Landroid/widget/LinearLayout;
.source "ProgressView.java"


# static fields
.field public static final COMPLETED:I = 0x0

.field private static final ENABLE_BUTTON:I = 0x4

.field public static final PROCESSING:I = 0x3

.field public static final RECORDING:I = 0x2

.field public static final STARTING:I = 0x1

.field private static final START_ANIM:I = 0x5

.field private static final UPDATE_WAVE:I = 0x6


# instance fields
.field private imageRecordIndicator:Landroid/widget/ImageView;

.field private imageRecordWaves:Landroid/widget/ImageView;

.field lastImage:I

.field private m_CancelButton:Landroid/widget/Button;

.field private m_LastAction:I

.field private m_ProgressText:Landroid/widget/TextView;

.field private m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

.field private m_RecoProgressHandler:Lcom/vlingo/client/android/core/asr/ProgressHandler;

.field private m_StopRecording:Landroid/widget/Button;

.field private m_Updater:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/asr/ProgressView;->lastImage:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_LastAction:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/asr/ProgressView;->lastImage:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_LastAction:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/asr/ProgressView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/asr/ProgressView;->updateDisplay(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/asr/ProgressView;)Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/asr/ProgressView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/asr/ProgressView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_CancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method private setGettingReadyImage()V
    .registers 3

    .prologue
    .line 201
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :goto_e
    return-void

    .line 205
    :cond_f
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e
.end method

.method private updateDisplay(II)V
    .registers 8
    .parameter "action"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 144
    packed-switch p1, :pswitch_data_7c

    .line 193
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    invoke-virtual {v1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_ProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iput p1, p0, Lcom/vlingo/client/asr/ProgressView;->m_LastAction:I

    .line 196
    .end local v0           #message:Ljava/lang/String;
    :goto_11
    return-void

    .line 146
    :pswitch_12
    invoke-virtual {p0}, Lcom/vlingo/client/asr/ProgressView;->stopAnimation()V

    .line 147
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoProgressHandler:Lcom/vlingo/client/android/core/asr/ProgressHandler;

    invoke-interface {v1}, Lcom/vlingo/client/android/core/asr/ProgressHandler;->close()V

    goto :goto_11

    .line 151
    :pswitch_1b
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_11

    .line 155
    :pswitch_22
    invoke-direct {p0, p2}, Lcom/vlingo/client/asr/ProgressView;->updateWave(I)V

    goto :goto_11

    .line 159
    :pswitch_26
    iget v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_LastAction:I

    if-eq v1, p1, :cond_4

    .line 160
    invoke-direct {p0}, Lcom/vlingo/client/asr/ProgressView;->setGettingReadyImage()V

    goto :goto_4

    .line 168
    :pswitch_2e
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/vlingo/client/asr/ProgressView;->stopAnimation()V

    .line 170
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_Updater:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoProgressHandler:Lcom/vlingo/client/android/core/asr/ProgressHandler;

    invoke-interface {v1}, Lcom/vlingo/client/android/core/asr/ProgressHandler;->fetch()V

    goto :goto_4

    .line 177
    :pswitch_53
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 178
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :goto_61
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    const v2, 0x7f0200cb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 181
    :cond_6f
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_61

    .line 188
    :pswitch_78
    invoke-virtual {p0}, Lcom/vlingo/client/asr/ProgressView;->startAnimation()V

    goto :goto_11

    .line 144
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_26
        :pswitch_53
        :pswitch_2e
        :pswitch_1b
        :pswitch_78
        :pswitch_22
    .end packed-switch
.end method

.method private updateWave(I)V
    .registers 4
    .parameter "lastLevel"

    .prologue
    .line 114
    const v0, 0x7f0200cb

    .line 115
    .local v0, image:I
    packed-switch p1, :pswitch_data_2a

    .line 135
    :goto_6
    iget v1, p0, Lcom/vlingo/client/asr/ProgressView;->lastImage:I

    if-eq v0, v1, :cond_11

    .line 136
    iget-object v1, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iput v0, p0, Lcom/vlingo/client/asr/ProgressView;->lastImage:I

    .line 139
    :cond_11
    return-void

    .line 117
    :pswitch_12
    const v0, 0x7f0200cc

    .line 118
    goto :goto_6

    .line 120
    :pswitch_16
    const v0, 0x7f0200cd

    .line 121
    goto :goto_6

    .line 123
    :pswitch_1a
    const v0, 0x7f0200ce

    .line 124
    goto :goto_6

    .line 126
    :pswitch_1e
    const v0, 0x7f0200cf

    .line 127
    goto :goto_6

    .line 129
    :pswitch_22
    const v0, 0x7f0200d0

    .line 130
    goto :goto_6

    .line 132
    :pswitch_26
    const v0, 0x7f0200d1

    goto :goto_6

    .line 115
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public init(Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;Lcom/vlingo/client/android/core/asr/ProgressHandler;)V
    .registers 5
    .parameter "d"
    .parameter "handler"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    .line 211
    iput-object p2, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoProgressHandler:Lcom/vlingo/client/android/core/asr/ProgressHandler;

    .line 213
    new-instance v0, Lcom/vlingo/client/asr/ProgressView$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/ProgressView$1;-><init>(Lcom/vlingo/client/asr/ProgressView;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_Updater:Landroid/os/Handler;

    .line 220
    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    .line 223
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordWaves:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lcom/vlingo/client/asr/ProgressView;->setGettingReadyImage()V

    .line 226
    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_ProgressText:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    .line 229
    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_CancelButton:Landroid/widget/Button;

    .line 231
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/asr/ProgressView$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/ProgressView$2;-><init>(Lcom/vlingo/client/asr/ProgressView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_CancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/asr/ProgressView$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/ProgressView$3;-><init>(Lcom/vlingo/client/asr/ProgressView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method public onRecordInfo(III)V
    .registers 10
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    const/4 v5, 0x6

    .line 78
    add-int/lit8 v3, p3, -0x1d

    int-to-float v1, v3

    .line 79
    .local v1, level:F
    const/high16 v3, 0x4110

    div-float/2addr v1, v3

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 81
    .local v0, finalLevel:I
    if-gez v0, :cond_e

    const/4 v0, 0x0

    .line 82
    :cond_e
    if-le v0, v5, :cond_11

    const/4 v0, 0x6

    .line 85
    :cond_11
    iget-object v3, p0, Lcom/vlingo/client/asr/ProgressView;->m_Updater:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 86
    .local v2, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/vlingo/client/asr/ProgressView;->m_Updater:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 67
    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/asr/ProgressView;->startAnimation()V

    .line 70
    :cond_5
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->activated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_RecoDialog:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getState()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/asr/ProgressView;->updateDisplay(II)V

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_CancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_StopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 64
    return-void
.end method

.method startAnimation()V
    .registers 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_18

    move-object v0, v1

    .line 102
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 103
    .local v0, a:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_18

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 107
    .end local v0           #a:Landroid/graphics/drawable/AnimationDrawable;
    :cond_18
    return-void
.end method

.method stopAnimation()V
    .registers 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1d

    .line 92
    iget-object v2, p0, Lcom/vlingo/client/asr/ProgressView;->imageRecordIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 93
    .local v0, a:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 97
    .end local v0           #a:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1d
    return-void
.end method

.method public updateMessage(I)V
    .registers 3
    .parameter "action"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vlingo/client/asr/ProgressView;->m_Updater:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method
