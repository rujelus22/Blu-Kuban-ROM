.class public Lcom/android/inputmethod/keyboard/LatinKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;,
        Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;
    }
.end annotation


# static fields
.field private static final MEDIUM_TEXT_SIZE_OF_LANGUAGE_ON_SPACEBAR:Ljava/lang/String; = "medium"

.field private static final MINIMUM_SCALE_OF_LANGUAGE_NAME:F = 0.8f

.field private static final SMALL_TEXT_SIZE_OF_LANGUAGE_ON_SPACEBAR:Ljava/lang/String; = "small"

.field public static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACE_LED_LENGTH_PERCENT:I = 0x50


# instance fields
.field private final mAutoCorrectionSpacebarLedEnabled:Z

.field private final mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsSpacebarTriggeringPopupByLongPress:Z

.field private final mRes:Landroid/content/res/Resources;

.field private final mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpaceDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpacebarTextColor:I

.field private mSpacebarTextFadeFactor:F

.field private final mSpacebarTextShadowColor:I

.field private final mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V
    .registers 11
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 52
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mTheme:Landroid/content/res/Resources$Theme;

    .line 86
    iget-object v2, p2, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 87
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_30
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v2, p2, Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    .line 90
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_40
    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0010

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 93
    .local v1, longPressSpaceKeyTimeout:I
    if-lez v1, :cond_85

    move v2, v4

    :goto_4e
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsSpacebarTriggeringPopupByLongPress:Z

    .line 96
    sget-object v2, Linputmethod/latin/ported/R$styleable;->LatinKeyboard:[I

    const v6, 0x7f010001

    const v7, 0x7f0f0004

    .line 95
    invoke-virtual {p1, v3, v2, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    .line 99
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    .line 104
    const/4 v2, 0x4

    .line 103
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #longPressSpaceKeyTimeout:I
    :cond_81
    move-object v2, v3

    .line 87
    goto :goto_30

    :cond_83
    move-object v2, v3

    .line 90
    goto :goto_40

    .restart local v1       #longPressSpaceKeyTimeout:I
    :cond_85
    move v2, v5

    .line 93
    goto :goto_4e
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;Lcom/android/inputmethod/keyboard/LatinKeyboard;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/LatinKeyboard$LatinKeyboardParams;)V

    return-void
.end method

.method private drawSpacebar(Ljava/util/Locale;ZF)Landroid/graphics/Bitmap;
    .registers 30
    .parameter "inputLocale"
    .parameter "isAutoCorrection"
    .parameter "textFadeFactor"

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move/from16 v19, v0

    .line 265
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_144

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 266
    .local v10, height:I
    :goto_1e
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 267
    .local v6, buffer:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 269
    .local v15, res:Landroid/content/res/Resources;
    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 272
    if-eqz p1, :cond_10b

    .line 273
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 274
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 278
    const v22, 0x7f0c0001

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 279
    const-string v25, "small"

    aput-object v25, v23, v24

    .line 277
    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    const-string v22, "medium"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_150

    .line 283
    const v18, 0x1030044

    .line 284
    .local v18, textStyle:I
    const/16 v8, 0x12

    .line 291
    .local v8, defaultTextSize:I
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mTheme:Landroid/content/res/Resources$Theme;

    move-object/from16 v22, v0

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;IF)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, language:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v9

    .line 297
    .local v9, descent:F
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    add-float v16, v22, v9

    .line 298
    .local v16, textHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_157

    int-to-float v0, v10

    move/from16 v22, v0

    const v23, 0x3f19999a

    mul-float v5, v22, v23

    .line 300
    .local v5, baseline:F
    :goto_b9
    sget-boolean v22, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v22, :cond_166

    .line 302
    sget-object v22, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color2:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    const/high16 v24, 0x3f80

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    sget-object v22, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->skinData:Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color2:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    .end local v5           #baseline:F
    .end local v8           #defaultTextSize:I
    .end local v9           #descent:F
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v16           #textHeight:F
    .end local v17           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v18           #textStyle:I
    :cond_10b
    :goto_10b
    if-eqz p2, :cond_1b2

    .line 321
    mul-int/lit8 v22, v19, 0x50

    div-int/lit8 v12, v22, 0x64

    .line 322
    .local v12, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 323
    .local v11, iconHeight:I
    sub-int v22, v19, v12

    div-int/lit8 v20, v22, 0x2

    .line 324
    .local v20, x:I
    sub-int v21, v10, v11

    .line 325
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v20, v12

    add-int v24, v21, v11

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_143
    :goto_143
    return-object v6

    .line 265
    .end local v6           #buffer:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v10           #height:I
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    goto/16 :goto_1e

    .line 286
    .restart local v6       #buffer:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #height:I
    .restart local v14       #paint:Landroid/graphics/Paint;
    .restart local v15       #res:Landroid/content/res/Resources;
    .restart local v17       #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    :cond_150
    const v18, 0x1030046

    .line 287
    .restart local v18       #textStyle:I
    const/16 v8, 0xe

    .restart local v8       #defaultTextSize:I
    goto/16 :goto_7b

    .line 299
    .restart local v9       #descent:F
    .restart local v13       #language:Ljava/lang/String;
    .restart local v16       #textHeight:F
    :cond_157
    div-int/lit8 v22, v10, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v16, v23

    add-float v5, v22, v23

    goto/16 :goto_b9

    .line 310
    .restart local v5       #baseline:F
    :cond_166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    const/high16 v24, 0x3f80

    sub-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    div-int/lit8 v22, v19, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, v5, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v13, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10b

    .line 327
    .end local v5           #baseline:F
    .end local v8           #defaultTextSize:I
    .end local v9           #descent:F
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v16           #textHeight:F
    .end local v17           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v18           #textStyle:I
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_143

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 329
    .restart local v12       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 330
    .restart local v11       #iconHeight:I
    sub-int v22, v19, v12

    div-int/lit8 v20, v22, 0x2

    .line 331
    .restart local v20       #x:I
    sub-int v21, v10, v11

    .line 332
    .restart local v21       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v20, v12

    add-int v24, v21, v11

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_143
.end method

.method private getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .parameter "locale"
    .parameter "isAutoCorrection"

    .prologue
    .line 251
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 250
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 252
    .local v2, hashCode:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 253
    .local v0, cached:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_29

    .line 259
    .end local v0           #cached:Landroid/graphics/drawable/BitmapDrawable;
    :goto_28
    return-object v0

    .line 256
    .restart local v0       #cached:Landroid/graphics/drawable/BitmapDrawable;
    :cond_29
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 257
    iget v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 256
    invoke-direct {p0, p1, p2, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->drawSpacebar(Ljava/util/Locale;ZF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 258
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 259
    goto :goto_28
.end method

.method private static getSpacebarTextColor(IF)I
    .registers 7
    .parameter "color"
    .parameter "fadeFactor"

    .prologue
    .line 152
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 152
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 154
    .local v0, newColor:I
    return v0
.end method

.method private getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I
    .registers 10
    .parameter "theme"
    .parameter "style"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 347
    .line 348
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010095

    aput v4, v3, v5

    .line 347
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_16} :catch_18

    move-result v2

    .line 355
    .local v2, textSize:I
    :goto_17
    return v2

    .line 351
    .end local v2           #textSize:I
    :catch_18
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move v2, p3

    .restart local v2       #textSize:I
    goto :goto_17
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .registers 6
    .parameter "paint"
    .parameter "text"
    .parameter "textSize"
    .parameter "bounds"

    .prologue
    .line 207
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 209
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private static layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;IF)Ljava/lang/String;
    .registers 14
    .parameter "paint"
    .parameter "locale"
    .parameter "width"
    .parameter "origTextSize"

    .prologue
    const/4 v5, 0x0

    const v9, 0x3f4ccccd

    const/4 v6, 0x1

    const/high16 v8, 0x3f80

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-static {p1, v6}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, language:Ljava/lang/String;
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 221
    .local v3, textWidth:I
    div-int v7, p2, v3

    int-to-float v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v2, p3, v7

    .line 223
    .local v2, textSize:F
    invoke-static {p0, v1, v2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 225
    div-float v7, v2, p3

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_5c

    .line 226
    if-gt v3, p2, :cond_5c

    move v4, v5

    .line 229
    .local v4, useMiddleName:Z
    :goto_2a
    if-eqz v4, :cond_60

    .line 230
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->getMiddleDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 232
    div-int v7, p2, v3

    int-to-float v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v2, p3, v7

    .line 233
    div-float v7, v2, p3

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_5e

    .line 234
    if-gt v3, p2, :cond_5e

    .line 239
    .local v5, useShortName:Z
    :goto_45
    if-eqz v5, :cond_58

    .line 240
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {p0, v1, p3, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v3

    .line 242
    div-int v6, p2, v3

    int-to-float v6, v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v2, p3, v6

    .line 244
    :cond_58
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    return-object v1

    .end local v4           #useMiddleName:Z
    .end local v5           #useShortName:Z
    :cond_5c
    move v4, v6

    .line 226
    goto :goto_2a

    .restart local v4       #useMiddleName:Z
    :cond_5e
    move v5, v6

    .line 234
    goto :goto_45

    .line 236
    :cond_60
    const/4 v5, 0x0

    .restart local v5       #useShortName:Z
    goto :goto_45
.end method

.method private updateSpacebarForLocale(Z)V
    .registers 7
    .parameter "isAutoCorrection"

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v3, :cond_6

    .line 203
    :cond_5
    :goto_5
    return-void

    .line 189
    :cond_6
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    .line 190
    .local v0, imm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    if-eqz v0, :cond_5

    .line 192
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsSpacebarTriggeringPopupByLongPress:Z

    if-eqz v3, :cond_36

    .line 193
    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    move v1, v2

    .line 194
    .local v1, shouldShowInputMethodPicker:Z
    :goto_17
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/Key;->setNeedsSpecialPopupHint(Z)V

    .line 196
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v4, v4, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 197
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 193
    .end local v1           #shouldShowInputMethodPicker:Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_17

    .line 198
    .restart local v1       #shouldShowInputMethodPicker:Z
    :cond_38
    if-eqz p1, :cond_45

    .line 199
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpaceDrawable(Ljava/util/Locale;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 201
    :cond_45
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "label"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 181
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_30

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 182
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 184
    .end local p1
    :cond_30
    return-object p1
.end method

.method public getNearestKeys(II)[I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mOccupiedWidth:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 342
    iget v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mOccupiedHeight:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 341
    invoke-super {p0, v0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    return-object v0
.end method

.method public needsAutoCorrectionSpacebarLed()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mAutoCorrectionSpacebarLedEnabled:Z

    return v0
.end method

.method public onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;
    .registers 3
    .parameter "isAutoCorrection"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    return-object v0
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V
    .registers 4
    .parameter "fadeFactor"
    .parameter "view"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 147
    if-eqz p2, :cond_d

    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 149
    :cond_d
    return-void
.end method

.method public updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V
    .registers 5
    .parameter "available"
    .parameter "view"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v0, :cond_5

    .line 164
    :cond_4
    :goto_4
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/Key;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    :goto_10
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    if-eqz p2, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_4

    .line 161
    :cond_1b
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_10
.end method
