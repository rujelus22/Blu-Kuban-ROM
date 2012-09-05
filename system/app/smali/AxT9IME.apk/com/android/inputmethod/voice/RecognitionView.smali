.class public Lcom/android/inputmethod/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/RecognitionView$State;
    }
.end annotation


# instance fields
.field private mButton:Landroid/view/View;

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLevel:I

.field private mMaxMicrophoneLevel:F

.field private mMinMicrophoneLevel:F

.field private mProgress:Landroid/view/View;

.field private mSpeakNow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/inputmethod/voice/RecognitionView$State;

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateVolumeRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 8
    .parameter "context"
    .parameter "clickListener"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    .line 72
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    .line 75
    sget-object v3, Lcom/android/inputmethod/voice/RecognitionView$State;->READY:Lcom/android/inputmethod/voice/RecognitionView$State;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    .line 81
    new-instance v3, Lcom/android/inputmethod/voice/RecognitionView$1;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/voice/RecognitionView$1;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 105
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 107
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_min_microphone_level"

    const/high16 v4, 0x4170

    invoke-static {v0, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMinMicrophoneLevel:F

    .line 111
    const-string v3, "latin_ime_max_microphone_level"

    const/high16 v4, 0x41f0

    invoke-static {v0, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMaxMicrophoneLevel:F

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 117
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    .line 118
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020126

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020127

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020128

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020129

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02012a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02012b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02012c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const v3, 0x7f020092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 127
    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 130
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    if-eqz v3, :cond_eb

    .line 134
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    :cond_eb
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 139
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/RecognitionView$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/RecognitionView;Lcom/android/inputmethod/voice/RecognitionView$State;)Lcom/android/inputmethod/voice/RecognitionView$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/RecognitionView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMinMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/inputmethod/voice/RecognitionView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/inputmethod/voice/RecognitionView;->exitWorking()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/RecognitionView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMaxMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/RecognitionView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/voice/RecognitionView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/inputmethod/voice/RecognitionView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method private exitWorking()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    return-void
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .registers 9
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 228
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 229
    .local v1, from:I
    add-int v0, v1, p3

    .line 230
    .local v0, end:I
    const/4 v2, 0x0

    .line 231
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_8
    if-ge v3, v0, :cond_16

    .line 232
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 234
    :cond_16
    div-int v4, v2, p3

    return v4
.end method

.method private prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "spinVisible"
    .parameter "text"
    .parameter "image"
    .parameter "btnTxt"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 212
    if-eqz p1, :cond_1a

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_f
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void

    .line 216
    :cond_1a
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .registers 35
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 248
    .local v22, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    .line 249
    .local v12, h:I
    if-lez v22, :cond_1e

    if-gtz v12, :cond_1f

    .line 311
    :cond_1e
    :goto_1e
    return-void

    .line 253
    :cond_1f
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 254
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v7, c:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 256
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    const/16 v26, 0x90

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    new-instance v10, Landroid/graphics/CornerPathEffect;

    const/high16 v26, 0x4040

    move/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 262
    .local v10, effect:Landroid/graphics/PathEffect;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 264
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v16

    .line 266
    .local v16, numSamples:I
    if-nez p3, :cond_fa

    .line 267
    move/from16 v11, v16

    .line 272
    .local v11, endIndex:I
    :goto_6d
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v21, v0

    .line 273
    .local v21, startIndex:I
    if-gez v21, :cond_77

    .line 274
    const/16 v21, 0x0

    .line 276
    :cond_77
    const/16 v15, 0xc8

    .line 277
    .local v15, numSamplePerWave:I
    const/high16 v19, 0x3920

    .line 279
    .local v19, scale:F
    sub-int v26, v11, v21

    move/from16 v0, v26

    div-int/lit16 v8, v0, 0xc8

    .line 280
    .local v8, count:I
    const/high16 v26, 0x3f80

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    int-to-float v0, v8

    move/from16 v27, v0

    div-float v9, v26, v27

    .line 281
    .local v9, deltaX:F
    div-int/lit8 v26, v12, 0x2

    add-int/lit8 v25, v26, -0x8

    .line 282
    .local v25, yMax:I
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 283
    .local v18, path:Landroid/graphics/Path;
    const/16 v26, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    const/16 v23, 0x0

    .line 285
    .local v23, x:F
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    const/4 v13, 0x0

    .local v13, i:I
    :goto_b4
    if-ge v13, v8, :cond_107

    .line 287
    const/16 v26, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-static {v0, v1, v13, v2}, Lcom/android/inputmethod/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v5

    .line 288
    .local v5, avabs:I
    and-int/lit8 v26, v13, 0x1

    if-nez v26, :cond_104

    const/16 v20, -0x1

    .line 289
    .local v20, sign:I
    :goto_c8
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    mul-int v27, v5, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3920

    mul-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v24, v26, v27

    .line 290
    .local v24, y:F
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    add-float v23, v23, v9

    .line 292
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    add-int/lit8 v13, v13, 0x1

    goto :goto_b4

    .line 269
    .end local v5           #avabs:I
    .end local v8           #count:I
    .end local v9           #deltaX:F
    .end local v11           #endIndex:I
    .end local v13           #i:I
    .end local v15           #numSamplePerWave:I
    .end local v18           #path:Landroid/graphics/Path;
    .end local v19           #scale:F
    .end local v20           #sign:I
    .end local v21           #startIndex:I
    .end local v23           #x:F
    .end local v24           #y:F
    .end local v25           #yMax:I
    :cond_fa
    move/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .restart local v11       #endIndex:I
    goto/16 :goto_6d

    .line 288
    .restart local v5       #avabs:I
    .restart local v8       #count:I
    .restart local v9       #deltaX:F
    .restart local v13       #i:I
    .restart local v15       #numSamplePerWave:I
    .restart local v18       #path:Landroid/graphics/Path;
    .restart local v19       #scale:F
    .restart local v21       #startIndex:I
    .restart local v23       #x:F
    .restart local v25       #yMax:I
    :cond_104
    const/16 v20, 0x1

    goto :goto_c8

    .line 294
    .end local v5           #avabs:I
    :cond_107
    const/high16 v26, 0x4080

    cmpl-float v26, v9, v26

    if-lez v26, :cond_1ae

    .line 295
    const/high16 v26, 0x4040

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    :goto_116
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 303
    .local v14, mProgressParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v26, 0x0

    neg-int v0, v12

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    const/16 v28, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingTop()I

    move-result v29

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingBottom()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 297
    .end local v14           #mProgressParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1ae
    const/16 v26, 0x1

    float-to-double v0, v9

    move-wide/from16 v27, v0

    const-wide v29, 0x3fa999999999999aL

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_116
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$7;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$7;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$2;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/voice/RecognitionView$5;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public showInitializing()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$3;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public showListening()V
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$4;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$4;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .registers 6
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView$6;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public updateVoiceMeter(F)V
    .registers 2
    .parameter "rmsdB"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    .line 180
    return-void
.end method
