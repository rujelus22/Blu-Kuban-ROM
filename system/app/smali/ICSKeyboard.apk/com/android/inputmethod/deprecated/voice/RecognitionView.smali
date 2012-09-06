.class public Lcom/android/inputmethod/deprecated/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# static fields
.field private static final INIT:I = 0x0

.field private static final LISTENING:I = 0x1

.field private static final READY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecognitionView"

.field private static final WORKING:I = 0x2


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mErrorBorder:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLanguage:Landroid/widget/TextView;

.field private final mListeningBorder:Landroid/graphics/drawable/Drawable;

.field private final mPopupLayout:Landroid/view/View;

.field private mProgress:Landroid/view/View;

.field private mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

.field private mState:I

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private final mWorkingBorder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 7
    .parameter "context"
    .parameter "clickListener"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 87
    const-string v2, "layout_inflater"

    .line 86
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    .line 97
    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    .line 98
    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    .line 100
    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 101
    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 104
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 105
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    .line 107
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mButton:Landroid/widget/Button;

    .line 108
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    .line 112
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)I
    .registers 2
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/deprecated/voice/RecognitionView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$6(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Lcom/android/inputmethod/deprecated/voice/SoundIndicator;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .registers 9
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 267
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 268
    .local v1, from:I
    add-int v0, v1, p3

    .line 269
    .local v0, end:I
    const/4 v2, 0x0

    .line 270
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_8
    if-lt v3, v0, :cond_d

    .line 273
    div-int v4, v2, p3

    return v4

    .line 271
    :cond_d
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "text"
    .parameter "image"
    .parameter "btnTxt"

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 190
    iget v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I

    packed-switch v1, :pswitch_data_f6

    .line 257
    const-string v1, "RecognitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1f
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 260
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void

    .line 192
    :pswitch_2a
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->stop()V

    .line 202
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 207
    :pswitch_58
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->start()V

    .line 217
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 219
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 226
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_95
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->stop()V

    .line 236
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    .line 241
    :pswitch_c1
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->stop()V

    .line 252
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    .line 190
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_58
        :pswitch_95
        :pswitch_c1
    .end packed-switch
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .registers 32
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 287
    .local v19, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 288
    .local v10, h:I
    if-lez v19, :cond_24

    if-gtz v10, :cond_25

    .line 340
    :cond_24
    :goto_24
    return-void

    .line 292
    :cond_25
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 293
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 295
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    const/16 v23, 0x50

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    new-instance v8, Landroid/graphics/CornerPathEffect;

    const/high16 v23, 0x4040

    move/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 301
    .local v8, effect:Landroid/graphics/PathEffect;
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 303
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v13

    .line 305
    .local v13, numSamples:I
    if-nez p3, :cond_ca

    .line 306
    move v9, v13

    .line 311
    .local v9, endIndex:I
    :goto_68
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v18, v0

    .line 312
    .local v18, startIndex:I
    if-gez v18, :cond_72

    .line 313
    const/16 v18, 0x0

    .line 315
    :cond_72
    const/16 v12, 0xc8

    .line 316
    .local v12, numSamplePerWave:I
    const/high16 v16, 0x3920

    .line 318
    .local v16, scale:F
    sub-int v23, v9, v18

    move/from16 v0, v23

    div-int/lit16 v6, v0, 0xc8

    .line 319
    .local v6, count:I
    const/high16 v23, 0x3f80

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    int-to-float v0, v6

    move/from16 v24, v0

    div-float v7, v23, v24

    .line 320
    .local v7, deltaX:F
    div-int/lit8 v22, v10, 0x2

    .line 321
    .local v22, yMax:I
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 322
    .local v15, path:Landroid/graphics/Path;
    const/16 v23, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    const/16 v20, 0x0

    .line 324
    .local v20, x:F
    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 325
    const/4 v11, 0x0

    .local v11, i:I
    :goto_ab
    if-lt v11, v6, :cond_d1

    .line 333
    const/high16 v23, 0x4080

    cmpl-float v23, v7, v23

    if-lez v23, :cond_114

    .line 334
    const/high16 v23, 0x4000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    :goto_ba
    invoke-virtual {v5, v15, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_24

    .line 308
    .end local v6           #count:I
    .end local v7           #deltaX:F
    .end local v9           #endIndex:I
    .end local v11           #i:I
    .end local v12           #numSamplePerWave:I
    .end local v15           #path:Landroid/graphics/Path;
    .end local v16           #scale:F
    .end local v18           #startIndex:I
    .end local v20           #x:F
    .end local v22           #yMax:I
    :cond_ca
    move/from16 v0, p3

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9       #endIndex:I
    goto :goto_68

    .line 326
    .restart local v6       #count:I
    .restart local v7       #deltaX:F
    .restart local v11       #i:I
    .restart local v12       #numSamplePerWave:I
    .restart local v15       #path:Landroid/graphics/Path;
    .restart local v16       #scale:F
    .restart local v18       #startIndex:I
    .restart local v20       #x:F
    .restart local v22       #yMax:I
    :cond_d1
    const/16 v23, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v3

    .line 327
    .local v3, avabs:I
    and-int/lit8 v23, v11, 0x1

    if-nez v23, :cond_111

    const/16 v17, -0x1

    .line 328
    .local v17, sign:I
    :goto_e3
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    mul-int v24, v3, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3920

    mul-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v21, v23, v24

    .line 329
    .local v21, y:F
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    add-float v20, v20, v7

    .line 331
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 325
    add-int/lit8 v11, v11, 0x1

    goto :goto_ab

    .line 327
    .end local v17           #sign:I
    .end local v21           #y:F
    :cond_111
    const/16 v17, 0x1

    goto :goto_e3

    .line 336
    .end local v3           #avabs:I
    :cond_114
    const/16 v23, 0x0

    float-to-double v0, v7

    move-wide/from16 v24, v0

    const-wide v26, 0x3fa999999999999aL

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_ba
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$6;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$6;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$1;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$4;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public showInitializing()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$2;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public showListening()V
    .registers 3

    .prologue
    .line 142
    const-string v0, "RecognitionView"

    const-string v1, "#showListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$3;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .registers 6
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/inputmethod/deprecated/voice/RecognitionView$5;-><init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public updateVoiceMeter(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->setRmsdB(F)V

    .line 154
    return-void
.end method
