.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;
.super Landroid/os/Handler;
.source "VoiceRecorderMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
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
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f090051

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 127
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_9} :catch_19

    sparse-switch v1, :sswitch_data_2f0

    .line 293
    :cond_c
    :goto_c
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    :goto_f
    return-void

    .line 129
    :sswitch_10
    const/16 v0, 0xbc2

    :try_start_12
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->removeMessages(I)V

    .line 130
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->move()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_c

    .line 289
    :catch_19
    move-exception v0

    .line 290
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .line 133
    :sswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;

    .line 134
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setDisplayedChild(I)V

    .line 136
    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setVisibility(I)V

    goto :goto_c

    .line 140
    :sswitch_38
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getRecDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mTime:J

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->updateUI(Landroid/os/Handler;)V

    goto :goto_c

    :sswitch_56
    move v1, v0

    .line 146
    :goto_57
    if-ge v1, v4, :cond_6b

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    add-int v2, v5, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setVisibility(I)V

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 150
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    :sswitch_74
    move v1, v0

    .line 154
    :goto_75
    if-ge v1, v4, :cond_89

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    add-int v2, v5, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;

    .line 156
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setVisibility(I)V

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_75

    .line 158
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    .line 162
    :sswitch_93
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getBlinkInAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c

    .line 165
    :sswitch_a6
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getBlinkOutAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c

    .line 168
    :sswitch_b9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto/16 :goto_c

    .line 171
    :sswitch_c2
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->resetData()V

    .line 172
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mTime:J

    move v1, v0

    .line 173
    :goto_ca
    if-ge v1, v4, :cond_c

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    add-int v2, v5, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setDisplayedChild(I)V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ca

    .line 179
    :sswitch_de
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getFileSize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getByteString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 183
    :sswitch_106
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtSlash:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtSlash:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isLandscape(Landroid/view/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_178

    const/16 v0, 0xc6

    :goto_139
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18e

    .line 189
    :cond_152
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/32 v3, 0x9c5e00

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getByteString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 186
    :cond_178
    const/16 v0, 0x13b

    goto :goto_139

    .line 192
    :cond_17b
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getMMSSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getByteString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 194
    :cond_18e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getFileSize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getByteString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 197
    :sswitch_1ae
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtSlash:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 202
    :sswitch_1d9
    iget v0, p1, Landroid/os/Message;->arg1:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1eb

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 205
    :cond_1eb
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 208
    :sswitch_1f7
    const/16 v0, 0xbe1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->getBlinkAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c

    .line 213
    :sswitch_215
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v0

    if-eqz v0, :cond_227

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setEnabled(Z)V

    .line 214
    :cond_227
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setDisplayedChild(I)V

    goto/16 :goto_c

    .line 217
    :sswitch_234
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setVisibility(I)V

    goto/16 :goto_c

    .line 222
    :sswitch_240
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setVisibility(I)V

    goto/16 :goto_c

    .line 226
    :sswitch_24c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->createNewFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 230
    :sswitch_25d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_c

    .line 234
    :sswitch_26c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)V

    goto/16 :goto_c

    .line 239
    :sswitch_274
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_c

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_c

    .line 246
    :sswitch_288
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->showCancelDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    goto/16 :goto_c

    .line 257
    :sswitch_28f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;I)V

    goto/16 :goto_c

    .line 262
    :sswitch_298
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2a9

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 265
    :cond_2a9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_2c8

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1402(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 284
    :cond_2bf
    :goto_2bf
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/16 v1, 0x3ec

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;I)V

    goto/16 :goto_c

    .line 269
    :cond_2c8
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->unbindFromService(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    goto/16 :goto_f

    .line 279
    :cond_2e2
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isBackKeyPressed:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-nez v0, :cond_2bf

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->startListActivityForResult(Landroid/app/Activity;)V
    :try_end_2ef
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2ef} :catch_19

    goto :goto_2bf

    .line 127
    :sswitch_data_2f0
    .sparse-switch
        0x3e8 -> :sswitch_28f
        0x3ea -> :sswitch_28f
        0x3eb -> :sswitch_28f
        0x7d1 -> :sswitch_298
        0xbc2 -> :sswitch_10
        0xbcc -> :sswitch_1e
        0xbcd -> :sswitch_38
        0xbce -> :sswitch_56
        0xbcf -> :sswitch_74
        0xbd0 -> :sswitch_c2
        0xbd1 -> :sswitch_93
        0xbd2 -> :sswitch_a6
        0xbd3 -> :sswitch_b9
        0xbd6 -> :sswitch_215
        0xbd7 -> :sswitch_234
        0xbd8 -> :sswitch_240
        0xbe0 -> :sswitch_1d9
        0xbe1 -> :sswitch_1f7
        0xbeb -> :sswitch_24c
        0xbf4 -> :sswitch_25d
        0xbfe -> :sswitch_26c
        0xc08 -> :sswitch_de
        0xc09 -> :sswitch_106
        0xc0a -> :sswitch_1ae
        0xc0b -> :sswitch_274
        0xc0e -> :sswitch_288
    .end sparse-switch
.end method
