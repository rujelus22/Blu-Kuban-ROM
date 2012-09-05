.class public Lcom/vlingo/client/car/CarPopup;
.super Landroid/widget/RelativeLayout;
.source "CarPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarPopup$Type;
    }
.end annotation


# instance fields
.field private appPopup:Landroid/widget/RelativeLayout;

.field private appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

.field private appPopupLabel:Landroid/widget/TextView;

.field private appPopupProgress:Landroid/widget/ProgressBar;

.field private carAnim:Lcom/vlingo/client/car/CarAnim;

.field private curType:Lcom/vlingo/client/car/CarPopup$Type;

.field private delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private exampleContainer:Landroid/widget/LinearLayout;

.field private popupAppearAnimation:Landroid/view/animation/Animation;

.field private shown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    .line 56
    sget-object v0, Lcom/vlingo/client/car/CarPopup$Type;->None:Lcom/vlingo/client/car/CarPopup$Type;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->curType:Lcom/vlingo/client/car/CarPopup$Type;

    .line 60
    invoke-static {}, Lcom/vlingo/client/car/CarAnim;->newInstance()Lcom/vlingo/client/car/CarAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->carAnim:Lcom/vlingo/client/car/CarAnim;

    .line 61
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .registers 14
    .parameter "animated"

    .prologue
    const/4 v11, 0x4

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 191
    iget-boolean v3, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_14

    .line 215
    :cond_13
    :goto_13
    return-void

    .line 194
    :cond_14
    if-eqz p1, :cond_50

    .line 195
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 196
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 197
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 198
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 199
    .local v0, sa:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    const-wide/16 v1, 0xc8

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 201
    iget-object v1, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    .end local v0           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v9           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v10           #set:Landroid/view/animation/AnimationSet;
    :goto_3e
    iget-object v1, p0, Lcom/vlingo/client/car/CarPopup;->popupAppearAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4c

    .line 210
    iget-object v1, p0, Lcom/vlingo/client/car/CarPopup;->carAnim:Lcom/vlingo/client/car/CarAnim;

    iget-object v2, p0, Lcom/vlingo/client/car/CarPopup;->popupAppearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/car/CarAnim;->stopAnimation(Landroid/view/animation/Animation;)V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/car/CarPopup;->popupAppearAnimation:Landroid/view/animation/Animation;

    .line 214
    :cond_4c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    goto :goto_13

    .line 205
    :cond_50
    iget-object v1, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarPopup;->invalidate()V

    goto :goto_3e
.end method

.method public init(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vlingo/client/car/CarPopup;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 70
    return-void
.end method

.method public initType(Lcom/vlingo/client/car/CarPopup$Type;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 75
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 76
    if-eqz p1, :cond_9

    sget-object v0, Lcom/vlingo/client/car/CarPopup$Type;->None:Lcom/vlingo/client/car/CarPopup$Type;

    if-ne p1, v0, :cond_e

    .line 77
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarPopup;->setVisibility(I)V

    .line 97
    :cond_d
    :goto_d
    return-void

    .line 81
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->curType:Lcom/vlingo/client/car/CarPopup$Type;

    if-eq p1, v0, :cond_d

    .line 82
    iput-object p1, p0, Lcom/vlingo/client/car/CarPopup;->curType:Lcom/vlingo/client/car/CarPopup$Type;

    .line 83
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarPopup;->removeAllViews()V

    .line 85
    sget-object v0, Lcom/vlingo/client/car/CarPopup$Type;->App:Lcom/vlingo/client/car/CarPopup$Type;

    if-ne p1, v0, :cond_65

    .line 86
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030006

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    :cond_25
    :goto_25
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/asr/MicrophoneImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0019

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupLabel:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupProgress:Landroid/widget/ProgressBar;

    .line 95
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    goto :goto_d

    .line 88
    :cond_65
    sget-object v0, Lcom/vlingo/client/car/CarPopup$Type;->Generic:Lcom/vlingo/client/car/CarPopup$Type;

    if-ne p1, v0, :cond_25

    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030007

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_25
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarPopup;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public onRMSChanged(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    :cond_c
    :goto_c
    return-void

    .line 221
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/asr/MicrophoneImageView;->setRMSLevel(F)V

    goto :goto_c
.end method

.method public showListeningStarted()V
    .registers 3

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    if-nez v0, :cond_5

    .line 180
    :goto_4
    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/MicrophoneImageView;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4
.end method

.method public showListeningStartingWithPromptPopup(Ljava/lang/String;[Lcom/vlingo/client/car/Hints$PromptExample;ZLcom/vlingo/client/car/PromptContent;)V
    .registers 20
    .parameter "prompt"
    .parameter "examples"
    .parameter "animated"
    .parameter "content"

    .prologue
    .line 100
    if-eqz p1, :cond_4

    if-nez p4, :cond_5

    .line 172
    :cond_4
    :goto_4
    return-void

    .line 103
    :cond_5
    sget-object v11, Lcom/vlingo/client/car/CarPopup$Type;->App:Lcom/vlingo/client/car/CarPopup$Type;

    .line 104
    .local v11, type:Lcom/vlingo/client/car/CarPopup$Type;
    move-object/from16 v0, p4

    iget v12, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_10

    .line 105
    sget-object v11, Lcom/vlingo/client/car/CarPopup$Type;->Generic:Lcom/vlingo/client/car/CarPopup$Type;

    .line 107
    :cond_10
    invoke-virtual {p0, v11}, Lcom/vlingo/client/car/CarPopup;->initType(Lcom/vlingo/client/car/CarPopup$Type;)V

    .line 109
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/vlingo/client/car/CarPopup;->setVisibility(I)V

    .line 111
    sget-object v12, Lcom/vlingo/client/car/CarPopup$Type;->App:Lcom/vlingo/client/car/CarPopup$Type;

    if-ne v11, v12, :cond_113

    .line 112
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001c

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 113
    .local v10, subText:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001d

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, ex0Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001e

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    .local v2, ex1Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001f

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, ex2Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001b

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 117
    .local v4, icon:Landroid/widget/ImageView;
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    .line 118
    .local v9, subHead:Ljava/lang/CharSequence;
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->hotTip:Ljava/lang/CharSequence;

    if-eqz v12, :cond_7b

    .line 119
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/vlingo/client/car/PromptContent;->subheading:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/vlingo/client/car/PromptContent;->hotTip:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    :cond_7b
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    if-nez v12, :cond_fb

    .line 124
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_90
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    if-nez v12, :cond_107

    .line 131
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :goto_9b
    move-object/from16 v0, p4

    iget v12, v0, Lcom/vlingo/client/car/PromptContent;->icon:I

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    .end local v1           #ex0Text:Landroid/widget/TextView;
    .end local v2           #ex1Text:Landroid/widget/TextView;
    .end local v3           #ex2Text:Landroid/widget/TextView;
    .end local v4           #icon:Landroid/widget/ImageView;
    .end local v9           #subHead:Ljava/lang/CharSequence;
    .end local v10           #subText:Landroid/widget/TextView;
    :goto_a8
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupProgress:Landroid/widget/ProgressBar;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vlingo/client/asr/MicrophoneImageView;->setVisibility(I)V

    .line 161
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vlingo/client/asr/MicrophoneImageView;->setEnabled(Z)V

    .line 162
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupLabel:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    move-object/from16 v8, p1

    .line 164
    .local v8, promptToDisplay:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x3c

    if-le v12, v13, :cond_e6

    .line 166
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/16 v14, 0x38

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    :cond_e6
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupLabel:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    invoke-virtual {v12}, Lcom/vlingo/client/asr/MicrophoneImageView;->preloadCache()V

    .line 170
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->appPopup:Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    goto/16 :goto_4

    .line 127
    .end local v8           #promptToDisplay:Ljava/lang/String;
    .restart local v1       #ex0Text:Landroid/widget/TextView;
    .restart local v2       #ex1Text:Landroid/widget/TextView;
    .restart local v3       #ex2Text:Landroid/widget/TextView;
    .restart local v4       #icon:Landroid/widget/ImageView;
    .restart local v9       #subHead:Ljava/lang/CharSequence;
    .restart local v10       #subText:Landroid/widget/TextView;
    :cond_fb
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_90

    .line 134
    :cond_107
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9b

    .line 140
    .end local v1           #ex0Text:Landroid/widget/TextView;
    .end local v2           #ex1Text:Landroid/widget/TextView;
    .end local v3           #ex2Text:Landroid/widget/TextView;
    .end local v4           #icon:Landroid/widget/ImageView;
    .end local v9           #subHead:Ljava/lang/CharSequence;
    .end local v10           #subText:Landroid/widget/TextView;
    :cond_113
    sget-object v12, Lcom/vlingo/client/car/CarPopup$Type;->Generic:Lcom/vlingo/client/car/CarPopup$Type;

    if-ne v11, v12, :cond_18b

    .line 141
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001d

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 142
    .restart local v1       #ex0Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001e

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .restart local v2       #ex1Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f001f

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    .restart local v3       #ex2Text:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f0024

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 145
    .local v5, icon0:Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f0025

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 146
    .local v6, icon1:Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0f0026

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 147
    .local v7, icon2:Landroid/widget/ImageView;
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex2:Ljava/lang/CharSequence;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/vlingo/client/car/PromptContent;->ex3:Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p4

    iget v12, v0, Lcom/vlingo/client/car/PromptContent;->exIcon1:I

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    move-object/from16 v0, p4

    iget v12, v0, Lcom/vlingo/client/car/PromptContent;->exIcon2:I

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    move-object/from16 v0, p4

    iget v12, v0, Lcom/vlingo/client/car/PromptContent;->exIcon3:I

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a8

    .line 156
    .end local v1           #ex0Text:Landroid/widget/TextView;
    .end local v2           #ex1Text:Landroid/widget/TextView;
    .end local v3           #ex2Text:Landroid/widget/TextView;
    .end local v5           #icon0:Landroid/widget/ImageView;
    .end local v6           #icon1:Landroid/widget/ImageView;
    .end local v7           #icon2:Landroid/widget/ImageView;
    :cond_18b
    iget-object v12, p0, Lcom/vlingo/client/car/CarPopup;->exampleContainer:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a8
.end method

.method public showThinking()V
    .registers 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarPopup;->shown:Z

    if-nez v0, :cond_5

    .line 188
    :goto_4
    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupImage:Lcom/vlingo/client/asr/MicrophoneImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/MicrophoneImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/vlingo/client/car/CarPopup;->appPopupProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4
.end method
