.class public Lcom/android/inputmethod/keyboard/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/Key$Spacer;
    }
.end annotation


# static fields
.field public static final BACKGROUND_TYPE_ACTION:I = 0x2

.field public static final BACKGROUND_TYPE_FUNCTIONAL:I = 0x1

.field public static final BACKGROUND_TYPE_NORMAL:I = 0x0

.field public static final BACKGROUND_TYPE_STICKY:I = 0x3

.field private static final KEY_STATE_ACTIVE_NORMAL:[I = null

.field private static final KEY_STATE_ACTIVE_PRESSED:[I = null

.field private static final KEY_STATE_FUNCTIONAL_NORMAL:[I = null

.field private static final KEY_STATE_FUNCTIONAL_PRESSED:[I = null

.field private static final KEY_STATE_NORMAL:[I = null

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I = null

.field private static final KEY_STATE_NORMAL_HIGHLIGHT_ON:[I = null

.field private static final KEY_STATE_PRESSED:[I = null

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I = null

.field private static final KEY_STATE_PRESSED_HIGHLIGHT_ON:[I = null

.field private static final LABEL_OPTION_ALIGN_LEFT:I = 0x1

.field private static final LABEL_OPTION_ALIGN_LEFT_OF_CENTER:I = 0x8

.field private static final LABEL_OPTION_ALIGN_RIGHT:I = 0x2

.field private static final LABEL_OPTION_AUTO_X_SCALE:I = 0x4000

.field private static final LABEL_OPTION_FOLLOW_KEY_HINT_LABEL_RATIO:I = 0x100

.field private static final LABEL_OPTION_FOLLOW_KEY_LETTER_RATIO:I = 0x80

.field private static final LABEL_OPTION_FONT_MONO_SPACE:I = 0x40

.field private static final LABEL_OPTION_FONT_NORMAL:I = 0x20

.field private static final LABEL_OPTION_HAS_HINT_LABEL:I = 0x800

.field private static final LABEL_OPTION_HAS_POPUP_HINT:I = 0x200

.field private static final LABEL_OPTION_HAS_UPPERCASE_LETTER:I = 0x400

.field private static final LABEL_OPTION_LARGE_LETTER:I = 0x10

.field private static final LABEL_OPTION_WITH_ICON_LEFT:I = 0x1000

.field private static final LABEL_OPTION_WITH_ICON_RIGHT:I = 0x2000

.field private static final sRtlParenthesisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBackgroundType:I

.field public final mCode:I

.field private mEnabled:Z

.field public final mHeight:I

.field private mHighlightOn:Z

.field public final mHintLabel:Ljava/lang/CharSequence;

.field public final mHitBox:Landroid/graphics/Rect;

.field public final mHorizontalGap:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field public final mLabel:Ljava/lang/CharSequence;

.field private final mLabelOption:I

.field public final mMaxMoreKeysColumn:I

.field public final mMoreKeys:[Ljava/lang/CharSequence;

.field private mNeedsSpecialPopupHint:Z

.field public final mOutputText:Ljava/lang/CharSequence;

.field private mPressed:Z

.field private mPreviewIcon:Landroid/graphics/drawable/Drawable;

.field public final mRepeatable:Z

.field public final mVerticalGap:I

.field public final mVisualInsetsLeft:I

.field public final mVisualInsetsRight:I

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->sRtlParenthesisMap:Ljava/util/Map;

    .line 126
    const/16 v0, 0x28

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 127
    const/16 v0, 0x5b

    const/16 v1, 0x5d

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 128
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 129
    const/16 v0, 0x3c

    const/16 v1, 0x3e

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 132
    const/16 v0, 0xab

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 135
    const/16 v0, 0x2039

    const/16 v1, 0x203a

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 138
    const/16 v0, 0x2264

    const/16 v1, 0x2265

    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->addRtlParenthesisPair(II)V

    .line 465
    new-array v0, v4, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_ON:[I

    .line 470
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_ON:[I

    .line 476
    new-array v0, v3, [I

    .line 477
    const v1, 0x101009f

    aput v1, v0, v2

    .line 476
    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    .line 480
    new-array v0, v4, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    .line 485
    new-array v0, v2, [I

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    .line 488
    new-array v0, v3, [I

    .line 489
    const v1, 0x10100a7

    aput v1, v0, v2

    .line 488
    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    .line 493
    new-array v0, v3, [I

    .line 494
    const v1, 0x10100a3

    aput v1, v0, v2

    .line 493
    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 498
    new-array v0, v4, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 504
    new-array v0, v3, [I

    .line 505
    const v1, 0x10100a2

    aput v1, v0, v2

    .line 504
    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    .line 509
    new-array v0, v4, [I

    fill-array-data v0, :array_aa

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    .line 44
    return-void

    .line 465
    :array_88
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 470
    :array_90
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 480
    :array_9a
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data

    .line 498
    :array_a2
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 509
    :array_aa
    .array-data 0x4
        0xa2t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/inputmethod/keyboard/internal/KeyStyles;)V
    .registers 28
    .parameter "res"
    .parameter "params"
    .parameter
    .parameter "parser"
    .parameter "keyStyles"

    .prologue
    .line 209
    .local p3, row:Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;,"Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 116
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v18

    if-eqz v18, :cond_8a

    const/16 v18, 0x0

    :goto_1e
    move/from16 v0, v18

    int-to-float v6, v0

    .line 212
    .local v6, horizontalGap:F
    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->mRowHeight:I

    .line 213
    .local v9, keyHeight:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mVerticalGap:I

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mVerticalGap:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 216
    invoke-static/range {p4 .. p4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    .line 217
    sget-object v19, Linputmethod/latin/ported/R$styleable;->Keyboard_Key:[I

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 220
    .local v8, keyAttr:Landroid/content/res/TypedArray;
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_91

    .line 221
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 222
    .local v17, styleName:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;->getKeyStyle(Ljava/lang/String;)Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;

    move-result-object v16

    .line 223
    .local v16, style:Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    if-nez v16, :cond_95

    .line 224
    new-instance v18, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Unknown key style: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    throw v18

    .line 211
    .end local v6           #horizontalGap:F
    .end local v8           #keyAttr:Landroid/content/res/TypedArray;
    .end local v9           #keyHeight:I
    .end local v16           #style:Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    .end local v17           #styleName:Ljava/lang/String;
    :cond_8a
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    move/from16 v18, v0

    goto :goto_1e

    .line 226
    .restart local v6       #horizontalGap:F
    .restart local v8       #keyAttr:Landroid/content/res/TypedArray;
    .restart local v9       #keyHeight:I
    :cond_91
    invoke-virtual/range {p5 .. p5}, Lcom/android/inputmethod/keyboard/internal/KeyStyles;->getEmptyKeyStyle()Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;

    move-result-object v16

    .line 229
    .restart local v16       #style:Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;
    :cond_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyX(Landroid/content/res/TypedArray;)F

    move-result v11

    .line 230
    .local v11, keyXPos:F
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v11}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyWidth(Landroid/content/res/TypedArray;F)F

    move-result v10

    .line 231
    .local v10, keyWidth:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->getKeyY()I

    move-result v12

    .line 234
    .local v12, keyYPos:I
    const/high16 v18, 0x4000

    div-float v18, v6, v18

    add-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 235
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 236
    sub-float v18, v10, v6

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 237
    float-to-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHorizontalGap:I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    float-to-int v0, v11

    move/from16 v19, v0

    add-float v20, v11, v10

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    add-int v21, v12, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    add-float v18, v11, v10

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$Row;->setXPos(F)V

    .line 243
    const/16 v18, 0x1

    .line 242
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 246
    .local v13, moreKeys:[Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v18

    if-eqz v18, :cond_296

    .line 247
    const v18, 0x7f080009

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_296

    .line 248
    sget-object v18, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->DIGIT_FILTER:Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->filterOut(Landroid/content/res/Resources;[Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$CodeFilter;)[Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 253
    :goto_12b
    const/16 v18, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMiniKeyboardColumn:I

    move/from16 v19, v0

    .line 252
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    .line 256
    const/16 v18, 0x3

    const/16 v19, 0x0

    .line 255
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 257
    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 258
    const/16 v18, 0xd

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 260
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 262
    .local v7, iconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
    const/16 v18, 0xe

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 261
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    .line 264
    const/16 v18, 0xf

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBaseWidth:I

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 263
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    .line 266
    const/16 v18, 0xb

    const/16 v19, 0x0

    .line 265
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 267
    const/16 v18, 0x9

    .line 268
    const/16 v19, 0x0

    .line 267
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 269
    const/16 v18, 0xa

    .line 270
    const/16 v19, 0x0

    .line 269
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v15

    .line 271
    .local v15, shiftedIconId:I
    if-eqz v15, :cond_210

    .line 272
    invoke-virtual {v7, v15}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 273
    .local v14, shiftedIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->addShiftedIcon(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;)V

    .line 275
    .end local v14           #shiftedIcon:Landroid/graphics/drawable/Drawable;
    :cond_210
    const/16 v18, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    .line 277
    const/16 v18, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 278
    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    .line 279
    const/16 v18, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 282
    const/16 v18, 0x0

    .line 283
    const/16 v19, -0x63

    .line 282
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/inputmethod/keyboard/internal/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 284
    .local v4, code:I
    const/16 v18, -0x63

    move/from16 v0, v18

    if-ne v4, v0, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_29c

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 286
    .local v5, firstChar:I
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 293
    .end local v5           #firstChar:I
    :goto_292
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    return-void

    .line 250
    .end local v4           #code:I
    .end local v7           #iconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
    .end local v15           #shiftedIconId:I
    :cond_296
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    goto/16 :goto_12b

    .line 287
    .restart local v4       #code:I
    .restart local v7       #iconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
    .restart local v15       #shiftedIconId:I
    :cond_29c
    const/16 v18, -0x63

    move/from16 v0, v18

    if-eq v4, v0, :cond_2a7

    .line 288
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto :goto_292

    .line 290
    :cond_2a7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto :goto_292
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;IIII)V
    .registers 19
    .parameter "res"
    .parameter "params"
    .parameter "moreKeySpec"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 168
    invoke-static {p3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, p3}, Lcom/android/inputmethod/keyboard/Key;->getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 169
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/keyboard/Key;->getCode(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;)I

    move-result v5

    invoke-static {p3}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getOutputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 170
    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIII)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIII)V
    .registers 14
    .parameter "params"
    .parameter "label"
    .parameter "hintLabel"
    .parameter "icon"
    .parameter "code"
    .parameter "outputText"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 178
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    sub-int v0, p10, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 179
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalGap:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHorizontalGap:I

    .line 180
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mVerticalGap:I

    .line 181
    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    .line 182
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHorizontalGap:I

    sub-int v0, p9, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 183
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    .line 184
    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    .line 185
    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    .line 186
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 188
    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    .line 189
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 190
    iput-object p6, p0, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 191
    iput p5, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 192
    iput-object p4, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHorizontalGap:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p7

    iput v0, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 195
    iput p8, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    add-int v1, p7, p9

    add-int/lit8 v1, v1, 0x1

    add-int v2, p8, p10

    invoke-virtual {v0, p7, p8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    return-void
.end method

.method private static addRtlParenthesisPair(II)V
    .registers 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 142
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->sRtlParenthesisMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->sRtlParenthesisMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private static getCode(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;)I
    .registers 5
    .parameter "res"
    .parameter "params"
    .parameter "moreKeySpec"

    .prologue
    .line 156
    invoke-static {p0, p2}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    .line 155
    invoke-static {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v0

    return v0
.end method

.method private static getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "params"
    .parameter "moreKeySpec"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRtlParenthesisCode(IZ)I
    .registers 4
    .parameter "code"
    .parameter "isRtl"

    .prologue
    .line 147
    if-eqz p1, :cond_1e

    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->sRtlParenthesisMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    sget-object v0, Lcom/android/inputmethod/keyboard/Key;->sRtlParenthesisMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 150
    .end local p0
    :cond_1e
    return p0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .registers 3

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 522
    .local v0, pressed:Z
    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    packed-switch v1, :pswitch_data_34

    .line 534
    if-eqz v0, :cond_30

    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    :goto_b
    return-object v1

    .line 524
    :pswitch_c
    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    goto :goto_b

    :cond_11
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_b

    .line 526
    :pswitch_14
    if-eqz v0, :cond_19

    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_PRESSED:[I

    goto :goto_b

    :cond_19
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_ACTIVE_NORMAL:[I

    goto :goto_b

    .line 528
    :pswitch_1c
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHighlightOn:Z

    if-eqz v1, :cond_28

    .line 529
    if-eqz v0, :cond_25

    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_ON:[I

    goto :goto_b

    :cond_25
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_ON:[I

    goto :goto_b

    .line 531
    :cond_28
    if-eqz v0, :cond_2d

    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_HIGHLIGHT_OFF:[I

    goto :goto_b

    :cond_2d
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_HIGHLIGHT_OFF:[I

    goto :goto_b

    .line 534
    :cond_30
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    goto :goto_b

    .line 522
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPreviewIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasHintLabel()Z
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabelWithIconLeft()Z
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLabelWithIconRight()Z
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPopupHint()Z
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUppercaseLetter()Z
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignLeft()Z
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignLeftOfCenter()Z
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAlignRight()Z
    .registers 2

    .prologue
    .line 350
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    return v0
.end method

.method public isOnKey(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isSpacer()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isSticky()Z
    .registers 3

    .prologue
    .line 313
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 5
    .parameter "params"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    return-void
.end method

.method public markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 298
    return-void
.end method

.method public markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 5
    .parameter "params"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mHorizontalEdgesPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 302
    return-void
.end method

.method public markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mHitBox:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 306
    return-void
.end method

.method public needsSpecialPopupHint()Z
    .registers 2

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mNeedsSpecialPopupHint:Z

    return v0
.end method

.method public needsXScale()Z
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onPressed()V
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 412
    return-void
.end method

.method public onReleased()V
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 421
    return-void
.end method

.method public selectTextSize(IIII)I
    .registers 7
    .parameter "letter"
    .parameter "largeLetter"
    .parameter "label"
    .parameter "hintLabel"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    .line 333
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x180

    if-nez v0, :cond_10

    .line 341
    .end local p3
    :goto_f
    return p3

    .line 336
    .restart local p3
    :cond_10
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    move p3, p4

    .line 337
    goto :goto_f

    .line 338
    :cond_18
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_20

    move p3, p2

    .line 339
    goto :goto_f

    :cond_20
    move p3, p1

    .line 341
    goto :goto_f
.end method

.method public selectTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3
    .parameter "defaultTypeface"

    .prologue
    .line 322
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 323
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 327
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 324
    .restart local p1
    :cond_9
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 325
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_8
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 433
    return-void
.end method

.method public setHighlightOn(Z)V
    .registers 2
    .parameter "highlightOn"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/Key;->mHighlightOn:Z

    .line 425
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 399
    return-void
.end method

.method public setNeedsSpecialPopupHint(Z)V
    .registers 2
    .parameter "needsSpecialPopupHint"

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/Key;->mNeedsSpecialPopupHint:Z

    .line 363
    return-void
.end method

.method public setPreviewIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 403
    return-void
.end method

.method public squaredDistanceToEdge(II)I
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 454
    iget v5, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 455
    .local v5, left:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int v6, v5, v8

    .line 456
    .local v6, right:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 457
    .local v7, top:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int v0, v7, v8

    .line 458
    .local v0, bottom:I
    if-ge p1, v5, :cond_1c

    move v3, v5

    .line 459
    .local v3, edgeX:I
    :goto_f
    if-ge p2, v7, :cond_22

    move v4, v7

    .line 460
    .local v4, edgeY:I
    :goto_12
    sub-int v1, p1, v3

    .line 461
    .local v1, dx:I
    sub-int v2, p2, v4

    .line 462
    .local v2, dy:I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 458
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #edgeX:I
    .end local v4           #edgeY:I
    :cond_1c
    if-le p1, v6, :cond_20

    move v3, v6

    goto :goto_f

    :cond_20
    move v3, p1

    goto :goto_f

    .line 459
    .restart local v3       #edgeX:I
    :cond_22
    if-le p2, v0, :cond_26

    move v4, v0

    goto :goto_12

    :cond_26
    move v4, p2

    goto :goto_12
.end method
