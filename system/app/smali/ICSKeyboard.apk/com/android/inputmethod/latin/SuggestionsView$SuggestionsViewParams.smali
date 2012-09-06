.class Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;
.super Ljava/lang/Object;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsViewParams"
.end annotation


# static fields
.field private static final AUTO_CORRECT_BOLD:I = 0x1

.field private static final AUTO_CORRECT_UNDERLINE:I = 0x2

.field private static final BOLD_SPAN:Landroid/text/style/CharacterStyle; = null

.field private static final DEFAULT_CENTER_SUGGESTION_PERCENTILE:I = 0x28

.field private static final DEFAULT_MAX_MORE_SUGGESTIONS_ROW:I = 0x2

.field private static final DEFAULT_SUGGESTIONS_COUNT_IN_STRIP:I = 0x3

.field private static final MORE_SUGGESTIONS_HINT:Ljava/lang/String; = "\u2026"

.field private static final PUNCTUATIONS_IN_STRIP:I = 0x5

.field private static final UNDERLINE_SPAN:Landroid/text/style/CharacterStyle; = null

.field private static final VALID_TYPED_WORD_BOLD:I = 0x4


# instance fields
.field private final mAlphaObsoleted:F

.field private final mCenterSuggestionIndex:I

.field private final mCenterSuggestionWeight:F

.field private final mColorAutoCorrect:I

.field private final mColorSuggested:I

.field private final mColorTypedWord:I

.field public final mDividerWidth:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintToSaveText:Ljava/lang/CharSequence;

.field private final mHintToSaveView:Landroid/widget/TextView;

.field private final mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxMoreSuggestionsRow:I

.field public final mMinMoreSuggestionsWidth:F

.field public mMoreSuggestionsAvailable:Z

.field public final mMoreSuggestionsBottomGap:I

.field private final mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

.field public final mPadding:I

.field private final mSuggestionStripOption:I

.field public final mSuggestionsCountInStrip:I

.field public final mSuggestionsStripHeight:I

.field private final mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final mWordToSaveView:Landroid/widget/TextView;

.field private final mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 162
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    .line 163
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p4, words:Ljava/util/List;,"Ljava/util/List<Landroid/widget/TextView;>;"
    .local p5, dividers:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .local p6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    .line 180
    iput-object p4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWords:Ljava/util/List;

    .line 181
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    .line 182
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mInfos:Ljava/util/List;

    .line 184
    const/4 v9, 0x0

    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 185
    .local v8, word:Landroid/widget/TextView;
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 186
    .local v5, divider:Landroid/view/View;
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mPadding:I

    .line 188
    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 187
    invoke-virtual {v5, v9, v10}, Landroid/view/View;->measure(II)V

    .line 189
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    .line 191
    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 192
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f0b0012

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsStripHeight:I

    .line 195
    sget-object v9, Linputmethod/latin/ported/R$styleable;->SuggestionsView:[I

    const v10, 0x7f0f000a

    .line 194
    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 196
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionStripOption:I

    .line 198
    const/4 v9, 0x4

    const/16 v10, 0x64

    .line 197
    invoke-static {v1, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v4

    .line 200
    .local v4, alphaTypedWord:F
    const/4 v9, 0x5

    const/16 v10, 0x64

    .line 199
    invoke-static {v1, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v2

    .line 202
    .local v2, alphaAutoCorrect:F
    const/4 v9, 0x6

    const/16 v10, 0x64

    .line 201
    invoke-static {v1, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v3

    .line 203
    .local v3, alphaSuggested:F
    const/4 v9, 0x6

    const/16 v10, 0x64

    invoke-static {v1, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mAlphaObsoleted:F

    .line 205
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 204
    invoke-static {v9, v4}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    .line 207
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 206
    invoke-static {v9, v2}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    .line 209
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 208
    invoke-static {v9, v3}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorSuggested:I

    .line 211
    const/16 v9, 0x8

    .line 212
    const/4 v10, 0x3

    .line 210
    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    .line 214
    const/16 v9, 0x9

    .line 215
    const/16 v10, 0x28

    .line 213
    invoke-static {v1, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getPercent(Landroid/content/res/TypedArray;II)F

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    .line 217
    const/16 v9, 0xa

    .line 218
    const/4 v10, 0x2

    .line 216
    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    .line 220
    const/16 v9, 0xb

    .line 219
    invoke-static {v1, v9}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMinMoreSuggestionsWidth:F

    .line 221
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    const v9, 0x7f0b001d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    iget v10, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    .line 223
    invoke-static {v7, v9, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getMoreSuggestionsHint(Landroid/content/res/Resources;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    .line 225
    iget v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    .line 227
    const v9, 0x7f0b0015

    .line 226
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    .line 229
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 230
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f03000c

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 231
    const v9, 0x7f03000c

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 232
    const v9, 0x7f0c00f0

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mHintToSaveText:Ljava/lang/CharSequence;

    .line 233
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;)I
    .registers 2
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    return v0
.end method

.method private static addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .parameter "stripView"
    .parameter "divider"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 332
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 333
    return-void
.end method

.method private static applyAlpha(IF)I
    .registers 6
    .parameter "color"
    .parameter "alpha"

    .prologue
    .line 324
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 325
    .local v0, newAlpha:I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static getMoreSuggestionsHint(Landroid/content/res/Resources;FI)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter "res"
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/high16 v9, 0x3f00

    .line 236
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 237
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v0, bounds:Landroid/graphics/Rect;
    const-string v6, "\u2026"

    const/4 v7, 0x0

    const-string v8, "\u2026"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 244
    .local v5, width:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 246
    .local v3, height:I
    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 245
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    .local v1, buffer:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    .local v2, canvas:Landroid/graphics/Canvas;
    const-string v6, "\u2026"

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    int-to-float v8, v3

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method private static getPercent(Landroid/content/res/TypedArray;II)F
    .registers 5
    .parameter "a"
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 254
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method private static getRatio(Landroid/content/res/TypedArray;I)F
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    const/16 v1, 0x3e8

    .line 259
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method private getStyledSuggestionWord(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .registers 12
    .parameter "suggestions"
    .parameter "pos"

    .prologue
    const/16 v8, 0x11

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 263
    invoke-virtual {p1, p2}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 264
    .local v5, word:Ljava/lang/CharSequence;
    if-ne p2, v1, :cond_1c

    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z

    move-result v7

    if-eqz v7, :cond_1c

    move v0, v1

    .line 265
    .local v0, isAutoCorrect:Z
    :goto_11
    if-nez p2, :cond_1e

    iget-boolean v7, p1, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v7, :cond_1e

    .line 266
    .local v1, isTypedWordValid:Z
    :goto_17
    if-nez v0, :cond_20

    if-nez v1, :cond_20

    .line 279
    .end local v5           #word:Ljava/lang/CharSequence;
    :goto_1b
    return-object v5

    .end local v0           #isAutoCorrect:Z
    .end local v1           #isTypedWordValid:Z
    .restart local v5       #word:Ljava/lang/CharSequence;
    :cond_1c
    move v0, v6

    .line 264
    goto :goto_11

    .restart local v0       #isAutoCorrect:Z
    :cond_1e
    move v1, v6

    .line 265
    goto :goto_17

    .line 269
    .restart local v1       #isTypedWordValid:Z
    :cond_20
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 270
    .local v2, len:I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .local v4, spannedWord:Landroid/text/Spannable;
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionStripOption:I

    .line 272
    .local v3, option:I
    if-eqz v0, :cond_31

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_37

    .line 273
    :cond_31
    if-eqz v1, :cond_3c

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_3c

    .line 274
    :cond_37
    sget-object v7, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 276
    :cond_3c
    if-eqz v0, :cond_47

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_47

    .line 277
    sget-object v7, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    invoke-interface {v4, v7, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_47
    move-object v5, v4

    .line 279
    goto :goto_1b
.end method

.method private getSuggestionTextColor(ILcom/android/inputmethod/latin/SuggestedWords;I)I
    .registers 8
    .parameter "index"
    .parameter "suggestions"
    .parameter "pos"

    .prologue
    .line 297
    if-eqz p3, :cond_24

    const/4 v2, 0x1

    .line 300
    .local v2, isSuggested:Z
    :goto_3
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v3, :cond_26

    invoke-static {p2}, Lcom/android/inputmethod/latin/Utils;->willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 301
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    .line 307
    .local v0, color:I
    :goto_f
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_2e

    .line 308
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v3, :cond_2e

    iget-boolean v3, p2, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v3, :cond_2e

    .line 309
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->shouldBlockAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 310
    const/high16 v0, -0x1

    .line 319
    .end local v0           #color:I
    :cond_23
    :goto_23
    return v0

    .line 297
    .end local v2           #isSuggested:Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_3

    .line 302
    .restart local v2       #isSuggested:Z
    :cond_26
    if-eqz v2, :cond_2b

    .line 303
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorSuggested:I

    .restart local v0       #color:I
    goto :goto_f

    .line 305
    .end local v0           #color:I
    :cond_2b
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    .restart local v0       #color:I
    goto :goto_f

    .line 314
    :cond_2e
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-ge p3, v3, :cond_47

    .line 315
    invoke-virtual {p2, p3}, Lcom/android/inputmethod/latin/SuggestedWords;->getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v1

    .line 316
    .local v1, info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :goto_38
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->isObsoleteSuggestedWord()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 317
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mAlphaObsoleted:F

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->applyAlpha(IF)I

    move-result v0

    goto :goto_23

    .line 315
    .end local v1           #info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_47
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private getSuggestionWeight(I)F
    .registers 4
    .parameter "index"

    .prologue
    .line 406
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v0, :cond_7

    .line 407
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    .line 410
    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_6
.end method

.method private getSuggestionWidth(II)I
    .registers 8
    .parameter "index"
    .parameter "maxWidth"

    .prologue
    .line 399
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mPadding:I

    iget v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    mul-int v2, v3, v4

    .line 400
    .local v2, paddings:I
    iget v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    iget v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    add-int/lit8 v4, v4, -0x1

    mul-int v1, v3, v4

    .line 401
    .local v1, dividers:I
    sub-int v3, p2, v2

    sub-int v0, v3, v1

    .line 402
    .local v0, availableWidth:I
    int-to-float v3, v0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getSuggestionWeight(I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method private getWordPosition(ILcom/android/inputmethod/latin/SuggestedWords;)I
    .registers 5
    .parameter "index"
    .parameter "suggestions"

    .prologue
    .line 285
    invoke-static {p2}, Lcom/android/inputmethod/latin/Utils;->willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 286
    .local v0, centerPos:I
    :goto_7
    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    if-ne p1, v1, :cond_e

    .line 291
    .end local v0           #centerPos:I
    :goto_b
    return v0

    .line 285
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 288
    .restart local v0       #centerPos:I
    :cond_e
    if-ne p1, v0, :cond_13

    .line 289
    iget v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    goto :goto_b

    :cond_13
    move v0, p1

    .line 291
    goto :goto_b
.end method

.method private layoutPunctuationSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;)V
    .registers 11
    .parameter "suggestions"
    .parameter "stripView"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 428
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 429
    .local v0, countInStrip:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_d
    if-lt v1, v0, :cond_13

    .line 445
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    .line 446
    return-void

    .line 430
    :cond_13
    if-eqz v1, :cond_20

    .line 432
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {p2, v4}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 435
    :cond_20
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWords:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 436
    .local v3, word:Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    iget v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 439
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 441
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 442
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 443
    iget v4, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsStripHeight:I

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V
    invoke-static {v3, v7, v4}, Lcom/android/inputmethod/latin/SuggestionsView;->access$6(Landroid/view/View;FI)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private setupTexts(Lcom/android/inputmethod/latin/SuggestedWords;I)V
    .registers 8
    .parameter "suggestions"
    .parameter "countInStrip"

    .prologue
    .line 415
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 416
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 417
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_e
    if-lt v1, v0, :cond_14

    .line 421
    move v1, v0

    :goto_11
    if-lt v1, p2, :cond_20

    .line 425
    return-void

    .line 418
    :cond_14
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getStyledSuggestionWord(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 419
    .local v2, styled:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 423
    .end local v2           #styled:Ljava/lang/CharSequence;
    :cond_20
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .registers 27
    .parameter "suggestions"
    .parameter "stripView"
    .parameter "placer"
    .parameter "stripWidth"

    .prologue
    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/SuggestedWords;->isPunctuationSuggestions()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 338
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->layoutPunctuationSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;)V

    .line 396
    :cond_9
    return-void

    .line 342
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    .line 343
    .local v4, countInStrip:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->setupTexts(Lcom/android/inputmethod/latin/SuggestedWords;I)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v4, :cond_140

    const/16 v18, 0x1

    :goto_1f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    .line 345
    const/16 v16, 0x0

    .line 346
    .local v16, x:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_28
    if-ge v7, v4, :cond_9

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getWordPosition(ILcom/android/inputmethod/latin/SuggestedWords;)I

    move-result v10

    .line 349
    .local v10, pos:I
    if-eqz v7, :cond_4d

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 352
    .local v6, divider:Landroid/view/View;
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->addDivider(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 353
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 356
    .end local v6           #divider:Landroid/view/View;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mTexts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 357
    .local v12, styled:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWords:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 358
    .local v15, word:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_144

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_144

    .line 361
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 360
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsHint:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 369
    :goto_a6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_159

    const/16 v18, 0x0

    :goto_ae
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v10}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getSuggestionTextColor(ILcom/android/inputmethod/latin/SuggestedWords;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getSuggestionWidth(II)I

    move-result v14

    .line 372
    .local v14, width:I
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    move-object/from16 v0, v18

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    invoke-static {v12, v14, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$5(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 373
    .local v13, text:Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v11

    .line 374
    .local v11, scaleX:F
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 376
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->getSuggestionWeight(I)F

    move-result v18

    const/16 v19, -0x1

    .line 377
    move/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V
    invoke-static {v15, v0, v1}, Lcom/android/inputmethod/latin/SuggestionsView;->access$6(Landroid/view/View;FI)V

    .line 379
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    .line 381
    invoke-static {}, Lcom/android/inputmethod/latin/SuggestionsView;->access$7()Z

    move-result v18

    if-eqz v18, :cond_13c

    .line 382
    move-object/from16 v0, p1

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    invoke-static {v0, v10}, Lcom/android/inputmethod/latin/SuggestionsView;->access$8(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 383
    .local v5, debugInfo:Ljava/lang/CharSequence;
    if-eqz v5, :cond_13c

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 385
    .local v8, info:Landroid/widget/TextView;
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 387
    const/16 v18, -0x2

    .line 388
    const/16 v19, -0x2

    .line 387
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 389
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 390
    .local v9, infoWidth:I
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 392
    .local v17, y:I
    sub-int v18, v16, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    .line 391
    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v9, v2}, Lcom/android/inputmethod/compat/FrameLayoutCompatUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 346
    .end local v5           #debugInfo:Ljava/lang/CharSequence;
    .end local v8           #info:Landroid/widget/TextView;
    .end local v9           #infoWidth:I
    .end local v17           #y:I
    :cond_13c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    .line 344
    .end local v7           #index:I
    .end local v10           #pos:I
    .end local v11           #scaleX:F
    .end local v12           #styled:Ljava/lang/CharSequence;
    .end local v13           #text:Ljava/lang/CharSequence;
    .end local v14           #width:I
    .end local v15           #word:Landroid/widget/TextView;
    .end local v16           #x:I
    :cond_140
    const/16 v18, 0x0

    goto/16 :goto_1f

    .line 365
    .restart local v7       #index:I
    .restart local v10       #pos:I
    .restart local v12       #styled:Ljava/lang/CharSequence;
    .restart local v15       #word:Landroid/widget/TextView;
    .restart local v16       #x:I
    :cond_144
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a6

    .line 369
    :cond_159
    const/16 v18, 0x1

    goto/16 :goto_ae
.end method

.method public layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;I)V
    .registers 15
    .parameter "word"
    .parameter "stripView"
    .parameter "stripWidth"

    .prologue
    const/4 v10, -0x1

    .line 450
    iget v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividerWidth:I

    sub-int v8, p3, v8

    iget v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 452
    .local v4, width:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    .line 453
    .local v6, wordView:Landroid/widget/TextView;
    iget v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    int-to-float v8, v4

    iget v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 455
    .local v7, wordWidth:I
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    invoke-static {p1, v7, v8}, Lcom/android/inputmethod/latin/SuggestionsView;->access$5(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 456
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v5

    .line 457
    .local v5, wordScaleX:F
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 460
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V
    invoke-static {v6, v8, v10}, Lcom/android/inputmethod/latin/SuggestionsView;->access$6(Landroid/view/View;FI)V

    .line 463
    iget-object v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mDividers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 465
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mHintToSaveView:Landroid/widget/TextView;

    .line 466
    .local v1, hintView:Landroid/widget/TextView;
    iget v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorAutoCorrect:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    sub-int v2, v4, v7

    .line 468
    .local v2, hintWidth:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mHintToSaveText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    invoke-static {v8, v2, v9}, Lcom/android/inputmethod/latin/SuggestionsView;->access$9(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F

    move-result v0

    .line 469
    .local v0, hintScaleX:F
    iget-object v8, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mHintToSaveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 471
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 473
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mCenterSuggestionWeight:F

    sub-float/2addr v8, v9

    .line 472
    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V
    invoke-static {v1, v8, v10}, Lcom/android/inputmethod/latin/SuggestionsView;->access$6(Landroid/view/View;FI)V

    .line 474
    return-void
.end method
