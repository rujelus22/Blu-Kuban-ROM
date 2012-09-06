.class Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyDrawParams"
.end annotation


# static fields
.field private static final UNDEFINED_RATIO:F = -1.0f


# instance fields
.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyBackgroundExternal:Landroid/graphics/drawable/Drawable;

.field public mKeyBackgroundFunctional:Landroid/graphics/drawable/Drawable;

.field public mKeyHintLabelColor:I

.field private final mKeyHintLabelRatio:F

.field public mKeyHintLabelSize:I

.field public final mKeyHintLetterColor:I

.field public final mKeyHintLetterPadding:F

.field private final mKeyHintLetterRatio:F

.field public mKeyHintLetterSize:I

.field public final mKeyLabelHorizontalPadding:F

.field private final mKeyLabelRatio:F

.field public mKeyLabelSize:I

.field private final mKeyLargeLetterRatio:F

.field public mKeyLargeLetterSize:I

.field private final mKeyLetterRatio:F

.field public mKeyLetterSize:I

.field public final mKeyPopupHintLetterPadding:F

.field public mKeyTextColor:I

.field public final mKeyTextInactivatedColor:I

.field public final mKeyTextStyle:Landroid/graphics/Typeface;

.field public final mKeyUppercaseLetterActivatedColor:I

.field public final mKeyUppercaseLetterInactivatedColor:I

.field public final mKeyUppercaseLetterPadding:F

.field private final mKeyUppercaseLetterRatio:F

.field public mKeyUppercaseLetterSize:I

.field public final mPadding:Landroid/graphics/Rect;

.field public mShadowColor:I

.field public final mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 8
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x100

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 240
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    .line 241
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 245
    :goto_25
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 246
    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 251
    :goto_35
    const/4 v0, 0x4

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    .line 252
    const/4 v0, 0x6

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterRatio:F

    .line 254
    const/16 v0, 0x8

    .line 253
    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    .line 255
    const/4 v0, 0x7

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelRatio:F

    .line 257
    const/16 v0, 0x9

    .line 256
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    .line 259
    const/16 v0, 0xa

    .line 258
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    .line 261
    const/16 v0, 0xb

    .line 260
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyPopupHintLetterPadding:F

    .line 263
    const/16 v0, 0xc

    .line 262
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    .line 264
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    .line 266
    const/16 v0, 0xe

    .line 265
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    .line 267
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    .line 268
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    .line 270
    const/16 v0, 0x11

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    .line 272
    const/16 v0, 0x12

    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    .line 274
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 273
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 275
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    .line 276
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    .line 278
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 279
    return-void

    .line 243
    :cond_c6
    const/4 v0, 0x3

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    goto/16 :goto_25

    .line 249
    :cond_cf
    const/4 v0, 0x5

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$1(Landroid/content/res/TypedArray;I)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    goto/16 :goto_35
.end method

.method static synthetic access$0(Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)F
    .registers 2
    .parameter

    .prologue
    .line 221
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    return v0
.end method


# virtual methods
.method public updateKeyHeight(I)V
    .registers 5
    .parameter "keyHeight"

    .prologue
    const/4 v2, 0x0

    .line 282
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e

    .line 283
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 284
    :cond_e
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1b

    .line 285
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    .line 286
    :cond_1b
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    .line 287
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    .line 288
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    .line 289
    int-to-float v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    .line 290
    return-void
.end method
