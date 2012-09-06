.class public Lcom/google/android/apps/translate/RecognitionView;
.super Landroid/widget/RelativeLayout;
.source "RecognitionView.java"


# static fields
.field private static final INIT:I = 0x0

.field private static final LISTENING:I = 0x1

.field private static final STARTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecognitionView"

.field private static final WORKING:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mErrorBorder:Landroid/graphics/drawable/Drawable;

.field private mGotoNextStateButton:Landroid/widget/ImageView;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private final mListeningBorder:Landroid/graphics/drawable/Drawable;

.field private mPopupLayout:Landroid/view/View;

.field private mProgress:Landroid/view/View;

.field private mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

.field private mStartButton:Landroid/widget/ToggleButton;

.field private mState:I

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private final mWorkingBorder:Landroid/graphics/drawable/Drawable;

.field private mWorkingWave:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/RecognitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mState:I

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, r:Landroid/content/res/Resources;
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    .line 80
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    .line 81
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    .line 82
    sget v1, Lcom/google/android/apps/translate/R$drawable;->mic_slash:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 83
    sget v1, Lcom/google/android/apps/translate/R$drawable;->caution:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/RecognitionView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/RecognitionView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/apps/translate/RecognitionView;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/RecognitionView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/RecognitionView;)Lcom/google/android/apps/translate/asreditor/SoundIndicator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/RecognitionView;)Landroid/widget/ToggleButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mStartButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .registers 9
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 278
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 279
    .local v1, from:I
    add-int v0, v1, p3

    .line 280
    .local v0, end:I
    const/4 v2, 0x0

    .line 281
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_8
    if-ge v3, v0, :cond_16

    .line 282
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 284
    :cond_16
    div-int v4, v2, p3

    return v4
.end method

.method private prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "text"
    .parameter "image"
    .parameter "btnTxt"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 208
    iget v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mState:I

    packed-switch v1, :pswitch_data_e2

    .line 269
    const-string v1, "RecognitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/translate/RecognitionView;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 272
    return-void

    .line 210
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/apps/translate/R$drawable;->mic_slash:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 224
    :pswitch_56
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->start()V

    .line 235
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 237
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 240
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_83
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_22

    .line 254
    :pswitch_af
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/apps/translate/R$drawable;->caution:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 266
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_22

    .line 208
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_28
        :pswitch_56
        :pswitch_83
        :pswitch_af
    .end packed-switch
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .registers 32
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 298
    .local v19, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 299
    .local v10, h:I
    if-lez v19, :cond_24

    if-gtz v10, :cond_25

    .line 351
    :cond_24
    :goto_24
    return-void

    .line 303
    :cond_25
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 304
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 305
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 306
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 308
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    const/16 v23, 0x50

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    new-instance v8, Landroid/graphics/CornerPathEffect;

    const/high16 v23, 0x4040

    move/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 312
    .local v8, effect:Landroid/graphics/PathEffect;
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 314
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v13

    .line 316
    .local v13, numSamples:I
    if-nez p3, :cond_ed

    .line 317
    move v9, v13

    .line 322
    .local v9, endIndex:I
    :goto_68
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v18, v0

    .line 323
    .local v18, startIndex:I
    if-gez v18, :cond_72

    .line 324
    const/16 v18, 0x0

    .line 326
    :cond_72
    const/16 v12, 0xc8

    .line 327
    .local v12, numSamplePerWave:I
    const/high16 v16, 0x3920

    .line 329
    .local v16, scale:F
    sub-int v23, v9, v18

    move/from16 v0, v23

    div-int/lit16 v6, v0, 0xc8

    .line 330
    .local v6, count:I
    const/high16 v23, 0x3f80

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    int-to-float v0, v6

    move/from16 v24, v0

    div-float v7, v23, v24

    .line 331
    .local v7, deltaX:F
    div-int/lit8 v22, v10, 0x2

    .line 332
    .local v22, yMax:I
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 333
    .local v15, path:Landroid/graphics/Path;
    const/16 v23, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    const/16 v20, 0x0

    .line 335
    .local v20, x:F
    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 336
    const/4 v11, 0x0

    .local v11, i:I
    :goto_ab
    if-ge v11, v6, :cond_f8

    .line 337
    const/16 v23, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/apps/translate/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v3

    .line 338
    .local v3, avabs:I
    and-int/lit8 v23, v11, 0x1

    if-nez v23, :cond_f5

    const/16 v17, -0x1

    .line 339
    .local v17, sign:I
    :goto_bf
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

    .line 340
    .local v21, y:F
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    add-float v20, v20, v7

    .line 342
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    add-int/lit8 v11, v11, 0x1

    goto :goto_ab

    .line 319
    .end local v3           #avabs:I
    .end local v6           #count:I
    .end local v7           #deltaX:F
    .end local v9           #endIndex:I
    .end local v11           #i:I
    .end local v12           #numSamplePerWave:I
    .end local v15           #path:Landroid/graphics/Path;
    .end local v16           #scale:F
    .end local v17           #sign:I
    .end local v18           #startIndex:I
    .end local v20           #x:F
    .end local v21           #y:F
    .end local v22           #yMax:I
    :cond_ed
    move/from16 v0, p3

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9       #endIndex:I
    goto/16 :goto_68

    .line 338
    .restart local v3       #avabs:I
    .restart local v6       #count:I
    .restart local v7       #deltaX:F
    .restart local v11       #i:I
    .restart local v12       #numSamplePerWave:I
    .restart local v15       #path:Landroid/graphics/Path;
    .restart local v16       #scale:F
    .restart local v18       #startIndex:I
    .restart local v20       #x:F
    .restart local v22       #yMax:I
    :cond_f5
    const/16 v17, 0x1

    goto :goto_bf

    .line 344
    .end local v3           #avabs:I
    :cond_f8
    const/high16 v23, 0x4080

    cmpl-float v23, v7, v23

    if-lez v23, :cond_115

    .line 345
    const/high16 v23, 0x4000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 349
    :goto_105
    invoke-virtual {v5, v15, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_24

    .line 347
    :cond_115
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

    goto :goto_105
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/RecognitionView$8;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public init(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 5
    .parameter "clickListener"

    .prologue
    .line 87
    sget v1, Lcom/google/android/apps/translate/R$id;->popup_layout:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mPopupLayout:Landroid/view/View;

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->setVisibility(I)V

    .line 95
    sget v1, Lcom/google/android/apps/translate/R$id;->image:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 96
    sget v1, Lcom/google/android/apps/translate/R$id;->working_wave:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mWorkingWave:Landroid/widget/ImageView;

    .line 97
    sget v1, Lcom/google/android/apps/translate/R$id;->progress:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;

    .line 98
    sget v1, Lcom/google/android/apps/translate/R$id;->sound_indicator:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    .line 100
    sget v1, Lcom/google/android/apps/translate/R$id;->start_recognition_button:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mStartButton:Landroid/widget/ToggleButton;

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mStartButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mStartButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    sget v1, Lcom/google/android/apps/translate/R$id;->text:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mText:Landroid/widget/TextView;

    .line 105
    sget v1, Lcom/google/android/apps/translate/R$id;->image:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/RecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mGotoNextStateButton:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView;->mGotoNextStateButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/apps/translate/RecognitionView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/RecognitionView$1;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public restoreState()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/RecognitionView$2;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/RecognitionView$5;-><init>(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public showInitializing()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/RecognitionView$3;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public showListening()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "RecognitionView"

    const-string v1, "#showListening"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/RecognitionView$4;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public showWaiting()V
    .registers 3

    .prologue
    .line 192
    const-string v0, "RecognitionView"

    const-string v1, "#showWaiting"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/RecognitionView$7;-><init>(Lcom/google/android/apps/translate/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .registers 6
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/translate/RecognitionView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/translate/RecognitionView$6;-><init>(Lcom/google/android/apps/translate/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public updateVoiceMeter(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setRmsdB(F)V

    .line 160
    return-void
.end method
