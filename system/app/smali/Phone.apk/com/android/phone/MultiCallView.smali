.class public Lcom/android/phone/MultiCallView;
.super Landroid/widget/LinearLayout;
.source "MultiCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field protected mContext:Landroid/content/Context;

.field protected mFirstCallImageInfo:Landroid/widget/ImageView;

.field protected mFirstCallInfo:Landroid/view/View;

.field protected mFirstCallNameInfo:Landroid/widget/TextView;

.field protected mFirstCallNumberInfo:Landroid/widget/TextView;

.field protected mFirstCallTimeInfo:Landroid/widget/TextView;

.field protected mFirstCallTitleIcon:Landroid/widget/ImageView;

.field protected mFirstInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mIsFirstCallInfoForeground:Z

.field protected mListBackgroundDisable:I

.field protected mListBackgroundNormal:I

.field protected mMergeButton:Landroid/widget/Button;

.field protected mRecInfo:Landroid/view/View;

.field protected mSecondCallImageInfo:Landroid/widget/ImageView;

.field protected mSecondCallInfo:Landroid/view/View;

.field protected mSecondCallNameInfo:Landroid/widget/TextView;

.field protected mSecondCallNumberInfo:Landroid/widget/TextView;

.field protected mSecondCallTimeInfo:Landroid/widget/TextView;

.field protected mSecondCallTitleIcon:Landroid/widget/ImageView;

.field protected mSwapButton:Landroid/widget/Button;

.field protected mTextColorGray:I

.field protected mTextColorWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 93
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method protected CallEndTimeBlink(Ljava/lang/String;)V
    .registers 4
    .parameter "callCardTitle"

    .prologue
    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 453
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :goto_11
    return-void

    .line 456
    :cond_12
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method protected CallEndTimeBlink(Z)V
    .registers 5
    .parameter "invisibleCallTime"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 445
    iget-object v2, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :goto_f
    return-void

    :cond_10
    move v0, v1

    .line 445
    goto :goto_c

    .line 447
    :cond_12
    iget-object v2, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    :goto_16
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    :cond_1a
    move v0, v1

    goto :goto_16
.end method

.method protected fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V
    .registers 11
    .parameter "connection"
    .parameter "isFirst"

    .prologue
    const v7, 0x7f02018e

    const/4 v6, 0x0

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 396
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 397
    .local v3, presentation:I
    if-eqz v0, :cond_81

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 400
    .local v2, number:Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4e

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 401
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_49

    .line 402
    invoke-virtual {p0, v3}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_2c
    if-eqz p2, :cond_60

    .line 417
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 420
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :goto_48
    return-void

    .line 404
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_49
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 405
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2c

    .line 408
    :cond_4e
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_57

    .line 409
    invoke-virtual {p0, v3}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 412
    :cond_57
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2c

    .line 421
    :cond_5a
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48

    .line 423
    :cond_60
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 426
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48

    .line 427
    :cond_7b
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48

    .line 430
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_81
    if-eqz p2, :cond_97

    .line 431
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_48

    .line 435
    :cond_97
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_48
.end method

.method protected getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 329
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 333
    .end local p1
    :cond_8
    :goto_8
    return-object v0

    .line 330
    .restart local p1
    :cond_9
    instance-of v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_8

    .line 331
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_8
.end method

.method protected getPresentationString(I)Ljava/lang/String;
    .registers 5
    .parameter "presentation"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1b

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_1a
    :goto_1a
    return-object v0

    .line 340
    :cond_1b
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_1a

    .line 341
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .registers 6
    .parameter "inCallScreen"

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    const-string v1, "Inflate multi call view"

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 103
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f090130

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f090131

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    .line 109
    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f090134

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f09012f

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f090135

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f090104

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    .line 117
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v1, 0x7f090105

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    .line 119
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const-string v1, "support_conference_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    :cond_b5
    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    .line 124
    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTitleIcon:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTitleIcon:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    .line 130
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 134
    iput-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 136
    const v1, 0x7f0201a4

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    .line 137
    const v1, 0x7f0201a3

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    .line 140
    return-void
.end method

.method isFirstCallInfoForground()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 389
    const-string v0, "MultiCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 351
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 353
    sparse-switch v0, :sswitch_data_a6

    .line 373
    const-string v1, "MultiCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_50
    return-void

    .line 356
    :sswitch_51
    iget-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    const v1, 0x7f09012a

    if-ne v0, v1, :cond_79

    move v1, v2

    :goto_59
    if-ne v3, v1, :cond_7b

    .line 357
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 376
    :goto_64
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_50

    .line 356
    :cond_79
    const/4 v1, 0x1

    goto :goto_59

    .line 358
    :cond_7b
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 359
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_50

    .line 362
    :cond_90
    const-string v1, "Nothing to do.."

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    goto :goto_50

    .line 367
    :sswitch_96
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_64

    .line 370
    :sswitch_a0
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_64

    .line 353
    :sswitch_data_a6
    .sparse-switch
        0x7f090104 -> :sswitch_96
        0x7f090105 -> :sswitch_a0
        0x7f09012a -> :sswitch_51
        0x7f090130 -> :sswitch_51
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 148
    return-void
.end method

.method resetOriginalState()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    return-void
.end method

.method public setCallCardScreenState(Lcom/android/phone/CallCard$CallCardScreenState;)V
    .registers 2
    .parameter "callCardScreenState"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 89
    return-void
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 161
    return-void

    .line 157
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setRecInfoViewVisibility(I)V
    .registers 3
    .parameter "view"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_9
    return-void
.end method

.method protected updateElapsedTimeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "time"
    .parameter "holdText"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 11
    .parameter "cm"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 165
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 167
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2e

    .line 168
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 169
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 175
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_90

    move v4, v5

    :goto_3b
    iput-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 180
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 190
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_92

    .line 201
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MultiCallView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 202
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/MultiCallView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 215
    :goto_7e
    const-string v4, "View.GONE"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 234
    return-void

    :cond_90
    move v4, v6

    .line 175
    goto :goto_3b

    .line 204
    :cond_92
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MultiCallView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/MultiCallView;->fillCallerInfo(Lcom/android/internal/telephony/Connection;Z)V

    goto :goto_7e
.end method
