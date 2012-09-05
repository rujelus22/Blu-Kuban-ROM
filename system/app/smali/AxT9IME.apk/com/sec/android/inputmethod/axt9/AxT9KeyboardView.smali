.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.super Landroid/view/View;
.source "AxT9KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;,
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;,
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static MAX_NEARBY_KEYS:I

.field private static POPUP_YPOS_REVISION:I

.field private static mPrevTouchX:F

.field private static mPrevTouchY:F

.field private static mSymbolHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

.field private ALTERNATIVE_POPUP_LABEL_COLOR:I

.field private ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

.field private ALTERNATIVE_POPUP_LABEL_SIZE:I

.field private ALTERNATIVE_POPUP_TEXT_SIZE:I

.field private BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

.field private BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

.field private BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

.field private BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

.field private BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

.field private CURSOR_HANDLER_LAND_LABEL_SIZE:I

.field private CURSOR_HANDLER_PORT_LABEL_SIZE:I

.field private EMPTY_KEY_LABEL:Ljava/lang/String;

.field private final ERROR:Z

.field private HWR_BOX_LABEL_COLOR:I

.field private HWR_BOX_LABEL_SIZE:I

.field private ID_PHONEPAD_EMOTICONS:I

.field private ID_PHONEPAD_EMOTICONS_PRESS:I

.field private ID_PHONEPAD_ENTER:I

.field private ID_PHONEPAD_ENTER_PRESS:I

.field private ID_PHONEPAD_SEARCH:I

.field private ID_PHONEPAD_SEARCH_PRESS:I

.field private ID_QWERTY_LAND_EMOTICONS:I

.field private ID_QWERTY_LAND_EMOTICONS_PRESS:I

.field private ID_QWERTY_LAND_ENTER:I

.field private ID_QWERTY_LAND_ENTER_PRESS:I

.field private ID_QWERTY_LAND_SEARCH:I

.field private ID_QWERTY_LAND_SEARCH_PRESS:I

.field private ID_QWERTY_PORT_EMOTICONS:I

.field private ID_QWERTY_PORT_EMOTICONS_PRESS:I

.field private ID_QWERTY_PORT_ENTER:I

.field private ID_QWERTY_PORT_ENTER_PRESS:I

.field private ID_QWERTY_PORT_SEARCH:I

.field private ID_QWERTY_PORT_SEARCH_PRESS:I

.field private final INFO:Z

.field private final KEYBOARD_BACKGROUND_COLOR:I

.field private KEYPAD_SMALL_NUMBER_COLOR:I

.field private KEY_FUNCTION_SHADOW_COLOR:I

.field private KEY_NORMAL_SHADOW_COLOR:I

.field private LANDQWERTY_ENTERKEY_LABEL_SIZE:I

.field private LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

.field private LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

.field private LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

.field private LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

.field private LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

.field private LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

.field private LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

.field private LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

.field private LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

.field private LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

.field private MODE_CHANGE_KEYLABEL:Ljava/lang/String;

.field private MONTH_EDITTEXT_LAND_LABEL_SIZE:I

.field private MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

.field private MONTH_EDITTEXT_PORT_LABEL_SIZE:I

.field private PAGE_KEY_LABEL:Ljava/lang/String;

.field private PHONEPAD_ARROWKEY_TEXT_SIZE:I

.field private PHONEPAD_ENTERKEY_LABEL_SIZE:I

.field private PHONEPAD_EXTRA_LABEL_SIZE:I

.field private PHONEPAD_EXTRA_STRING_LABEL_SIZE:I

.field private PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

.field private PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

.field private PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

.field private PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

.field private PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

.field private PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

.field private PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

.field private PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

.field private PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

.field private PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

.field private PHONEPAD_NUMBER_KEY_LABEL_SIZE_NORMAL:I

.field private PHONEPAD_NUMBER_LABEL_SIZE:I

.field private PHONEPAD_NUMBER_SYMBOLSTAR_SIZE:I

.field private PHONEPAD_PHONENUMBER_STRING_COLOR:I

.field private PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

.field private PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

.field private PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

.field private PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

.field private PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

.field private PREVIEW_HEIGHT:I

.field private PREVIEW_LABEL_COLOR:I

.field private PREVIEW_LABEL_SIZE_ONE:I

.field private PREVIEW_MIN_WIDTH:I

.field private PREVIEW_WIDTH:I

.field private final PREVIEW_WINDOW_HORIZONTAL_PADDING:I

.field private QWERTY_ENTERKEY_LABEL_SIZE:I

.field private QWERTY_KEY_LABEL_COLOR_DISABLE:I

.field private QWERTY_KEY_LABEL_COLOR_FUNCTION:I

.field private QWERTY_KEY_LABEL_COLOR_NORMAL:I

.field private QWERTY_KEY_LABEL_SIZE_EMOTICON:I

.field private QWERTY_KEY_LABEL_SIZE_FUNCTION:I

.field private QWERTY_KEY_LABEL_SIZE_NORMAL:I

.field private QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

.field private QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private QYPGJ_PREVIEW_PADDING_BOTTOM:I

.field private SWIPE_MAX_LIMITE:I

.field private SWIPE_MIN_LIMITE:I

.field private SWIPE_STANDARD_VALUE:I

.field private button_press:Landroid/graphics/drawable/Drawable;

.field mAbortKey:Z

.field private mActionButton:Landroid/widget/Button;

.field private mActionPopup:Landroid/widget/PopupWindow;

.field public mActionPopupListener:Landroid/view/View$OnTouchListener;

.field private mActionPopupY:I

.field private mBackgroundDimAmount:F

.field protected mBuffer:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mColorPreviewLabel:I

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCurrentDotCoDotLocaleIndex:I

.field mCurrentKey:I

.field private mCurrentKeyIndex:I

.field mCurrentKeyTime:J

.field mCurrentTouchKeyIndex:I

.field private mCurrentWwwDotIndex:I

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field mDismissMiniKeyboard:Z

.field mDownKey:I

.field mDownTime:J

.field protected mDrawPending:Z

.field private final mEnableCodeInEmail:Ljava/lang/String;

.field private mFace:Landroid/graphics/Typeface;

.field private mFaceBold:Landroid/graphics/Typeface;

.field private mFaceHelverica:Landroid/graphics/Typeface;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreEvent1:Z

.field private mIgnoreEvent2:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mIsCandShown:Z

.field private mIsDomailAllKeyboard:Z

.field private mIsEmoticonKey:Z

.field private mIsEmoticonsKeyboard:Z

.field private mIsFirstDomainMiniKeyboard:Z

.field private mIsFirstEmoticonMiniKeyboard:Z

.field private mIsFirstSymbolMiniKeyboard:Z

.field private mIsFirstUmlautMiniKeyboard:Z

.field mIsInSpaceKey:Z

.field protected mIsMiniKeyboard:Z

.field private mIsMiniKeyboardOn:Z

.field private mIsModeChangeMiniKeyboard:Z

.field private mIsOneTimeShift:Z

.field mIsSendFirstEvent:Z

.field private mIsShiftedPressed:Z

.field private mIsSymbolsKeyboard:Z

.field private mIsUmlautMiniKeyboard:Z

.field private mIsVerticalKeyboard:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyHeight:I

.field mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

.field mKeyIndices:[I

.field private mKeyLongPressed:Z

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyWidth:I

.field mKeyboard:Landroid/inputmethodservice/Keyboard;

.field mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mLabelTextSize:I

.field private mLandQwertyKeyNumberSequence:[Ljava/lang/String;

.field private mLanguageSpaceGap:I

.field mLastCodeX:I

.field mLastCodeY:I

.field mLastKey:I

.field mLastKeyTime:J

.field mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field mLastX:I

.field mLastY:I

.field protected mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field mMiniKeyboardOnScreen:Z

.field mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mOffsetInWindow:[I

.field protected mOldEventTime:J

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;

.field private mPhoneNumberSequence:[Ljava/lang/String;

.field private mPhonepadKeyNumberSequence:[Ljava/lang/String;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLabel:Ljava/lang/String;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field mPopupX:I

.field mPopupY:I

.field protected mPossiblePoly:Z

.field private mPreview:Landroid/widget/LinearLayout;

.field private mPreviewCentered:Z

.field private mPreviewFunctionText:Landroid/widget/TextView;

.field private mPreviewHeight:I

.field private mPreviewIconView:Landroid/widget/ImageView;

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewMainText:Landroid/widget/TextView;

.field private mPreviewOffset:I

.field private mPreviewPaddingBottom:Landroid/widget/TextView;

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewPortExtraText:Landroid/widget/TextView;

.field private mProximityThreshold:I

.field mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

.field mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

.field mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

.field private mSpaceArrowVerticalCorrection:F

.field mSpaceKeyIndex:I

.field mSpaceStartX:I

.field private mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

.field mStartX:I

.field mStartY:I

.field private mSwipeThreshold:I

.field mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mTaping:Z

.field private mTranslateX:I

.field private mTranslateY:I

.field mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

.field mUmlautMiniKeyboardOnScreen:Z

.field mVerticalCorrection:I

.field private mWindowOffset:[I

.field private misLandscapeMode:Z

.field private temp_int:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 392
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MAX_NEARBY_KEYS:I

    .line 563
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_YPOS_REVISION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 632
    const/high16 v0, 0x7f01

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 633
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 636
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->INFO:Z

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ERROR:Z

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 204
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    .line 211
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    .line 213
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    .line 214
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    .line 215
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    .line 216
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    .line 220
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 221
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 224
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->temp_int:I

    .line 225
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    .line 226
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    .line 227
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    .line 228
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    .line 229
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    .line 231
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    .line 237
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v3, "2"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "3"

    aput-object v3, v0, v1

    const-string v1, "N"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v3, "4"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "5"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "6"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "7"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "8"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "9"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "0"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "N"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    .line 245
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v3, "2"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "3"

    aput-object v3, v0, v1

    const-string v1, "N"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v3, "4"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "5"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "6"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "7"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "8"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "9"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "*"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "0"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "#"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "N"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhoneNumberSequence:[Ljava/lang/String;

    .line 253
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v3, "2"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "3"

    aput-object v3, v0, v1

    const-string v1, "4"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v3, "5"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "6"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "7"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "8"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "9"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "0"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    .line 263
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 265
    const-string v0, "1234567890/@._-,"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mEnableCodeInEmail:Ljava/lang/String;

    .line 270
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 309
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    .line 329
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewCentered:Z

    .line 330
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    .line 331
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowTouchPoints:Z

    .line 353
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 354
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    .line 357
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    .line 363
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 368
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 369
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    .line 373
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 374
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 375
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 379
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 416
    const/16 v0, 0xff

    const/16 v1, 0x51

    const/16 v3, 0x51

    const/16 v4, 0x51

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEYBOARD_BACKGROUND_COLOR:I

    .line 419
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 421
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 422
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 423
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 424
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 425
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 426
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    .line 428
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 429
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 430
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 432
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    .line 433
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_KEY_LABEL_SIZE_NORMAL:I

    .line 434
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 435
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

    .line 436
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 437
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    .line 438
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    .line 439
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 440
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    .line 442
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_LABEL_SIZE:I

    .line 443
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_STRING_LABEL_SIZE:I

    .line 444
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_LABEL_SIZE:I

    .line 445
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_SYMBOLSTAR_SIZE:I

    .line 447
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    .line 448
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 449
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    .line 450
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    .line 451
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    .line 452
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEYPAD_SMALL_NUMBER_COLOR:I

    .line 453
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_PHONENUMBER_STRING_COLOR:I

    .line 455
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 456
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    .line 457
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 458
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 459
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 460
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 462
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 463
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 464
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 465
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 467
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    .line 468
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    .line 470
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    .line 471
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    .line 473
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    .line 475
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    .line 476
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 478
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    .line 479
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_COLOR:I

    .line 481
    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 482
    iput-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 484
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 485
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 493
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 494
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 495
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    .line 497
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 499
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 500
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 501
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 503
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 504
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    .line 505
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    .line 507
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MAX_LIMITE:I

    .line 508
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_STANDARD_VALUE:I

    .line 509
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MIN_LIMITE:I

    .line 511
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    .line 513
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_MIN_WIDTH:I

    .line 515
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    .line 526
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WINDOW_HORIZONTAL_PADDING:I

    .line 540
    const-string v0, "StrEmpty"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    .line 541
    const-string v0, "PAGENUM"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    .line 542
    const-string v0, "StrModeChange"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    .line 544
    const v0, 0x7f02005a

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    .line 545
    const v0, 0x7f02005b

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    .line 546
    const v0, 0x7f020064

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    .line 547
    const v0, 0x7f020065

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    .line 548
    const v0, 0x7f0200d1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    .line 549
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    .line 550
    const v0, 0x7f0200a1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER:I

    .line 551
    const v0, 0x7f0200a3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER_PRESS:I

    .line 552
    const v0, 0x7f0200a6

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH:I

    .line 553
    const v0, 0x7f0200a8

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH_PRESS:I

    .line 554
    const v0, 0x7f0200d1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS:I

    .line 555
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS_PRESS:I

    .line 556
    const v0, 0x7f0200d3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER:I

    .line 557
    const v0, 0x7f0200d5

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER_PRESS:I

    .line 558
    const v0, 0x7f0200da

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH:I

    .line 559
    const v0, 0x7f0200dc

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH_PRESS:I

    .line 560
    const v0, 0x7f0200d1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS:I

    .line 561
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS_PRESS:I

    .line 566
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsCandShown:Z

    .line 592
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    .line 620
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    .line 4811
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 4833
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 5034
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 5035
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 638
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initVariables()V

    move-object v0, p1

    .line 640
    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 641
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    .line 642
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    .line 644
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 645
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSipMgr()Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 648
    const/high16 v0, 0x7f0e

    sget-object v1, Lcom/sec/android/inputmethod/axt9/R$styleable;->AxT9KeyboardView:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 655
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 658
    :goto_2c6
    if-ge v1, v4, :cond_330

    .line 659
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 662
    packed-switch v5, :pswitch_data_440

    .line 658
    :goto_2cf
    :pswitch_2cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c6

    .line 665
    :pswitch_2d2
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2cf

    .line 669
    :pswitch_2d9
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2cf

    .line 673
    :pswitch_2e0
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mVerticalCorrection:I

    goto :goto_2cf

    .line 677
    :pswitch_2e9
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_2cf

    .line 682
    :pswitch_2ee
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewOffset:I

    goto :goto_2cf

    .line 686
    :pswitch_2f5
    const/16 v6, 0x50

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewHeight:I

    goto :goto_2cf

    .line 690
    :pswitch_2fe
    const/16 v6, 0x12

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextSize:I

    goto :goto_2cf

    .line 694
    :pswitch_307
    const/high16 v6, -0x100

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextColor:I

    goto :goto_2cf

    .line 698
    :pswitch_310
    const/16 v6, 0xe

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLabelTextSize:I

    goto :goto_2cf

    .line 702
    :pswitch_319
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLayout:I

    goto :goto_2cf

    .line 706
    :pswitch_320
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    goto :goto_2cf

    .line 710
    :pswitch_327
    const/high16 v6, 0x3f80

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    goto :goto_2cf

    .line 714
    :cond_330
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_33b

    .line 715
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    :cond_33b
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBackgroundDimAmount:F

    .line 731
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 734
    if-eqz v0, :cond_43c

    .line 735
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    .line 737
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    .line 738
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    .line 739
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    .line 740
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    .line 741
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPaddingBottom:Landroid/widget/TextView;

    .line 743
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 744
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    :goto_3b0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 765
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 766
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 771
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_3d3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_3d3

    .line 772
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initActionPopup()V

    .line 776
    :cond_3d3
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 779
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 782
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 788
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 790
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 792
    const/high16 v0, 0x43fa

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I

    .line 793
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z

    .line 794
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 795
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initGestureDetector()V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->button_press:Landroid/graphics/drawable/Drawable;

    .line 797
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I

    .line 798
    return-void

    .line 760
    :cond_43c
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    goto/16 :goto_3b0

    .line 662
    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_2d2
        :pswitch_2d9
        :pswitch_2cf
        :pswitch_2fe
        :pswitch_310
        :pswitch_307
        :pswitch_2e9
        :pswitch_2ee
        :pswitch_2f5
        :pswitch_2e0
        :pswitch_319
        :pswitch_320
        :pswitch_327
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTextSizeFromTheme(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getNextInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPrevInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v0

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "label"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x3

    const/16 v4, 0x3c2

    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 1277
    if-eqz p1, :cond_ea

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_ea

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_ea

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, v6, :cond_ea

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ea

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 1282
    const-string v2, "eng"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1283
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    if-ne v2, v3, :cond_47

    .line 1284
    const-string p1, "ABC"

    .line 1348
    :cond_43
    :goto_43
    if-nez p1, :cond_1d1

    .line 1349
    const/4 v1, 0x0

    .line 1355
    :goto_46
    return-object v1

    .line 1285
    :cond_47
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    if-ne v2, v3, :cond_54

    .line 1286
    const-string p1, "Abc"

    goto :goto_43

    .line 1288
    :cond_54
    const-string p1, "abc"

    goto :goto_43

    .line 1290
    :cond_57
    const-string v2, "abc"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "Abc"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "ABC"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1292
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1294
    :cond_7f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_a7

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "tr"

    const-string v5, "TR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1305
    :goto_98
    const-string v2, "SS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1307
    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    .line 1296
    :cond_a7
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v2, v7, :cond_cf

    .line 1297
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b5

    move-object v1, p1

    goto :goto_46

    .line 1298
    :cond_b5
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x131

    if-ne v2, v3, :cond_c4

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 1299
    :cond_c4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_98

    .line 1301
    :cond_cf
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x131

    if-ne v2, v3, :cond_df

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_46

    .line 1302
    :cond_df
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_98

    .line 1312
    :cond_ea
    if-eqz p1, :cond_43

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v2

    if-nez v2, :cond_fc

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_fc
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_43

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, v6, :cond_43

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1317
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_17b

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-eqz v2, :cond_17b

    .line 1319
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1320
    .local v0, code:I
    sparse-switch v0, :sswitch_data_200

    .line 1328
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1321
    :sswitch_143
    const/16 v2, 0x3143

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1322
    :sswitch_14b
    const/16 v2, 0x3149

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1323
    :sswitch_153
    const/16 v2, 0x3138

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1324
    :sswitch_15b
    const/16 v2, 0x3132

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1325
    :sswitch_163
    const/16 v2, 0x3146

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1326
    :sswitch_16b
    const/16 v2, 0x3152

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1327
    :sswitch_173
    const/16 v2, 0x3156

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1331
    .end local v0           #code:I
    :cond_17b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_196

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "tr"

    const-string v5, "TR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1333
    :cond_196
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v2, v7, :cond_1c5

    .line 1334
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1a5

    move-object v1, p1

    goto/16 :goto_46

    .line 1336
    :cond_1a5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_1b9

    .line 1337
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1b9

    .line 1338
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1342
    :cond_1b9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1344
    :cond_1c5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_43

    .line 1350
    :cond_1d1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 1351
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object p1

    :cond_1e1
    :goto_1e1
    move-object v1, p1

    .line 1355
    goto/16 :goto_46

    .line 1352
    :cond_1e4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 1353
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v2

    array-length v2, v2

    if-lt v2, v6, :cond_1fa

    const/4 v1, 0x1

    :cond_1fa
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e1

    .line 1320
    nop

    :sswitch_data_200
    .sparse-switch
        0x3131 -> :sswitch_15b
        0x3137 -> :sswitch_153
        0x3142 -> :sswitch_143
        0x3145 -> :sswitch_163
        0x3148 -> :sswitch_14b
        0x3150 -> :sswitch_16b
        0x3154 -> :sswitch_173
    .end sparse-switch
.end method

.method private changeCodeToUpperCase(I)I
    .registers 5
    .parameter "code"

    .prologue
    .line 4794
    add-int/lit8 v0, p1, -0x20

    .line 4796
    .local v0, upperCode:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_18

    .line 4797
    const/16 v1, 0x131

    if-ne p1, v1, :cond_11

    .line 4798
    const/16 v0, 0x49

    .line 4808
    :cond_10
    :goto_10
    return v0

    .line 4799
    :cond_11
    const/16 v1, 0x69

    if-ne p1, v1, :cond_10

    .line 4800
    const/16 v0, 0x130

    goto :goto_10

    .line 4802
    :cond_18
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x22

    if-ne v1, v2, :cond_10

    .line 4803
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_10

    .line 4804
    const/16 v0, 0x42f

    goto :goto_10
.end method

.method private compareIntArray([I[I)Z
    .registers 7
    .parameter "arrayA"
    .parameter "arrayB"

    .prologue
    const/4 v1, 0x0

    .line 5883
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 5895
    :cond_5
    :goto_5
    return v1

    .line 5887
    :cond_6
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_5

    .line 5888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 5889
    aget v2, p1, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_5

    .line 5888
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5893
    :cond_17
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .registers 9
    .parameter "keyboard"

    .prologue
    .line 1425
    if-nez p1, :cond_3

    .line 1439
    :cond_2
    :goto_2
    return-void

    .line 1426
    :cond_3
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1427
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    if-eqz v3, :cond_2

    .line 1428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1429
    .local v4, length:I
    const/4 v0, 0x0

    .line 1430
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v4, :cond_23

    .line 1431
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 1432
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1434
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_23
    if-ltz v0, :cond_2

    if-eqz v4, :cond_2

    .line 1437
    mul-int/lit8 v5, v4, 0x2

    div-int v5, v0, v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    .line 1438
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    goto :goto_2
.end method

.method private drawArrowTextBox(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 14
    .parameter "keyCanvas"
    .parameter "currentKey"

    .prologue
    const/16 v10, -0x68

    const/16 v9, -0x69

    const/high16 v8, 0x4000

    const v7, 0x3ef0a3d7

    const/4 v6, 0x0

    .line 3425
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 3426
    .local v1, paint:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3427
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3429
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3431
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    iget-boolean v3, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3432
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3434
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object v0

    .line 3436
    .local v0, currentPageLabel:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_80

    .line 3437
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3438
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v10, :cond_4b

    .line 3490
    :cond_49
    :goto_49
    const/4 v1, 0x0

    .line 3491
    return-void

    .line 3443
    :cond_4b
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_49

    .line 3444
    iget-boolean v2, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_5a

    .line 3445
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3447
    :cond_5a
    iget-boolean v2, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_7b

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_60
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3449
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_49

    .line 3447
    :cond_7b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    goto :goto_60

    .line 3455
    :cond_80
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ca

    .line 3456
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3457
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-eq v2, v10, :cond_49

    .line 3464
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_49

    .line 3466
    iget-boolean v2, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_a4

    .line 3467
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3469
    :cond_a4
    iget-boolean v2, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_c5

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_aa
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3470
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_49

    .line 3469
    :cond_c5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    goto :goto_aa

    .line 3476
    :cond_ca
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3477
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v10, :cond_f4

    .line 3478
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3479
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_49

    .line 3482
    :cond_f4
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_49

    .line 3483
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3484
    const/4 v2, 0x0

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_49
.end method

.method private drawExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 11
    .parameter "canvas"
    .parameter "paint"
    .parameter "label"
    .parameter "currentKey"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x4080

    const/high16 v4, 0x4000

    .line 3209
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3211
    .local v0, inputMethod:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3212
    iget-boolean v1, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_4e

    .line 3213
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3217
    :goto_1a
    if-nez v0, :cond_54

    .line 3218
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p3, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3248
    :cond_4d
    :goto_4d
    return-void

    .line 3215
    :cond_4e
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEYPAD_SMALL_NUMBER_COLOR:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1a

    .line 3223
    :cond_54
    if-ne v0, v2, :cond_8d

    .line 3224
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p3, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4d

    .line 3228
    :cond_8d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_106

    .line 3229
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v2, :cond_d3

    .line 3230
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4d

    .line 3235
    :cond_d3
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p3, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4d

    .line 3241
    :cond_106
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v2, :cond_4d

    .line 3242
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4d
.end method

.method private drawPhoneModeExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x3e4ccccd

    const/high16 v6, 0x4000

    .line 3150
    const/4 v0, 0x0

    .line 3151
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 3152
    const-string v2, "*"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 3153
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3154
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_SYMBOLSTAR_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3155
    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, p3, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3167
    :goto_46
    const-string v2, "2"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 3168
    const-string v0, "ABC"

    .line 3186
    :cond_50
    :goto_50
    if-eqz v0, :cond_a2

    .line 3187
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3188
    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v2, :cond_60

    .line 3189
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_PHONENUMBER_STRING_COLOR:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3191
    :cond_60
    const-string v2, "+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 3192
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_LABEL_SIZE:I

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3193
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p3, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0xf

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3205
    :cond_a2
    :goto_a2
    return-void

    .line 3160
    :cond_a3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3161
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_LABEL_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3162
    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, p3, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_46

    .line 3169
    :cond_db
    const-string v2, "3"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 3170
    const-string v0, "DEF"

    goto/16 :goto_50

    .line 3171
    :cond_e7
    const-string v2, "4"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 3172
    const-string v0, "GHI"

    goto/16 :goto_50

    .line 3173
    :cond_f3
    const-string v2, "5"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 3174
    const-string v0, "JKL"

    goto/16 :goto_50

    .line 3175
    :cond_ff
    const-string v2, "6"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 3176
    const-string v0, "MNO"

    goto/16 :goto_50

    .line 3177
    :cond_10b
    const-string v2, "7"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 3178
    const-string v0, "PQRS"

    goto/16 :goto_50

    .line 3179
    :cond_117
    const-string v2, "8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 3180
    const-string v0, "TUV"

    goto/16 :goto_50

    .line 3181
    :cond_123
    const-string v2, "9"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 3182
    const-string v0, "WXYZ"

    goto/16 :goto_50

    .line 3183
    :cond_12f
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3184
    const-string v0, "+"

    goto/16 :goto_50

    .line 3198
    :cond_13b
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_LABEL_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3199
    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a2
.end method

.method private getCurrentDisableKeyLabelColor()I
    .registers 4

    .prologue
    .line 3126
    const/4 v1, 0x0

    .line 3129
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3132
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 3133
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_11

    .line 3134
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 3143
    :goto_10
    return v1

    .line 3136
    :cond_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_10

    .line 3138
    :cond_14
    if-nez v0, :cond_19

    .line 3139
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_10

    .line 3141
    :cond_19
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_10
.end method

.method private getCurrentEmoticonKeyLabelSize()I
    .registers 4

    .prologue
    .line 3018
    const/4 v1, 0x0

    .line 3021
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3023
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_15

    .line 3024
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-eqz v2, :cond_12

    .line 3025
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 3040
    :goto_11
    return v1

    .line 3027
    :cond_12
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    goto :goto_11

    .line 3029
    :cond_15
    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    .line 3030
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_1f

    .line 3031
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_11

    .line 3033
    :cond_1f
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_11

    .line 3035
    :cond_22
    if-nez v0, :cond_27

    .line 3036
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_11

    .line 3038
    :cond_27
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_11
.end method

.method private getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1599
    .line 1601
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1602
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 1603
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1f

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1710
    :goto_1e
    return-object v0

    .line 1606
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1608
    :cond_2a
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_6a

    .line 1609
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_50

    .line 1610
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_45

    .line 1611
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1613
    :cond_45
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1616
    :cond_50
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5f

    .line 1617
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1619
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1623
    :cond_6a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_8c

    .line 1624
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_81

    .line 1625
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1627
    :cond_81
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1630
    :cond_8c
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9b

    .line 1631
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 1633
    :cond_9b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1637
    :cond_a7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15a

    .line 1638
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_d6

    .line 1639
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c9

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1642
    :cond_c9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1644
    :cond_d6
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_11a

    .line 1645
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_fe

    .line 1646
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_f2

    .line 1647
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1649
    :cond_f2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1652
    :cond_fe
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_10e

    .line 1653
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1655
    :cond_10e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1659
    :cond_11a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_13e

    .line 1660
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_132

    .line 1661
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1663
    :cond_132
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1666
    :cond_13e
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_14e

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1669
    :cond_14e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1674
    :cond_15a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_180

    .line 1675
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_173

    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1678
    :cond_173
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1680
    :cond_180
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_1c4

    .line 1681
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_1a8

    .line 1682
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_19c

    .line 1683
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1685
    :cond_19c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1688
    :cond_1a8
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1b8

    .line 1689
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1691
    :cond_1b8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1695
    :cond_1c4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_1e8

    .line 1696
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1dc

    .line 1697
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1699
    :cond_1dc
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1702
    :cond_1e8
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1f8

    .line 1703
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 1705
    :cond_1f8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e
.end method

.method private getCurrentEnterLabel()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 1574
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v1

    .line 1575
    .local v1, action:I
    const/4 v0, 0x0

    .line 1576
    .local v0, ActionLabel:Ljava/lang/CharSequence;
    packed-switch v1, :pswitch_data_3e

    .line 1593
    :pswitch_a
    const-string v0, ""

    .line 1595
    :goto_c
    return-object v0

    .line 1578
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1579
    goto :goto_c

    .line 1581
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1582
    goto :goto_c

    .line 1584
    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1585
    goto :goto_c

    .line 1587
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1588
    goto :goto_c

    .line 1576
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_19
        :pswitch_a
        :pswitch_31
        :pswitch_25
        :pswitch_d
    .end packed-switch
.end method

.method private getCurrentEnterkeyLabelSize()I
    .registers 4

    .prologue
    .line 3044
    const/4 v1, 0x0

    .line 3046
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3047
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 3048
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_11

    .line 3049
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 3058
    :goto_10
    return v1

    .line 3051
    :cond_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    goto :goto_10

    .line 3053
    :cond_14
    if-nez v0, :cond_19

    .line 3054
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    goto :goto_10

    .line 3056
    :cond_19
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    goto :goto_10
.end method

.method private getCurrentExtraKeyLabelColor()I
    .registers 4

    .prologue
    .line 2882
    const/4 v1, 0x0

    .line 2885
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2888
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 2889
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_11

    .line 2890
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 2900
    :goto_10
    return v1

    .line 2892
    :cond_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_10

    .line 2895
    :cond_14
    if-nez v0, :cond_19

    .line 2896
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_10

    .line 2898
    :cond_19
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_10
.end method

.method private getCurrentExtraKeyLabelSize()I
    .registers 5

    .prologue
    .line 2904
    const/4 v1, 0x0

    .line 2907
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2910
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    .line 2911
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 2912
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 2924
    :goto_15
    return v1

    .line 2913
    :cond_16
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_1d

    .line 2914
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_15

    .line 2916
    :cond_1d
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_15

    .line 2919
    :cond_20
    if-nez v0, :cond_25

    .line 2920
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_15

    .line 2922
    :cond_25
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_15
.end method

.method private getCurrentFunctionKeyLabelColor()I
    .registers 4

    .prologue
    .line 3105
    const/4 v1, 0x0

    .line 3108
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3111
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 3112
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_11

    .line 3113
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 3122
    :goto_10
    return v1

    .line 3115
    :cond_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_10

    .line 3117
    :cond_14
    if-nez v0, :cond_19

    .line 3118
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_10

    .line 3120
    :cond_19
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_10
.end method

.method private getCurrentFunctionKeyLabelSize()I
    .registers 5

    .prologue
    .line 2990
    const/4 v1, 0x0

    .line 2991
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2993
    .local v0, inputMethod:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a

    .line 2994
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_17

    .line 2995
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 3014
    :goto_16
    return v1

    .line 2997
    :cond_17
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    goto :goto_16

    .line 2999
    :cond_1a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 3001
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_24

    .line 3002
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_16

    .line 3004
    :cond_24
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_16

    .line 3007
    :cond_27
    if-nez v0, :cond_2c

    .line 3009
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_16

    .line 3012
    :cond_2c
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_16
.end method

.method private getCurrentNormalKeyLabelColor()I
    .registers 4

    .prologue
    .line 3081
    const/4 v1, 0x0

    .line 3084
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3088
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_e

    .line 3089
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 3101
    :goto_d
    return v1

    .line 3090
    :cond_e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 3091
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_18

    .line 3092
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_d

    .line 3094
    :cond_18
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_d

    .line 3096
    :cond_1b
    if-nez v0, :cond_20

    .line 3097
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_d

    .line 3099
    :cond_20
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_d
.end method

.method private getCurrentNormalKeyLabelSize()I
    .registers 7

    .prologue
    const/16 v5, 0x61

    const/16 v4, 0x22

    const/16 v3, 0x19

    const/4 v2, 0x2

    .line 2928
    .line 2930
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    if-nez v0, :cond_12

    .line 2931
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 2986
    :goto_11
    return v0

    .line 2932
    :cond_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3e

    .line 2933
    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v0

    .line 2934
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2935
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_31

    .line 2936
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    goto :goto_11

    .line 2938
    :cond_31
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    goto :goto_11

    .line 2941
    :cond_34
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_3b

    .line 2942
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    goto :goto_11

    .line 2944
    :cond_3b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    goto :goto_11

    .line 2947
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_51

    .line 2948
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_4e

    .line 2949
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    goto :goto_11

    .line 2951
    :cond_4e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    goto :goto_11

    .line 2953
    :cond_51
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_b3

    .line 2954
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_8b

    .line 2955
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2956
    :cond_85
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_KEY_LABEL_SIZE_NORMAL:I

    goto :goto_11

    .line 2958
    :cond_88
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    goto :goto_11

    .line 2961
    :cond_8b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v3, :cond_a3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v5, :cond_a3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_a3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v4, :cond_af

    :cond_a3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2966
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11

    .line 2968
    :cond_af
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11

    .line 2971
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_ef

    .line 2972
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v3, :cond_d3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v5, :cond_d3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_d3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v4, :cond_df

    :cond_d3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 2977
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11

    .line 2978
    :cond_df
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v2, :cond_eb

    .line 2979
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11

    .line 2981
    :cond_eb
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11

    .line 2984
    :cond_ef
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_11
.end method

.method private getCurrentShadowColor(IZ)I
    .registers 4
    .parameter "primaryCode"
    .parameter "pressed"

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_7

    .line 2870
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 2877
    :goto_6
    return v0

    .line 2871
    :cond_7
    if-eqz p2, :cond_c

    .line 2872
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    goto :goto_6

    .line 2874
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2875
    :cond_18
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    goto :goto_6

    .line 2877
    :cond_1b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    goto :goto_6
.end method

.method private getCurrnetPageLabel()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x2f

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    .local v1, pageLabel:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1361
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 1363
    .local v0, inputMethod:I
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-ne v4, v6, :cond_48

    .line 1364
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    if-ne v4, v6, :cond_2e

    .line 1365
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1367
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1397
    :goto_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1369
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v4

    if-eqz v4, :cond_46

    :goto_42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_46
    move v2, v3

    goto :goto_42

    .line 1374
    :cond_48
    if-ne v0, v3, :cond_64

    .line 1375
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1377
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v4

    if-eqz v4, :cond_62

    :goto_5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_62
    move v2, v3

    goto :goto_5e

    .line 1378
    :cond_64
    if-nez v0, :cond_9a

    .line 1379
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    if-ne v4, v2, :cond_7e

    .line 1380
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1384
    :cond_7e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1386
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v2

    if-eqz v2, :cond_98

    const/16 v2, 0x8

    :goto_94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_98
    const/4 v2, 0x5

    goto :goto_94

    .line 1388
    :cond_9a
    if-ne v0, v6, :cond_ad

    .line 1389
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1390
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    .line 1394
    :cond_ad
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_29
.end method

.method private getDistanceSquare(IIIIII)I
    .registers 11
    .parameter "keyLeft"
    .parameter "keyTop"
    .parameter "keyRight"
    .parameter "keyBottom"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5002
    const/4 v0, 0x0

    .line 5003
    .local v0, distanceSquare:I
    if-le p2, p6, :cond_2a

    .line 5004
    if-le p1, p5, :cond_12

    .line 5005
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int/2addr v1, v2

    sub-int v2, p1, p5

    sub-int v3, p1, p5

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 5028
    :goto_11
    return v0

    .line 5006
    :cond_12
    if-gt p1, p5, :cond_1d

    if-lt p3, p5, :cond_1d

    .line 5007
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int v0, v1, v2

    goto :goto_11

    .line 5009
    :cond_1d
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int/2addr v1, v2

    sub-int v2, p5, p3

    sub-int v3, p5, p3

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_11

    .line 5011
    :cond_2a
    if-gt p2, p6, :cond_44

    if-lt p4, p6, :cond_44

    .line 5012
    if-le p1, p5, :cond_37

    .line 5013
    sub-int v1, p1, p5

    sub-int v2, p1, p5

    mul-int v0, v1, v2

    goto :goto_11

    .line 5014
    :cond_37
    if-gt p1, p5, :cond_3d

    if-lt p3, p5, :cond_3d

    .line 5015
    const/4 v0, 0x0

    goto :goto_11

    .line 5017
    :cond_3d
    sub-int v1, p5, p3

    sub-int v2, p5, p3

    mul-int v0, v1, v2

    goto :goto_11

    .line 5020
    :cond_44
    if-le p1, p5, :cond_53

    .line 5021
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int/2addr v1, v2

    sub-int v2, p1, p5

    sub-int v3, p1, p5

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_11

    .line 5022
    :cond_53
    if-gt p1, p5, :cond_5e

    if-lt p3, p5, :cond_5e

    .line 5023
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int v0, v1, v2

    goto :goto_11

    .line 5025
    :cond_5e
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int/2addr v1, v2

    sub-int v2, p5, p3

    sub-int v3, p5, p3

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_11
.end method

.method private getDomainKbdId()I
    .registers 3

    .prologue
    .line 4972
    .line 4973
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 4974
    const v0, 0x7f050023

    .line 4978
    :goto_c
    return v0

    .line 4976
    :cond_d
    const v0, 0x7f050022

    goto :goto_c
.end method

.method private getExtraKeyLable(I)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1448
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 1533
    :cond_12
    :goto_12
    return-object v0

    .line 1452
    :cond_13
    const-string v1, ""

    .line 1453
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    .line 1470
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_5b

    .line 1471
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-ne v2, v3, :cond_12

    .line 1472
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v2, v2, 0xf

    .line 1473
    if-ne v1, v4, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x3

    if-eq v2, v1, :cond_12

    if-eq v2, v4, :cond_12

    .line 1479
    if-ge p1, v5, :cond_12

    .line 1482
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_12

    .line 1486
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 1488
    if-eqz v1, :cond_59

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    :cond_59
    move-object v0, v1

    .line 1491
    goto :goto_12

    .line 1498
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-ne v2, v3, :cond_12

    .line 1499
    if-nez v1, :cond_7b

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v2, :cond_7b

    .line 1500
    const/16 v1, 0x11

    if-ge p1, v1, :cond_12

    .line 1504
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 1505
    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 1508
    goto :goto_12

    .line 1510
    :cond_7b
    if-ne v1, v3, :cond_81

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_12

    .line 1512
    :cond_81
    if-ne v1, v4, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1516
    if-ge p1, v5, :cond_12

    .line 1520
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 1521
    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 1524
    goto/16 :goto_12
.end method

.method private getFlagDrawPending()Z
    .registers 2

    .prologue
    .line 5746
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDrawPending:Z

    return v0
.end method

.method private getInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 7
    .parameter "paint"
    .parameter "isPreview"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x2

    .line 8641
    const/4 v0, 0x0

    .line 8642
    .local v0, language:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-ne v1, v2, :cond_34

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-nez v1, :cond_34

    .line 8644
    if-eqz p2, :cond_25

    .line 8645
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8669
    :cond_24
    :goto_24
    return-object v0

    .line 8647
    :cond_25
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 8650
    :cond_34
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-eq v1, v2, :cond_6a

    .line 8651
    if-eqz p2, :cond_4d

    .line 8652
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 8654
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8655
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v1

    if-ne v1, v3, :cond_24

    .line 8656
    const-string v1, "en"

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 8660
    :cond_6a
    if-eqz p2, :cond_7b

    .line 8661
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 8663
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8664
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v1

    if-ne v1, v3, :cond_24

    .line 8665
    const-string v1, "en"

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private getKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 5948
    const/4 v7, 0x0

    .line 5949
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v9, v0, 0xf

    .line 5951
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v0, :cond_18

    .line 5952
    :cond_16
    const/4 v7, 0x0

    .line 6975
    :cond_17
    :goto_17
    return-object v7

    .line 5955
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_21

    .line 5956
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    goto :goto_17

    .line 5965
    :cond_21
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_4ed

    .line 5966
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    sparse-switch v0, :sswitch_data_d32

    .line 6306
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v0, v0

    if-le v0, v1, :cond_428

    .line 6308
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_35
    move-object v7, v0

    .line 6373
    goto :goto_17

    .line 5968
    :sswitch_37
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_47

    .line 5969
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5971
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5975
    :sswitch_53
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_63

    .line 5976
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5978
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5982
    :sswitch_6f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_93

    .line 5983
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_87

    .line 5984
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5986
    :cond_87
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5989
    :cond_93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 5990
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_c0

    .line 5991
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b3

    .line 5992
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_35

    .line 5994
    :cond_b3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 5997
    :cond_c0
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_d1

    .line 5998
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6000
    :cond_d1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6004
    :cond_de
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 6005
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_f7

    .line 6006
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6008
    :cond_f7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6011
    :cond_104
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_115

    .line 6012
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6014
    :cond_115
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6021
    :sswitch_122
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_133

    .line 6022
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6024
    :cond_133
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 6025
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6026
    :cond_148
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 6027
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6029
    :cond_15d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6034
    :sswitch_16a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_196

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_196

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_196

    if-eq v9, v5, :cond_196

    if-eq v9, v6, :cond_196

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v5, :cond_196

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v6, :cond_1b4

    .line 6043
    :cond_196
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1a7

    .line 6044
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6046
    :cond_1a7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6049
    :cond_1b4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_1da

    .line 6050
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1cd

    .line 6051
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6053
    :cond_1cd
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6056
    :cond_1da
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1eb

    .line 6057
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6059
    :cond_1eb
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6065
    :sswitch_1f8
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_20f

    .line 6066
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6068
    :cond_20f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_220

    .line 6069
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6071
    :cond_220
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6076
    :sswitch_22d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_253

    .line 6077
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_246

    .line 6078
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6080
    :cond_246
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6083
    :cond_253
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_264

    .line 6084
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6086
    :cond_264
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6091
    :sswitch_271
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_282

    .line 6092
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6094
    :cond_282
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6098
    :sswitch_28f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2a0

    .line 6099
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6101
    :cond_2a0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6214
    :sswitch_2ad
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2be

    .line 6215
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6217
    :cond_2be
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6222
    :sswitch_2cb
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2dc

    .line 6223
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6225
    :cond_2dc
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6230
    :sswitch_2e9
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2fa

    .line 6231
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6233
    :cond_2fa
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6238
    :sswitch_307
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_318

    .line 6239
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6241
    :cond_318
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6246
    :sswitch_325
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_33c

    .line 6247
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6249
    :cond_33c
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_34d

    .line 6250
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6252
    :cond_34d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6258
    :sswitch_35a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_371

    .line 6259
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6261
    :cond_371
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_382

    .line 6262
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6264
    :cond_382
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6270
    :sswitch_38f
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_3a6

    .line 6271
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6273
    :cond_3a6
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_3b7

    .line 6274
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6276
    :cond_3b7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_3ca

    .line 6277
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6279
    :cond_3ca
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6286
    :sswitch_3d7
    const/16 v0, -0x12e

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_3fd

    .line 6287
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_3f0

    .line 6288
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6290
    :cond_3f0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6293
    :cond_3fd
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6298
    :sswitch_40a
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_41b

    .line 6299
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6301
    :cond_41b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6316
    :cond_428
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    .line 6323
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 6324
    if-nez v0, :cond_436

    move v0, v1

    .line 6329
    :cond_436
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_49f

    move v2, v3

    .line 6330
    :goto_43b
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v8

    if-eqz v8, :cond_45d

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v8

    if-eqz v8, :cond_453

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v8

    if-eqz v8, :cond_45d

    :cond_453
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v8

    if-eqz v8, :cond_45d

    or-int/lit8 v2, v2, 0x1

    .line 6334
    :cond_45d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v8

    if-eqz v8, :cond_46f

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v8

    if-eqz v8, :cond_46f

    or-int/lit8 v2, v2, 0x2

    .line 6335
    :cond_46f
    if-ne v9, v5, :cond_4a3

    .line 6336
    or-int/lit8 v2, v2, 0x8

    .line 6338
    if-ne v0, v5, :cond_4a1

    move v0, v5

    :goto_476
    move v6, v0

    move v0, v2

    move v2, v4

    .line 6358
    :goto_479
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v8, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v8, v4

    invoke-virtual {v3, v8, v2, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 6362
    if-eqz v0, :cond_d2f

    .line 6363
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v2

    if-eqz v2, :cond_4e1

    .line 6364
    iget-boolean v2, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_4d5

    .line 6365
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    :cond_49f
    move v2, v4

    .line 6329
    goto :goto_43b

    :cond_4a1
    move v0, v6

    .line 6338
    goto :goto_476

    .line 6339
    :cond_4a3
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v8

    const/4 v10, 0x6

    if-ne v8, v10, :cond_4af

    move v0, v2

    move v2, v4

    .line 6341
    goto :goto_479

    .line 6342
    :cond_4af
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v8

    const/4 v10, 0x5

    if-ne v8, v10, :cond_4bb

    move v0, v2

    move v2, v4

    .line 6344
    goto :goto_479

    .line 6345
    :cond_4bb
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v8

    if-ne v8, v1, :cond_4c6

    move v0, v2

    move v2, v4

    .line 6347
    goto :goto_479

    .line 6348
    :cond_4c6
    if-ne v9, v3, :cond_4cb

    move v0, v2

    move v2, v4

    .line 6350
    goto :goto_479

    .line 6351
    :cond_4cb
    if-ne v9, v6, :cond_4d0

    move v0, v2

    move v2, v4

    .line 6353
    goto :goto_479

    :cond_4d0
    move v11, v2

    move v2, v6

    move v6, v0

    move v0, v11

    .line 6355
    goto :goto_479

    .line 6367
    :cond_4d5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6370
    :cond_4e1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_35

    .line 6376
    :cond_4ed
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    sparse-switch v0, :sswitch_data_d7c

    .line 6907
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v0, v0

    if-le v0, v1, :cond_c6d

    .line 6909
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6378
    :sswitch_4ff
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_525

    .line 6379
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_518

    .line 6380
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6382
    :cond_518
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6385
    :cond_525
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_536

    .line 6386
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6388
    :cond_536
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6393
    :sswitch_543
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_554

    .line 6394
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6396
    :cond_554
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6400
    :sswitch_561
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_587

    .line 6401
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_57a

    .line 6402
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6404
    :cond_57a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6406
    :cond_587
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_61f

    .line 6407
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_5db

    .line 6408
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_5bd

    .line 6409
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5b0

    .line 6410
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6412
    :cond_5b0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6415
    :cond_5bd
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5ce

    .line 6416
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6418
    :cond_5ce
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6422
    :cond_5db
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_601

    .line 6423
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5f4

    .line 6424
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6426
    :cond_5f4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6429
    :cond_601
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_612

    .line 6430
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6432
    :cond_612
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6436
    :cond_61f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_691

    .line 6437
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_64d

    .line 6438
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_640

    .line 6439
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6441
    :cond_640
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6444
    :cond_64d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_673

    .line 6445
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_666

    .line 6446
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6448
    :cond_666
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6451
    :cond_673
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_684

    .line 6452
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6454
    :cond_684
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6460
    :cond_691
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_6b7

    .line 6461
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6aa

    .line 6462
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6464
    :cond_6aa
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6467
    :cond_6b7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_6dd

    .line 6468
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6d0

    .line 6469
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6471
    :cond_6d0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6474
    :cond_6dd
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6ee

    .line 6475
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6477
    :cond_6ee
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6484
    :sswitch_6fb
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    packed-switch v0, :pswitch_data_dca

    goto/16 :goto_17

    .line 6486
    :pswitch_706
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_717

    .line 6487
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6489
    :cond_717
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v0

    if-le v0, v1, :cond_72c

    .line 6490
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6492
    :cond_72c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6503
    :sswitch_739
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    packed-switch v0, :pswitch_data_dd0

    :pswitch_742
    goto/16 :goto_17

    .line 6518
    :pswitch_744
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_79d

    .line 6519
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6505
    :pswitch_755
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_766

    .line 6506
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6508
    :cond_766
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_77b

    .line 6509
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6510
    :cond_77b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_790

    .line 6511
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6513
    :cond_790
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6521
    :cond_79d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_7b2

    .line 6522
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6523
    :cond_7b2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_7c7

    .line 6524
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6526
    :cond_7c7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6537
    :sswitch_7d4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    packed-switch v0, :pswitch_data_dda

    :pswitch_7dd
    goto/16 :goto_17

    .line 6570
    :pswitch_7df
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_803

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_803

    if-eq v9, v5, :cond_803

    if-eq v9, v6, :cond_803

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v5, :cond_803

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v6, :cond_8af

    .line 6577
    :cond_803
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8a2

    .line 6578
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6539
    :pswitch_814
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_840

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_840

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_840

    if-eq v9, v5, :cond_840

    if-eq v9, v6, :cond_840

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v5, :cond_840

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v6, :cond_85e

    .line 6548
    :cond_840
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_851

    .line 6549
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6551
    :cond_851
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6554
    :cond_85e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_884

    .line 6555
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_877

    .line 6556
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6558
    :cond_877
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6561
    :cond_884
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_895

    .line 6562
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6564
    :cond_895
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6580
    :cond_8a2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6583
    :cond_8af
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_8d5

    .line 6584
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8c8

    .line 6585
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6587
    :cond_8c8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6590
    :cond_8d5
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8e6

    .line 6591
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6593
    :cond_8e6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6604
    :sswitch_8f3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_930

    .line 6605
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_912

    .line 6606
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6608
    :cond_912
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_923

    .line 6609
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6611
    :cond_923
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6615
    :cond_930
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v0

    if-eqz v0, :cond_958

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_958

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_958

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_958

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_960

    :cond_958
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v3, :cond_995

    .line 6621
    :cond_960
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_977

    .line 6622
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6624
    :cond_977
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_988

    .line 6625
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6627
    :cond_988
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6631
    :cond_995
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_9ac

    .line 6632
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6634
    :cond_9ac
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9bd

    .line 6635
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6637
    :cond_9bd
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6644
    :sswitch_9ca
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_9f0

    .line 6645
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9e3

    .line 6646
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6648
    :cond_9e3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6650
    :cond_9f0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_a4c

    .line 6651
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a24

    .line 6652
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_a0a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v6, :cond_a17

    .line 6654
    :cond_a0a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6656
    :cond_a17
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6659
    :cond_a24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_a32

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v6, :cond_a3f

    .line 6661
    :cond_a32
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6663
    :cond_a3f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6667
    :cond_a4c
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a5d

    .line 6668
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6670
    :cond_a5d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6675
    :sswitch_a6a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_a90

    .line 6676
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a83

    .line 6677
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6679
    :cond_a83
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6682
    :cond_a90
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_aa1

    .line 6683
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6685
    :cond_aa1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6691
    :sswitch_aae
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v6, :cond_ad4

    .line 6692
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_ac7

    .line 6693
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6695
    :cond_ac7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6698
    :cond_ad4
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_ae5

    .line 6699
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6701
    :cond_ae5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6816
    :sswitch_af2
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b03

    .line 6817
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6819
    :cond_b03
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6824
    :sswitch_b10
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b21

    .line 6825
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6827
    :cond_b21
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6832
    :sswitch_b2e
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b3f

    .line 6833
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6835
    :cond_b3f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6840
    :sswitch_b4c
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b5d

    .line 6841
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6843
    :cond_b5d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6848
    :sswitch_b6a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_b81

    .line 6849
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6851
    :cond_b81
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b92

    .line 6852
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6854
    :cond_b92
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6860
    :sswitch_b9f
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_bb6

    .line 6861
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6863
    :cond_bb6
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_bc7

    .line 6864
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6866
    :cond_bc7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6872
    :sswitch_bd4
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_beb

    .line 6873
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6875
    :cond_beb
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_bfc

    .line 6876
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6878
    :cond_bfc
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_c0f

    .line 6879
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6881
    :cond_c0f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6888
    :sswitch_c1c
    const/16 v0, -0x12e

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_c42

    .line 6889
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c35

    .line 6890
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6892
    :cond_c35
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6895
    :cond_c42
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6900
    :sswitch_c4f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c60

    .line 6901
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6903
    :cond_c60
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6917
    :cond_c6d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v8

    .line 6924
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 6925
    if-nez v0, :cond_c7c

    move v0, v1

    .line 6930
    :cond_c7c
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_ce4

    move v2, v3

    .line 6931
    :goto_c81
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v10

    if-eqz v10, :cond_ca3

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_c99

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v10

    if-eqz v10, :cond_ca3

    :cond_c99
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v10

    if-eqz v10, :cond_ca3

    or-int/lit8 v2, v2, 0x1

    .line 6935
    :cond_ca3
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_cb5

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v10}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v10

    if-eqz v10, :cond_cb5

    or-int/lit8 v2, v2, 0x2

    .line 6936
    :cond_cb5
    if-ne v9, v5, :cond_ce6

    .line 6937
    or-int/lit8 v2, v2, 0x8

    .line 6939
    if-ne v0, v5, :cond_cbc

    move v6, v5

    :cond_cbc
    move v0, v2

    move v2, v4

    .line 6957
    :goto_cbe
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v8, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v8, v4

    invoke-virtual {v3, v8, v2, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 6961
    if-eqz v0, :cond_17

    .line 6962
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v2

    if-eqz v2, :cond_d1f

    .line 6963
    iget-boolean v2, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_d13

    .line 6964
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    :cond_ce4
    move v2, v4

    .line 6930
    goto :goto_c81

    .line 6940
    :cond_ce6
    if-ne v9, v3, :cond_ceb

    move v0, v2

    move v2, v4

    .line 6942
    goto :goto_cbe

    .line 6943
    :cond_ceb
    if-ne v9, v6, :cond_cf0

    move v0, v2

    move v2, v4

    .line 6945
    goto :goto_cbe

    .line 6946
    :cond_cf0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v9, 0x6

    if-ne v3, v9, :cond_cfc

    move v0, v2

    move v2, v4

    .line 6948
    goto :goto_cbe

    .line 6949
    :cond_cfc
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v9, 0x5

    if-ne v3, v9, :cond_d08

    move v0, v2

    move v2, v4

    .line 6951
    goto :goto_cbe

    .line 6952
    :cond_d08
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    if-ne v3, v1, :cond_d2b

    move v0, v2

    move v2, v4

    .line 6954
    goto :goto_cbe

    .line 6966
    :cond_d13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    .line 6969
    :cond_d1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_17

    :cond_d2b
    move v6, v0

    move v0, v2

    move v2, v8

    goto :goto_cbe

    :cond_d2f
    move-object v0, v7

    goto/16 :goto_35

    .line 5966
    :sswitch_data_d32
    .sparse-switch
        -0x136 -> :sswitch_37
        -0x134 -> :sswitch_307
        -0x133 -> :sswitch_2e9
        -0x132 -> :sswitch_2cb
        -0x131 -> :sswitch_2ad
        -0x130 -> :sswitch_38f
        -0x12f -> :sswitch_40a
        -0x12e -> :sswitch_3d7
        -0x12d -> :sswitch_35a
        -0x12c -> :sswitch_325
        -0x72 -> :sswitch_16a
        -0x71 -> :sswitch_53
        -0x69 -> :sswitch_28f
        -0x68 -> :sswitch_271
        -0x67 -> :sswitch_1f8
        -0x5 -> :sswitch_22d
        -0x1 -> :sswitch_122
        0x20 -> :sswitch_6f
    .end sparse-switch

    .line 6376
    :sswitch_data_d7c
    .sparse-switch
        -0x136 -> :sswitch_4ff
        -0x134 -> :sswitch_b4c
        -0x133 -> :sswitch_b2e
        -0x132 -> :sswitch_b10
        -0x131 -> :sswitch_af2
        -0x130 -> :sswitch_bd4
        -0x12f -> :sswitch_c4f
        -0x12e -> :sswitch_c1c
        -0x12d -> :sswitch_b9f
        -0x12c -> :sswitch_b6a
        -0x72 -> :sswitch_7d4
        -0x71 -> :sswitch_543
        -0x6a -> :sswitch_6fb
        -0x69 -> :sswitch_aae
        -0x68 -> :sswitch_a6a
        -0x67 -> :sswitch_8f3
        -0x5 -> :sswitch_9ca
        -0x1 -> :sswitch_739
        0x20 -> :sswitch_561
    .end sparse-switch

    .line 6484
    :pswitch_data_dca
    .packed-switch 0x0
        :pswitch_706
    .end packed-switch

    .line 6503
    :pswitch_data_dd0
    .packed-switch 0x0
        :pswitch_744
        :pswitch_742
        :pswitch_755
    .end packed-switch

    .line 6537
    :pswitch_data_dda
    .packed-switch 0x0
        :pswitch_7df
        :pswitch_7dd
        :pswitch_814
    .end packed-switch
.end method

.method private getKeyPreviewIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 6979
    .line 6980
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v8

    .line 6982
    if-eqz p1, :cond_11

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v0, :cond_12

    .line 7193
    :cond_11
    :goto_11
    :pswitch_11
    return-object v5

    .line 6986
    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_11

    .line 6988
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_195

    .line 6989
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_304

    .line 7057
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    .line 7059
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 7060
    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 7063
    :cond_2f
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v6, :cond_16d

    .line 7064
    :goto_33
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v6

    if-eqz v6, :cond_55

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_4b

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v6

    if-eqz v6, :cond_55

    :cond_4b
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v6

    if-eqz v6, :cond_55

    or-int/lit8 v1, v1, 0x1

    .line 7068
    :cond_55
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v6

    if-eqz v6, :cond_67

    or-int/lit8 v1, v1, 0x2

    .line 7069
    :cond_67
    if-ne v8, v3, :cond_173

    .line 7070
    or-int/lit8 v1, v1, 0x8

    .line 7072
    if-ne v0, v3, :cond_170

    move v0, v3

    :goto_6e
    move v3, v2

    move v10, v0

    move v0, v1

    move v1, v10

    .line 7083
    :goto_72
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v7, v2

    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 7087
    if-eqz v0, :cond_301

    .line 7088
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_88
    move-object v5, v0

    .line 7090
    goto :goto_11

    .line 6991
    :sswitch_8a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    .line 6994
    :sswitch_96
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-eqz v0, :cond_9e

    move-object v0, v5

    goto :goto_88

    .line 6997
    :cond_9e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32e

    .line 7001
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    .line 7004
    :pswitch_b3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    :pswitch_bf
    move-object v0, v5

    .line 7010
    goto :goto_88

    .line 7015
    :sswitch_c1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_f1

    .line 7016
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 7017
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    .line 7019
    :cond_e5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    .line 7022
    :cond_f1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 7023
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_88

    .line 7025
    :cond_105
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7030
    :sswitch_112
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7033
    :sswitch_11f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7036
    :sswitch_12c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7040
    :sswitch_139
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7044
    :sswitch_146
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7048
    :sswitch_153
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    .line 7052
    :sswitch_160
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_88

    :cond_16d
    move v1, v2

    .line 7063
    goto/16 :goto_33

    :cond_170
    move v0, v4

    .line 7072
    goto/16 :goto_6e

    .line 7073
    :cond_173
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_181

    move v0, v1

    move v3, v2

    move v1, v4

    .line 7075
    goto/16 :goto_72

    .line 7076
    :cond_181
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_18f

    move v0, v1

    move v3, v2

    move v1, v4

    .line 7078
    goto/16 :goto_72

    :cond_18f
    move v3, v4

    move v10, v0

    move v0, v1

    move v1, v10

    .line 7080
    goto/16 :goto_72

    .line 7093
    :cond_195
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_33c

    .line 7155
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v7

    .line 7156
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 7157
    if-nez v0, :cond_1ab

    const/4 v0, 0x1

    .line 7160
    :cond_1ab
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v6, :cond_2cc

    move v6, v1

    .line 7161
    :goto_1b0
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v9

    if-eqz v9, :cond_1d2

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v9

    if-eqz v9, :cond_1c8

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v9

    if-eqz v9, :cond_1d2

    :cond_1c8
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v9

    if-eqz v9, :cond_1d2

    or-int/lit8 v6, v6, 0x1

    .line 7165
    :cond_1d2
    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v9

    if-eqz v9, :cond_1e4

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v9

    if-eqz v9, :cond_1e4

    or-int/lit8 v6, v6, 0x2

    .line 7166
    :cond_1e4
    if-ne v8, v3, :cond_2d2

    .line 7167
    or-int/lit8 v1, v6, 0x8

    .line 7169
    if-ne v0, v3, :cond_2cf

    :goto_1ea
    move v0, v1

    move v1, v2

    .line 7183
    :goto_1ec
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v7, v2

    invoke-virtual {v6, v2, v1, v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 7187
    if-eqz v0, :cond_11

    .line 7188
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7095
    :sswitch_204
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7098
    :sswitch_211
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7101
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_366

    .line 7105
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7108
    :pswitch_22d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7119
    :sswitch_23a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_24f

    .line 7120
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7122
    :cond_24f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_264

    .line 7123
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7125
    :cond_264
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7130
    :sswitch_271
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7133
    :sswitch_27e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7136
    :sswitch_28b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7139
    :sswitch_298
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7143
    :sswitch_2a5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7147
    :sswitch_2b2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    .line 7151
    :sswitch_2bf
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_11

    :cond_2cc
    move v6, v2

    .line 7160
    goto/16 :goto_1b0

    :cond_2cf
    move v3, v4

    .line 7169
    goto/16 :goto_1ea

    .line 7170
    :cond_2d2
    if-ne v8, v1, :cond_2d9

    move v3, v0

    move v1, v2

    move v0, v6

    .line 7171
    goto/16 :goto_1ec

    .line 7172
    :cond_2d9
    if-ne v8, v4, :cond_2e0

    move v0, v6

    move v3, v4

    move v1, v2

    .line 7174
    goto/16 :goto_1ec

    .line 7175
    :cond_2e0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2ee

    move v0, v6

    move v3, v4

    move v1, v2

    .line 7177
    goto/16 :goto_1ec

    .line 7178
    :cond_2ee
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2fc

    move v0, v6

    move v3, v4

    move v1, v2

    .line 7180
    goto/16 :goto_1ec

    :cond_2fc
    move v3, v0

    move v1, v7

    move v0, v6

    goto/16 :goto_1ec

    :cond_301
    move-object v0, v5

    goto/16 :goto_88

    .line 6989
    :sswitch_data_304
    .sparse-switch
        -0x136 -> :sswitch_8a
        -0x134 -> :sswitch_160
        -0x133 -> :sswitch_153
        -0x132 -> :sswitch_146
        -0x131 -> :sswitch_139
        -0x67 -> :sswitch_11f
        -0x5 -> :sswitch_12c
        -0x1 -> :sswitch_112
        0xa -> :sswitch_96
        0x20 -> :sswitch_c1
    .end sparse-switch

    .line 6997
    :pswitch_data_32e
    .packed-switch 0x2
        :pswitch_bf
        :pswitch_b3
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
    .end packed-switch

    .line 7093
    :sswitch_data_33c
    .sparse-switch
        -0x136 -> :sswitch_204
        -0x134 -> :sswitch_2bf
        -0x133 -> :sswitch_2b2
        -0x132 -> :sswitch_2a5
        -0x131 -> :sswitch_298
        -0x67 -> :sswitch_27e
        -0x5 -> :sswitch_28b
        -0x1 -> :sswitch_271
        0xa -> :sswitch_211
        0x20 -> :sswitch_23a
    .end sparse-switch

    .line 7101
    :pswitch_data_366
    .packed-switch 0x2
        :pswitch_11
        :pswitch_22d
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private getKeypadBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v1, :cond_8

    .line 1003
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 1028
    :goto_7
    return-object v0

    .line 1005
    :cond_8
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 1023
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 1008
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 1009
    goto :goto_7

    .line 1011
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 1012
    goto :goto_7

    .line 1014
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 1015
    goto :goto_7

    .line 1017
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 1018
    goto :goto_7

    .line 1005
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_14
        :pswitch_1a
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method private getModeBoxLabel(I)Ljava/lang/String;
    .registers 6
    .parameter "box"

    .prologue
    .line 7997
    const/4 v0, 0x0

    .line 7998
    .local v0, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 8000
    .local v1, labelResId:I
    packed-switch p1, :pswitch_data_30

    .line 8022
    const v1, 0x7f0a0074

    .line 8026
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8027
    return-object v0

    .line 8002
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1f

    .line 8003
    const v1, 0x7f0a0075

    goto :goto_8

    .line 8005
    :cond_1f
    const v1, 0x7f0a0074

    .line 8007
    goto :goto_8

    .line 8012
    :pswitch_23
    const v1, 0x7f0a0074

    .line 8014
    goto :goto_8

    .line 8016
    :pswitch_27
    const v1, 0x7f0a0076

    .line 8017
    goto :goto_8

    .line 8019
    :pswitch_2b
    const v1, 0x7f0a0077

    .line 8020
    goto :goto_8

    .line 8000
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private getModeKeyLabel(Z)Ljava/lang/String;
    .registers 5
    .parameter "currentMode"

    .prologue
    .line 7974
    const/4 v0, 0x0

    .line 7975
    .local v0, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7976
    .local v1, labelResId:I
    if-eqz p1, :cond_40

    .line 7978
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 7979
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_20

    const v1, 0x7f0a003c

    .line 7991
    :goto_17
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7992
    return-object v0

    .line 7979
    :cond_20
    const v1, 0x7f0a0036

    goto :goto_17

    .line 7980
    :cond_24
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 7981
    const v1, 0x7f0a003d

    goto :goto_17

    .line 7982
    :cond_30
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isSymbolMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 7983
    const v1, 0x7f0a003e

    goto :goto_17

    .line 7985
    :cond_3c
    const v1, 0x7f0a0036

    goto :goto_17

    .line 7988
    :cond_40
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getNextModeStringId()I

    move-result v1

    goto :goto_17
.end method

.method private getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter

    .prologue
    .line 7197
    const/4 v0, 0x0

    .line 7198
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 7199
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 7241
    :cond_14
    :goto_14
    return-object v0

    .line 7213
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 7214
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 7221
    :cond_36
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_46

    .line 7222
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_14

    .line 7224
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_14
.end method

.method private getNextInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 8
    .parameter "paint"
    .parameter "isPreview"

    .prologue
    const/4 v4, 0x2

    .line 8673
    const/4 v1, 0x0

    .line 8674
    .local v1, nextIndex:I
    const/4 v0, 0x0

    .line 8675
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 8676
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_20

    .line 8677
    const/4 v1, 0x0

    .line 8679
    :cond_20
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-ne v2, v4, :cond_64

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-nez v2, :cond_64

    .line 8681
    if-eqz p2, :cond_4b

    .line 8682
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8700
    :goto_4a
    return-object v0

    .line 8684
    :cond_4b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 8687
    :cond_64
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-eq v2, v4, :cond_a0

    .line 8688
    if-eqz p2, :cond_87

    .line 8689
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 8691
    :cond_87
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 8694
    :cond_a0
    if-eqz p2, :cond_bb

    .line 8695
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 8697
    :cond_bb
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a
.end method

.method private getNextModeStringId()I
    .registers 9

    .prologue
    .line 8031
    const/4 v3, 0x0

    .line 8033
    .local v3, id:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputModeCode()I

    move-result v4

    .line 8034
    .local v4, modeCode:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    .line 8036
    .local v1, enableInputMode:[I
    const/4 v0, -0x1

    .line 8037
    .local v0, currentIndex:I
    const/4 v5, -0x1

    .line 8038
    .local v5, nextModeCode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v6, v1

    if-ge v2, v6, :cond_18

    .line 8039
    aget v6, v1, v2

    if-ne v4, v6, :cond_25

    .line 8040
    move v0, v2

    .line 8045
    :cond_18
    array-length v6, v1

    add-int/lit8 v7, v0, 0x1

    if-le v6, v7, :cond_28

    .line 8046
    add-int/lit8 v6, v0, 0x1

    aget v5, v1, v6

    .line 8051
    :goto_21
    sparse-switch v5, :sswitch_data_5a

    .line 8192
    :goto_24
    return v3

    .line 8038
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 8048
    :cond_28
    const/4 v6, 0x0

    aget v5, v1, v6

    goto :goto_21

    .line 8053
    :sswitch_2c
    const v3, 0x7f0a0036

    .line 8054
    goto :goto_24

    .line 8056
    :sswitch_30
    const v3, 0x7f0a003c

    .line 8057
    goto :goto_24

    .line 8059
    :sswitch_34
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 8060
    const v3, 0x7f0a003c

    goto :goto_24

    .line 8062
    :cond_40
    const v3, 0x7f0a0036

    .line 8064
    goto :goto_24

    .line 8066
    :sswitch_44
    const v3, 0x7f0a003d

    .line 8067
    goto :goto_24

    .line 8069
    :sswitch_48
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_55

    .line 8070
    const v3, 0x7f0a003f

    goto :goto_24

    .line 8072
    :cond_55
    const v3, 0x7f0a003e

    goto :goto_24

    .line 8051
    nop

    :sswitch_data_5a
    .sparse-switch
        -0x89 -> :sswitch_2c
        -0x88 -> :sswitch_30
        -0x7c -> :sswitch_34
        -0x6e -> :sswitch_48
        -0x6d -> :sswitch_44
    .end sparse-switch
.end method

.method private getPopupKeyboardPosX(Landroid/inputmethodservice/Keyboard$Key;ZZ)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4897
    .line 4898
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 4899
    :goto_5
    if-eqz p2, :cond_94

    .line 4900
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4901
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_2a

    if-eqz p3, :cond_2a

    .line 4903
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 4904
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4943
    :goto_27
    return v0

    .line 4898
    :cond_28
    const/4 v0, 0x0

    goto :goto_5

    .line 4905
    :cond_2a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_42

    .line 4906
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_27

    .line 4908
    :cond_42
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_27

    .line 4911
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6d

    if-eqz p3, :cond_6d

    .line 4914
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 4915
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_27

    .line 4916
    :cond_6d
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8c

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050025

    if-eq v0, v1, :cond_8c

    .line 4917
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_27

    .line 4919
    :cond_8c
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_27

    .line 4928
    :cond_94
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 4929
    if-nez v0, :cond_af

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_af

    .line 4930
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_27

    .line 4932
    :cond_af
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_27

    .line 4935
    :cond_c9
    if-nez v0, :cond_dc

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_dc

    .line 4936
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_27

    .line 4938
    :cond_dc
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_27
.end method

.method private getPopupKeyboardPosY(Landroid/inputmethodservice/Keyboard$Key;ZZ)I
    .registers 8
    .parameter "key"
    .parameter "isVerticalMiniKeyboard"
    .parameter "isModeChangeMiniKeyboard"

    .prologue
    .line 4858
    const/4 v0, 0x0

    .line 4860
    .local v0, posY:I
    if-eqz p2, :cond_75

    .line 4861
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4862
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_30

    if-eqz p3, :cond_30

    .line 4864
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 4891
    :goto_22
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4893
    return v0

    .line 4866
    :cond_30
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_22

    .line 4869
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5d

    if-eqz p3, :cond_5d

    .line 4872
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_22

    .line 4875
    :cond_5d
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4876
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4877
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4878
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_22

    .line 4883
    :cond_75
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4885
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4886
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4887
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_22
.end method

.method private getPrevInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    .registers 8
    .parameter "paint"
    .parameter "isPreview"

    .prologue
    const/4 v4, 0x2

    .line 8704
    const/4 v1, 0x0

    .line 8705
    .local v1, prevIndex:I
    const/4 v0, 0x0

    .line 8706
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 8707
    if-gez v1, :cond_21

    .line 8708
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 8710
    :cond_21
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-ne v2, v4, :cond_65

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-nez v2, :cond_65

    .line 8712
    if-eqz p2, :cond_4c

    .line 8713
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8731
    :goto_4b
    return-object v0

    .line 8715
    :cond_4c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 8718
    :cond_65
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-eq v2, v4, :cond_a1

    .line 8719
    if-eqz p2, :cond_88

    .line 8720
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 8722
    :cond_88
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 8725
    :cond_a1
    if-eqz p2, :cond_bc

    .line 8726
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 8728
    :cond_bc
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b
.end method

.method private getPreviewLabelSize(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/CharSequence;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x3f666666

    const v4, 0x3f333333

    const v3, 0x3f19999a

    const/high16 v1, 0x3f00

    const v2, 0x3f4ccccd

    .line 4058
    .line 4059
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4060
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 4096
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3ee66666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4153
    :goto_25
    return v0

    .line 4062
    :pswitch_26
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, -0x66

    if-ne v0, v1, :cond_35

    .line 4063
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_25

    .line 4065
    :cond_35
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_25

    .line 4069
    :pswitch_38
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_25

    .line 4072
    :pswitch_3b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 4073
    goto :goto_25

    .line 4075
    :pswitch_41
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4076
    goto :goto_25

    .line 4078
    :pswitch_47
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 4079
    goto :goto_25

    .line 4081
    :pswitch_4d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 4082
    goto :goto_25

    .line 4084
    :pswitch_53
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4085
    goto :goto_25

    .line 4100
    :cond_59
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    .line 4136
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3eb33333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_25

    .line 4102
    :pswitch_69
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, -0x66

    if-ne v0, v1, :cond_78

    .line 4103
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_25

    .line 4105
    :cond_78
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_25

    .line 4109
    :pswitch_7b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4110
    goto :goto_25

    .line 4112
    :pswitch_81
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 4113
    goto :goto_25

    .line 4115
    :pswitch_87
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 4116
    goto :goto_25

    .line 4118
    :pswitch_8d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4119
    goto :goto_25

    .line 4121
    :pswitch_93
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4122
    goto :goto_25

    .line 4060
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_38
        :pswitch_3b
        :pswitch_41
        :pswitch_47
        :pswitch_4d
        :pswitch_53
    .end packed-switch

    .line 4100
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_69
        :pswitch_7b
        :pswitch_81
        :pswitch_87
        :pswitch_8d
        :pswitch_93
    .end packed-switch
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "key"

    .prologue
    const v5, 0x7f0a00ae

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3684
    const/4 v0, 0x0

    .line 3686
    .local v0, text:Ljava/lang/String;
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_57

    .line 3687
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3688
    const-string v0, ":-)"

    .line 3734
    :cond_16
    :goto_16
    return-object v0

    .line 3690
    :cond_17
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_dc

    goto :goto_16

    .line 3710
    :pswitch_21
    const/4 v0, 0x0

    goto :goto_16

    .line 3692
    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3693
    goto :goto_16

    .line 3695
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3696
    goto :goto_16

    .line 3698
    :pswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3699
    goto :goto_16

    .line 3701
    :pswitch_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3702
    goto :goto_16

    .line 3704
    :pswitch_53
    const/4 v0, 0x0

    .line 3705
    goto :goto_16

    .line 3707
    :pswitch_55
    const/4 v0, 0x0

    .line 3708
    goto :goto_16

    .line 3714
    :cond_57
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_ce

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    .line 3715
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3717
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v2

    const/16 v4, -0x66

    if-ne v3, v4, :cond_87

    .line 3718
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v3

    array-length v3, v3

    if-gt v3, v1, :cond_85

    :goto_80
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_85
    move v1, v2

    goto :goto_80

    .line 3719
    :cond_87
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    const/16 v3, -0xc9

    if-ne v1, v3, :cond_ac

    .line 3720
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v1, :cond_a2

    .line 3721
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 3723
    :cond_a2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 3725
    :cond_ac
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    const/16 v3, -0xca

    if-ne v1, v3, :cond_be

    .line 3726
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 3727
    :cond_be
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    const/16 v2, -0x6f

    if-ne v1, v2, :cond_16

    .line 3728
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 3730
    :cond_ce
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    const/16 v2, -0x69

    if-ne v1, v2, :cond_16

    .line 3731
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 3690
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_21
        :pswitch_55
        :pswitch_2f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_23
    .end packed-switch
.end method

.method private getSpaceTapKeyIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 5899
    .line 5900
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_4c

    .line 5901
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5902
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_20

    .line 5903
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5943
    :goto_1f
    return-object v0

    .line 5905
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5908
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5909
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5911
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5915
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9d

    .line 5916
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 5917
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_71

    .line 5918
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5920
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5923
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 5924
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5926
    :cond_91
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 5929
    :cond_9d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 5930
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 5931
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1f

    .line 5933
    :cond_ba
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1f

    .line 5936
    :cond_c7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 5937
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1f

    .line 5939
    :cond_dc
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1f
.end method

.method private getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f020096

    const v5, 0x7f020095

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2830
    const/4 v0, 0x0

    .line 2831
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    .line 2833
    const/16 v2, -0x68

    if-ne p1, v2, :cond_50

    .line 2834
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_24

    .line 2835
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2865
    :cond_23
    :goto_23
    return-object v0

    .line 2837
    :cond_24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    if-ne v0, v4, :cond_47

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-eq v0, v3, :cond_47

    if-eq v1, v4, :cond_47

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v3, :cond_47

    .line 2842
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23

    .line 2844
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23

    .line 2847
    :cond_50
    const/16 v2, -0x69

    if-ne p1, v2, :cond_23

    .line 2848
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_61

    .line 2849
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23

    .line 2851
    :cond_61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    if-ne v0, v4, :cond_84

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-eq v0, v3, :cond_84

    if-eq v1, v4, :cond_84

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v3, :cond_84

    .line 2856
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23

    .line 2858
    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_23
.end method

.method private getTextSizeFromTheme(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 8634
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010095

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8636
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 8637
    return v0
.end method

.method private getWwwDotComKeyLabelSize()I
    .registers 4

    .prologue
    .line 3062
    const/4 v1, 0x0

    .line 3063
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3064
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_e

    .line 3065
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 3077
    :goto_d
    return v1

    .line 3066
    :cond_e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 3067
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_18

    .line 3068
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_d

    .line 3070
    :cond_18
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_d

    .line 3072
    :cond_1b
    if-nez v0, :cond_20

    .line 3073
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_d

    .line 3075
    :cond_20
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_d
.end method

.method private hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 9
    .parameter "popupKey"

    .prologue
    const/16 v3, 0xb

    const/4 v6, 0x0

    .line 4345
    const/4 v0, 0x0

    .line 4347
    .local v0, hasPopup:Z
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 4349
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-nez v4, :cond_49

    .line 4353
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_4a

    .local v3, n:I
    :goto_36
    if-ge v1, v3, :cond_49

    .line 4354
    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v4, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    if-ne v5, v4, :cond_4f

    .line 4355
    const/4 v0, 0x1

    .line 4361
    .end local v1           #i:I
    .end local v3           #n:I
    :cond_49
    return v0

    .line 4353
    .restart local v1       #i:I
    :cond_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_36

    .restart local v3       #n:I
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method

.method private initGestureDetector()V
    .registers 4

    .prologue
    .line 1032
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1101
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1102
    return-void
.end method

.method private initVariables()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 804
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 806
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 807
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 808
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 809
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 810
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 811
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    .line 813
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 814
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 815
    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 817
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    .line 818
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_KEY_LABEL_SIZE_NORMAL:I

    .line 819
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 820
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

    .line 821
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 822
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    .line 823
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    .line 824
    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 825
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    .line 827
    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_LABEL_SIZE:I

    .line 828
    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_LABEL_SIZE:I

    .line 829
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_STRING_LABEL_SIZE:I

    .line 830
    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_SYMBOLSTAR_SIZE:I

    .line 832
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    .line 833
    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 834
    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_PHONENUMBER_STRING_COLOR:I

    .line 835
    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEYPAD_SMALL_NUMBER_COLOR:I

    .line 836
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    .line 837
    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    .line 838
    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    .line 840
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 841
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    .line 842
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 843
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 844
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 845
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 847
    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 848
    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 849
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 850
    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 852
    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    .line 853
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    .line 855
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    .line 856
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    .line 858
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    .line 860
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    .line 861
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 863
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    .line 865
    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 866
    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 868
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 869
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 871
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_MIN_WIDTH:I

    .line 873
    const-string v1, "/system/fonts/DroidSans.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    .line 874
    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/HelveticaNeueRegular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    .line 877
    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 878
    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 879
    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 880
    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 881
    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 883
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 884
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 885
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    .line 887
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 889
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 890
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 891
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 893
    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 894
    const v1, 0x7f0d0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    .line 895
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    .line 897
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_YPOS_REVISION:I

    .line 899
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MAX_LIMITE:I

    .line 900
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_STANDARD_VALUE:I

    .line 901
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MIN_LIMITE:I

    .line 903
    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    .line 905
    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    .line 906
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    .line 908
    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    .line 909
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 910
    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 911
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 912
    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    .line 913
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 914
    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 915
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 917
    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    .line 918
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    .line 920
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 921
    return-void
.end method

.method private isCurrentEnterActionIcon()Z
    .registers 3

    .prologue
    .line 1548
    const/4 v0, 0x0

    .line 1552
    .local v0, isIcon:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v1

    packed-switch v1, :pswitch_data_10

    .line 1565
    const/4 v0, 0x1

    .line 1570
    :goto_b
    return v0

    .line 1557
    :pswitch_c
    const/4 v0, 0x0

    .line 1558
    goto :goto_b

    .line 1562
    :pswitch_e
    const/4 v0, 0x1

    .line 1563
    goto :goto_b

    .line 1552
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private isExceptMonthLocale()Z
    .registers 3

    .prologue
    .line 7744
    const-string v0, "ko"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "ja"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 7747
    :cond_30
    const/4 v0, 0x1

    .line 7749
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private isExpandedKeyCode(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 4341
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x7b

    if-lt p1, v0, :cond_12

    const/16 v0, 0x80

    if-gt p1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isLandscapeQwertySoftkeys(I)Z
    .registers 6
    .parameter "Codes"

    .prologue
    .line 5678
    const/4 v0, 0x0

    .line 5680
    .local v0, ret:Z
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-nez v2, :cond_7

    move v1, v0

    .line 5735
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_6
    return v1

    .line 5683
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_7
    sparse-switch p1, :sswitch_data_1c

    .line 5731
    const/4 v0, 0x0

    :goto_b
    move v1, v0

    .line 5735
    .restart local v1       #ret:I
    goto :goto_6

    .line 5721
    .end local v1           #ret:I
    :sswitch_d
    const/4 v0, 0x1

    .line 5722
    goto :goto_b

    .line 5724
    :sswitch_f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 5725
    const/4 v0, 0x1

    goto :goto_b

    .line 5727
    :cond_1a
    const/4 v0, 0x0

    .line 5729
    goto :goto_b

    .line 5683
    :sswitch_data_1c
    .sparse-switch
        -0x136 -> :sswitch_d
        -0x134 -> :sswitch_d
        -0x133 -> :sswitch_d
        -0x132 -> :sswitch_d
        -0x131 -> :sswitch_d
        -0x12f -> :sswitch_d
        -0xd3 -> :sswitch_d
        -0x7c -> :sswitch_d
        -0x76 -> :sswitch_d
        -0x72 -> :sswitch_d
        -0x71 -> :sswitch_d
        -0x69 -> :sswitch_d
        -0x68 -> :sswitch_d
        -0x67 -> :sswitch_d
        -0x66 -> :sswitch_d
        -0x64 -> :sswitch_d
        -0x5 -> :sswitch_d
        0xa -> :sswitch_d
        0x2d -> :sswitch_f
    .end sparse-switch
.end method

.method private isLeftKeys(I)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 8802
    const/4 v0, 0x0

    .line 8803
    .local v0, ret:Z
    packed-switch p1, :pswitch_data_20

    .line 8850
    :goto_4
    :pswitch_4
    return v0

    .line 8813
    :pswitch_5
    const/4 v0, 0x1

    .line 8814
    goto :goto_4

    .line 8816
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isQwertzType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8817
    const/4 v0, 0x0

    goto :goto_4

    .line 8819
    :cond_f
    const/4 v0, 0x1

    .line 8821
    goto :goto_4

    .line 8825
    :pswitch_11
    const/4 v0, 0x1

    .line 8826
    goto :goto_4

    .line 8828
    :pswitch_13
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isQwertzType()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8829
    const/4 v0, 0x1

    goto :goto_4

    .line 8831
    :cond_1b
    const/4 v0, 0x0

    .line 8833
    goto :goto_4

    .line 8845
    :pswitch_1d
    const/4 v0, 0x0

    .line 8846
    goto :goto_4

    .line 8803
    nop

    :pswitch_data_20
    .packed-switch 0x61
        :pswitch_5
        :pswitch_1d
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1d
        :pswitch_11
        :pswitch_5
        :pswitch_11
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method

.method private isNeedChangeKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 7
    .parameter "key"

    .prologue
    const/high16 v3, 0x7f0b

    const/4 v4, 0x0

    .line 5809
    const/4 v0, 0x0

    .line 5810
    .local v0, isNeed:Z
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_108

    .line 5844
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x30

    if-lt v1, v2, :cond_31

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x39

    if-gt v1, v2, :cond_31

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_31

    .line 5847
    const/4 v0, 0x1

    .line 5879
    :goto_2c
    return v0

    .line 5834
    :sswitch_2d
    const/4 v0, 0x1

    .line 5835
    goto :goto_2c

    .line 5840
    :sswitch_2f
    const/4 v0, 0x0

    .line 5842
    goto :goto_2c

    .line 5848
    :cond_31
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 5850
    const/4 v0, 0x1

    goto :goto_2c

    .line 5851
    :cond_4b
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5854
    const/4 v0, 0x1

    goto :goto_2c

    .line 5855
    :cond_6d
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 5858
    const/4 v0, 0x1

    goto :goto_2c

    .line 5859
    :cond_92
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x40

    if-ne v1, v2, :cond_b6

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_b6

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b6

    .line 5863
    const/4 v0, 0x1

    goto/16 :goto_2c

    .line 5864
    :cond_b6
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_da

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_da

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_da

    .line 5868
    const/4 v0, 0x1

    goto/16 :goto_2c

    .line 5869
    :cond_da
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-eqz v1, :cond_105

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v1

    if-eqz v1, :cond_105

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v1

    if-nez v1, :cond_105

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v1

    if-nez v1, :cond_105

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_105

    .line 5873
    const/4 v0, 0x1

    goto/16 :goto_2c

    .line 5876
    :cond_105
    const/4 v0, 0x1

    goto/16 :goto_2c

    .line 5810
    :sswitch_data_108
    .sparse-switch
        -0x98 -> :sswitch_2d
        -0x97 -> :sswitch_2d
        -0x96 -> :sswitch_2d
        -0x95 -> :sswitch_2d
        -0x94 -> :sswitch_2d
        -0x93 -> :sswitch_2d
        -0x92 -> :sswitch_2d
        -0x91 -> :sswitch_2d
        -0x90 -> :sswitch_2d
        -0x8f -> :sswitch_2d
        -0x8e -> :sswitch_2d
        -0x8d -> :sswitch_2d
        -0x72 -> :sswitch_2d
        -0x71 -> :sswitch_2d
        -0x6e -> :sswitch_2f
        -0x6a -> :sswitch_2d
        -0x69 -> :sswitch_2d
        -0x68 -> :sswitch_2d
        -0x67 -> :sswitch_2d
        -0x5 -> :sswitch_2d
        -0x1 -> :sswitch_2d
        0x20 -> :sswitch_2d
    .end sparse-switch
.end method

.method private isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 8
    .parameter "popupKey"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4317
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v2, :cond_1b

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 4334
    :cond_1b
    :goto_1b
    return v0

    .line 4320
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-ne v2, v5, :cond_58

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_40
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4327
    :cond_58
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-ne v2, v5, :cond_8a

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_7c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-nez v2, :cond_8a

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_8a
    move v0, v1

    .line 4334
    goto :goto_1b
.end method

.method private isPortraitSoftkeys(I)Z
    .registers 6
    .parameter "Codes"

    .prologue
    const/4 v3, 0x1

    .line 5598
    const/4 v0, 0x0

    .line 5600
    .local v0, ret:Z
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-ne v2, v3, :cond_8

    move v1, v0

    .line 5674
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_7
    return v1

    .line 5604
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_8
    sparse-switch p1, :sswitch_data_3e

    .line 5671
    const/4 v0, 0x0

    :goto_c
    move v1, v0

    .line 5674
    .restart local v1       #ret:I
    goto :goto_7

    .line 5638
    .end local v1           #ret:I
    :sswitch_e
    const/4 v0, 0x1

    .line 5639
    goto :goto_c

    .line 5648
    :sswitch_10
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-nez v2, :cond_1a

    .line 5649
    const/4 v0, 0x0

    goto :goto_c

    .line 5651
    :cond_1a
    const/4 v0, 0x1

    .line 5653
    goto :goto_c

    .line 5656
    :sswitch_1c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2e

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    .line 5658
    :cond_2e
    const/4 v0, 0x1

    goto :goto_c

    .line 5660
    :cond_30
    const/4 v0, 0x0

    .line 5662
    goto :goto_c

    .line 5664
    :sswitch_32
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-ne v2, v3, :cond_3c

    .line 5665
    const/4 v0, 0x1

    goto :goto_c

    .line 5667
    :cond_3c
    const/4 v0, 0x0

    .line 5669
    goto :goto_c

    .line 5604
    :sswitch_data_3e
    .sparse-switch
        -0x136 -> :sswitch_e
        -0x134 -> :sswitch_e
        -0x133 -> :sswitch_e
        -0x132 -> :sswitch_e
        -0x131 -> :sswitch_e
        -0x12f -> :sswitch_e
        -0xd3 -> :sswitch_e
        -0x7c -> :sswitch_e
        -0x72 -> :sswitch_10
        -0x71 -> :sswitch_e
        -0x69 -> :sswitch_e
        -0x68 -> :sswitch_e
        -0x67 -> :sswitch_e
        -0x66 -> :sswitch_e
        -0x64 -> :sswitch_e
        -0x5 -> :sswitch_e
        0xa -> :sswitch_e
        0x20 -> :sswitch_1c
        0x2d -> :sswitch_32
    .end sparse-switch
.end method

.method private isPreviewFuntionKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 8782
    const/4 v0, 0x0

    .line 8784
    .local v0, isFunction:Z
    sparse-switch p1, :sswitch_data_8

    .line 8795
    const/4 v0, 0x0

    .line 8798
    :goto_5
    return v0

    .line 8792
    :sswitch_6
    const/4 v0, 0x1

    .line 8793
    goto :goto_5

    .line 8784
    :sswitch_data_8
    .sparse-switch
        -0xca -> :sswitch_6
        -0xc9 -> :sswitch_6
        -0x6f -> :sswitch_6
        -0x69 -> :sswitch_6
        -0x68 -> :sswitch_6
        -0x66 -> :sswitch_6
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method private isQwertzType()Z
    .registers 4

    .prologue
    .line 8854
    const/4 v1, 0x0

    .line 8855
    .local v1, type:Z
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v0

    .line 8856
    .local v0, inputLangID:S
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x59

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1e

    .line 8862
    :cond_1d
    const/4 v1, 0x1

    .line 8864
    :cond_1e
    return v1
.end method

.method private isShouldShowEmoticon()Z
    .registers 3

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "me"

    .prologue
    const/4 v2, 0x0

    .line 4201
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLayout:I

    if-nez v3, :cond_6

    .line 4219
    :cond_5
    :goto_5
    return v2

    .line 4204
    :cond_6
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_5

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 4208
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 4210
    .local v0, keyIndex:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 4212
    .local v1, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v2

    .line 4213
    .local v2, result:Z
    if-eqz v2, :cond_5

    .line 4214
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 4215
    iget-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-nez v3, :cond_5

    .line 4216
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    goto :goto_5
.end method

.method private popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 15
    .parameter

    .prologue
    .line 4370
    .line 4371
    const/4 v7, 0x0

    .line 4372
    const/4 v6, 0x0

    .line 4373
    const/4 v5, 0x0

    .line 4374
    const/4 v4, 0x0

    .line 4375
    const/4 v3, 0x0

    .line 4377
    const/4 v1, 0x0

    .line 4379
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4380
    const/4 v0, 0x0

    .line 4768
    :goto_d
    return v0

    .line 4383
    :cond_e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 4385
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v0, :cond_14a

    .line 4387
    const v2, 0x7f05002e

    .line 4388
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v0, v0, v8

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_5de

    :cond_2d
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_5de

    .line 4390
    const/4 v0, 0x1

    move v8, v0

    move v9, v4

    move v10, v6

    move v11, v7

    move v4, v5

    .line 4413
    :goto_37
    if-eqz v2, :cond_5d2

    .line 4414
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 4415
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-eqz v0, :cond_6b

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_6b

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_6b

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x34

    if-eq v0, v1, :cond_6b

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x37

    if-ne v0, v1, :cond_5b3

    .line 4421
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4425
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v5, 0x7f050028

    if-ne v1, v5, :cond_1d9

    .line 4426
    if-eqz v11, :cond_1ac

    .line 4427
    const v1, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 4463
    :goto_8a
    if-eqz v11, :cond_246

    .line 4464
    if-eqz v10, :cond_241

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_241

    .line 4466
    const v0, 0x7f020121

    .line 4475
    :goto_9a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4476
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    .line 4478
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4479
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsMiniKeyboard(Z)V

    .line 4480
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsModeChangeMiniKeyboard(Z)V

    .line 4481
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v11}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsVerticalMiniKeyboard(Z)V

    .line 4482
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsUmlautMiniKeyboard(Z)V

    .line 4483
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsDomainAllKeyboard(Z)V

    .line 4484
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsEmoticonsKeyboard(Z)V

    .line 4485
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsSymbolsKeyboard(Z)V

    .line 4487
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 4490
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsFirtUmlaut(Z)V

    .line 4491
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsFirtSymbol(Z)V

    .line 4492
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsFirtDomain(Z)V

    .line 4493
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsFirtEmoticon(Z)V

    .line 4507
    if-eqz v10, :cond_24b

    .line 4508
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    .line 4514
    :goto_100
    if-eqz v10, :cond_110

    .line 4515
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertIntArrtoCharSequence([I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 4518
    :cond_110
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4522
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_254

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_12c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_254

    .line 4526
    :cond_12c
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_5e6

    .line 4529
    const/4 v0, 0x0

    :goto_133
    array-length v4, v1

    if-ge v0, v4, :cond_254

    .line 4530
    aget v4, v1, v0

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 4531
    const/4 v5, -0x1

    if-eq v4, v5, :cond_147

    .line 4532
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4529
    :cond_147
    add-int/lit8 v0, v0, 0x1

    goto :goto_133

    .line 4392
    :cond_14a
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v2, 0x7f050028

    if-ne v0, v2, :cond_15d

    .line 4393
    const v2, 0x7f050028

    .line 4394
    const/4 v0, 0x1

    .line 4395
    const/4 v6, 0x1

    move v8, v1

    move v9, v4

    move v10, v0

    move v11, v6

    move v4, v5

    goto/16 :goto_37

    .line 4396
    :cond_15d
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v2, 0x7f05002d

    if-ne v0, v2, :cond_16f

    .line 4397
    const v2, 0x7f05002d

    .line 4398
    const/4 v0, 0x1

    move v8, v1

    move v9, v0

    move v4, v5

    move v10, v6

    move v11, v7

    goto/16 :goto_37

    .line 4399
    :cond_16f
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v2, 0x7f050026

    if-ne v0, v2, :cond_182

    .line 4400
    const v2, 0x7f050026

    .line 4401
    const/4 v0, 0x1

    move v8, v1

    move v3, v0

    move v9, v4

    move v10, v6

    move v11, v7

    move v4, v5

    goto/16 :goto_37

    .line 4403
    :cond_182
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v2, 0x7f050021

    if-ne v0, v2, :cond_1a5

    .line 4404
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getDomainKbdId()I

    move-result v2

    .line 4408
    :goto_18d
    const v0, 0x7f050022

    if-eq v2, v0, :cond_197

    const v0, 0x7f050023

    if-ne v2, v0, :cond_1a8

    :cond_197
    const/4 v5, 0x1

    .line 4409
    :goto_198
    const v0, 0x7f050022

    if-ne v2, v0, :cond_1aa

    const/4 v0, 0x1

    :goto_19e
    move v8, v1

    move v9, v4

    move v10, v6

    move v11, v0

    move v4, v5

    goto/16 :goto_37

    .line 4406
    :cond_1a5
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_18d

    .line 4408
    :cond_1a8
    const/4 v5, 0x0

    goto :goto_198

    .line 4409
    :cond_1aa
    const/4 v0, 0x0

    goto :goto_19e

    .line 4429
    :cond_1ac
    if-nez v4, :cond_1cd

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_1ca

    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_1ba
    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_1cd

    .line 4430
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4429
    :cond_1ca
    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_1ba

    .line 4432
    :cond_1cd
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4436
    :cond_1d9
    if-eqz v11, :cond_1e7

    .line 4437
    const v1, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4439
    :cond_1e7
    if-eqz v8, :cond_214

    .line 4440
    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_205

    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_1f5
    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_208

    .line 4441
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4440
    :cond_205
    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_1f5

    .line 4444
    :cond_208
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4451
    :cond_214
    if-nez v4, :cond_235

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_232

    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_222
    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_235

    .line 4452
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4451
    :cond_232
    sget v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_222

    .line 4454
    :cond_235
    const v1, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    goto/16 :goto_8a

    .line 4469
    :cond_241
    const v0, 0x7f020005

    goto/16 :goto_9a

    .line 4472
    :cond_246
    const v0, 0x7f020005

    goto/16 :goto_9a

    .line 4510
    :cond_24b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    goto/16 :goto_100

    .line 4537
    :cond_254
    if-eqz v3, :cond_41a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_41a

    .line 4550
    if-eqz v10, :cond_323

    .line 4551
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v4

    .line 4552
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertIntArrToStringArr([I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v12

    add-int/2addr v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;[I[Ljava/lang/String;II)V

    .line 4722
    :goto_27f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 4723
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 4724
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v2

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 4728
    if-nez v10, :cond_2b9

    if-nez v8, :cond_2b9

    if-nez v9, :cond_2b9

    .line 4729
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4735
    :cond_2b9
    :goto_2b9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    if-nez v0, :cond_2c7

    .line 4736
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    .line 4737
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLocationInWindow([I)V

    .line 4740
    :cond_2c7
    invoke-direct {p0, p1, v11, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPopupKeyboardPosX(Landroid/inputmethodservice/Keyboard$Key;ZZ)I

    move-result v1

    .line 4741
    invoke-direct {p0, p1, v11, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPopupKeyboardPosY(Landroid/inputmethodservice/Keyboard$Key;ZZ)I

    move-result v2

    .line 4742
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    .line 4743
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    .line 4744
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput v1, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    .line 4745
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput v2, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    .line 4747
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    if-gez v1, :cond_5c2

    const/4 v0, 0x0

    :goto_2e0
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setPopupOffset(II)V

    .line 4748
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShifted(Z)Z

    .line 4749
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4750
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v3, 0x5a

    if-ge v0, v3, :cond_5c5

    .line 4751
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4755
    :goto_304
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4761
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 4763
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMiniKeyboardOnScreen:Z

    .line 4764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    .line 4765
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 4766
    const/4 v0, 0x1

    goto/16 :goto_d

    .line 4554
    :cond_323
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_3b9

    if-eqz v8, :cond_3b9

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_3b9

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_3b9

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-nez v0, :cond_3b9

    .line 4560
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v0

    if-eqz v0, :cond_382

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_382

    .line 4561
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4562
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4569
    :cond_361
    :goto_361
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/4 v3, 0x6

    if-ge v1, v3, :cond_3a0

    .line 4570
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4584
    :goto_36d
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_27f

    .line 4564
    :cond_382
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4565
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLeftKeys(I)Z

    move-result v1

    if-nez v1, :cond_361

    .line 4566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    goto :goto_361

    .line 4571
    :cond_3a0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_3ad

    .line 4572
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_36d

    .line 4573
    :cond_3ad
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5db

    .line 4574
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_36d

    .line 4586
    :cond_3b9
    if-eqz v8, :cond_403

    .line 4587
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLeftKeys(I)Z

    move-result v0

    if-nez v0, :cond_3c9

    .line 4588
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 4591
    :cond_3c9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3ea

    .line 4592
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4605
    :cond_3d5
    :goto_3d5
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_27f

    .line 4593
    :cond_3ea
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3f7

    .line 4594
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_3d5

    .line 4595
    :cond_3f7
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3d5

    .line 4596
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_3d5

    .line 4608
    :cond_403
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_27f

    .line 4611
    :cond_41a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_4a2

    if-eqz v8, :cond_4a2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_4a2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_4a2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-nez v0, :cond_4a2

    .line 4629
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v0

    if-eqz v0, :cond_479

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_479

    .line 4630
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4631
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4635
    :goto_458
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/4 v3, 0x6

    if-ge v1, v3, :cond_489

    .line 4636
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4656
    :goto_464
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_27f

    .line 4633
    :cond_479
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_458

    .line 4637
    :cond_489
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_496

    .line 4638
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_464

    .line 4639
    :cond_496
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5d8

    .line 4640
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_464

    .line 4658
    :cond_4a2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_4f4

    if-eqz v8, :cond_4f4

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_4f4

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_4f4

    .line 4664
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4db

    .line 4665
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4680
    :cond_4c6
    :goto_4c6
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_27f

    .line 4666
    :cond_4db
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4e8

    .line 4667
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_4c6

    .line 4668
    :cond_4e8
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4c6

    .line 4669
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_4c6

    .line 4684
    :cond_4f4
    if-eqz v9, :cond_5a8

    .line 4685
    const-string v3, ""

    .line 4686
    const/16 v1, 0xe

    .line 4687
    const/4 v0, 0x0

    :goto_4fb
    if-ge v0, v1, :cond_513

    .line 4688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4687
    add-int/lit8 v0, v0, 0x1

    goto :goto_4fb

    .line 4693
    :cond_513
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 4694
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 4695
    const-string v7, "."

    .line 4696
    new-array v4, v1, [Ljava/lang/String;

    .line 4697
    const/4 v0, 0x0

    :goto_536
    if-ge v0, v6, :cond_543

    .line 4698
    aget-char v1, v5, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4697
    add-int/lit8 v0, v0, 0x1

    goto :goto_536

    .line 4700
    :cond_543
    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    .line 4702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4703
    const/4 v0, 0x0

    :goto_55b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_56f

    .line 4704
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4703
    add-int/lit8 v0, v0, 0x1

    goto :goto_55b

    .line 4706
    :cond_56f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_5d5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 4707
    :goto_57b
    const/4 v0, 0x7

    move v5, v0

    :goto_57d
    add-int/lit8 v0, v1, 0x7

    if-ge v5, v0, :cond_58f

    .line 4708
    add-int/lit8 v0, v5, -0x7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    .line 4707
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_57d

    .line 4711
    :cond_58f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolHistoryToPreference()V

    .line 4712
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_27f

    .line 4717
    :cond_5a8
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_27f

    .line 4732
    :cond_5b3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    goto/16 :goto_2b9

    :cond_5c2
    move v0, v1

    .line 4747
    goto/16 :goto_2e0

    .line 4753
    :cond_5c5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_304

    .line 4768
    :cond_5d2
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 4706
    :cond_5d5
    const/4 v0, 0x7

    move v1, v0

    goto :goto_57b

    :cond_5d8
    move-object v3, v0

    goto/16 :goto_464

    :cond_5db
    move-object v3, v0

    goto/16 :goto_36d

    :cond_5de
    move v8, v1

    move v9, v4

    move v10, v6

    move v11, v7

    move v4, v5

    goto/16 :goto_37

    .line 4526
    nop

    :array_5e6
    .array-data 0x4
        0x90t 0x3t 0x0t 0x0t
        0xb0t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private saveSymbolsToHistory(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 3655
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 3660
    :goto_4
    return-void

    .line 3658
    :cond_5
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3659
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method private setFlagDrawPending(Z)V
    .registers 2
    .parameter "drawPending"

    .prologue
    .line 5742
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDrawPending:Z

    .line 5743
    return-void
.end method


# virtual methods
.method public IsOneTimeShift()Z
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsOneTimeShift:Z

    return v0
.end method

.method checkMultiTap(JI)V
    .registers 10
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 5471
    if-ne p3, v3, :cond_7

    .line 5490
    :cond_6
    :goto_6
    return-void

    .line 5474
    :cond_7
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 5475
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    .line 5477
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_35

    .line 5478
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 5479
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_32

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_32

    .line 5480
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    goto :goto_6

    .line 5483
    :cond_32
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    goto :goto_6

    .line 5487
    :cond_35
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_40

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_6

    .line 5488
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    goto :goto_6
.end method

.method public clearOffsetInWindow()V
    .registers 2

    .prologue
    .line 8735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 8736
    return-void
.end method

.method public closing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5426
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5427
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5430
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 5432
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 5433
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeAllMsg()V

    .line 5434
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 5435
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 5436
    return-void
.end method

.method detectAndSendKey(IIIJ)V
    .registers 14
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 3555
    if-eq p1, v7, :cond_10

    .line 3556
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 3557
    .local v3, size:I
    if-lt p1, v3, :cond_11

    .line 3639
    .end local v3           #size:I
    :cond_10
    :goto_10
    return-void

    .line 3563
    .restart local v3       #size:I
    :cond_11
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 3565
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 3566
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3567
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_10

    .line 3571
    :cond_2c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3573
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3574
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_10

    .line 3578
    :cond_39
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5f

    .line 3581
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    const/16 v5, -0x6f

    if-ne v4, v5, :cond_4e

    .line 3582
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 3586
    :cond_4e
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 3587
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 3636
    :goto_5a
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3637
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_10

    .line 3590
    :cond_5f
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v4, v6

    .line 3592
    .local v0, code:I
    iget-object v1, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 3596
    .local v1, codes:[I
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    if-eqz v4, :cond_80

    .line 3597
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    if-eq v4, v7, :cond_dd

    .line 3604
    :goto_6d
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_78

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    if-gez v4, :cond_7a

    .line 3605
    :cond_78
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 3607
    :cond_7a
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    aget v0, v4, v5

    .line 3610
    :cond_80
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_8a

    .line 3611
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMiniKeyboardInput(Z)V

    .line 3615
    :cond_8a
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_c8

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v4

    if-nez v4, :cond_c8

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_c8

    int-to-char v4, v0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c8

    int-to-char v4, v0

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_c8

    int-to-char v4, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_c8

    if-eq v0, v7, :cond_c8

    const/4 v4, -0x5

    if-eq v0, v4, :cond_c8

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_c8

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 3624
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 3628
    :cond_c8
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 3630
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_d6

    .line 3631
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMiniKeyboardInput(Z)V

    .line 3634
    :cond_d6
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto/16 :goto_5a

    .line 3600
    :cond_dd
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 3601
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_6d
.end method

.method dismissPopupKeyboard()V
    .registers 2

    .prologue
    .line 5445
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5446
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 5448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    .line 5449
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 5452
    :cond_16
    return-void
.end method

.method public dismissPreview()V
    .registers 2

    .prologue
    .line 8381
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8382
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8384
    :cond_11
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 8747
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8748
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 8749
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 8750
    .local v0, measuredTextWidth:I
    const/4 v2, 0x0

    .line 8751
    .local v2, y:I
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    if-eqz v3, :cond_93

    .line 8752
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-eqz v3, :cond_94

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    if-eqz v3, :cond_94

    .line 8753
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8754
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->button_press:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8755
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->button_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8756
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8763
    :goto_3f
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    if-eqz v3, :cond_b7

    .line 8764
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEmoticonKeyLabelSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8768
    :goto_4b
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8769
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8770
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8771
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 8772
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-eqz v3, :cond_c0

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    if-eqz v3, :cond_c0

    .line 8773
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 8777
    :goto_82
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLabel:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8779
    :cond_93
    return-void

    .line 8758
    :cond_94
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8759
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->button_press:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8760
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->button_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8761
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3f

    .line 8766
    :cond_b7
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4b

    .line 8775
    :cond_c0
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v7

    float-to-int v4, v4

    add-int v2, v3, v4

    goto :goto_82
.end method

.method protected freeVariables()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 924
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 926
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 928
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 930
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    .line 931
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhoneNumberSequence:[Ljava/lang/String;

    .line 932
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    .line 934
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 936
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    .line 937
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    .line 938
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    .line 939
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    .line 940
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPaddingBottom:Landroid/widget/TextView;

    .line 942
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    .line 944
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 946
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 948
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 949
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 951
    :cond_30
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 952
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 953
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    .line 955
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 957
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 958
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    .line 960
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 962
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    .line 963
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    .line 964
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    .line 966
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 967
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 969
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 971
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 972
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 973
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    .line 975
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 976
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 978
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 980
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    .line 981
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    .line 983
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 984
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 985
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 986
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 987
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 989
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 990
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 992
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    .line 993
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    .line 994
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    .line 996
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    .line 997
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    .line 998
    return-void
.end method

.method public getCurrentDotCoDotLocaleKeyIndex()I
    .registers 7

    .prologue
    .line 8341
    const/4 v1, 0x0

    .line 8343
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 8344
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8357
    :cond_8
    :goto_8
    return v1

    .line 8346
    :cond_9
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 8347
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_14
    if-ge v0, v3, :cond_8

    .line 8348
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_2a

    .line 8349
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8350
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8351
    goto :goto_8

    .line 8347
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public getCurrentSpaceKeyIndex()I
    .registers 7

    .prologue
    .line 8361
    const/4 v1, -0x1

    .line 8363
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 8364
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8377
    :cond_8
    :goto_8
    return v1

    .line 8366
    :cond_9
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 8367
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_14
    if-ge v0, v3, :cond_8

    .line 8368
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2a

    .line 8369
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8370
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8371
    goto :goto_8

    .line 8367
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;
    .registers 11
    .parameter "popupKey"

    .prologue
    const/4 v8, 0x0

    .line 4773
    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v5, :cond_40

    .line 4774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4779
    .local v3, sUmlautString:Ljava/lang/StringBuilder;
    :goto_a
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v6, v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v4

    .line 4780
    .local v4, usedUmlaut:Ljava/lang/String;
    if-eqz v4, :cond_48

    .line 4781
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_21
    if-lt v0, v2, :cond_48

    .line 4782
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4783
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_36

    .line 4784
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4786
    :cond_36
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v8, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4781
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 4776
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #n:I
    .end local v3           #sUmlautString:Ljava/lang/StringBuilder;
    .end local v4           #usedUmlaut:Ljava/lang/String;
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v3       #sUmlautString:Ljava/lang/StringBuilder;
    goto :goto_a

    .line 4790
    .restart local v4       #usedUmlaut:Ljava/lang/String;
    :cond_48
    return-object v3
.end method

.method public getCurrentWwwdotKeyIndex()I
    .registers 7

    .prologue
    .line 8321
    const/4 v1, 0x0

    .line 8323
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 8324
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 8337
    :cond_8
    :goto_8
    return v1

    .line 8326
    :cond_9
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 8327
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_14
    if-ge v0, v3, :cond_8

    .line 8328
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xc9

    if-ne v4, v5, :cond_2a

    .line 8329
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 8330
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 8331
    goto :goto_8

    .line 8327
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public getKeyBackGround(I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f02011b

    const v4, 0x7f020116

    const v3, 0x7f020039

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 5504
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_28

    .line 5505
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    if-eqz v0, :cond_1f

    .line 5506
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5594
    :goto_1e
    return-object v0

    .line 5508
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5519
    :cond_28
    const/16 v0, -0x100

    if-ne p1, v0, :cond_35

    .line 5520
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5521
    :cond_35
    const/16 v0, -0x68

    if-ne p1, v0, :cond_53

    .line 5522
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_4a

    .line 5523
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5525
    :cond_4a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5527
    :cond_53
    const/16 v0, -0x69

    if-ne p1, v0, :cond_6e

    .line 5528
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_62

    .line 5529
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1e

    .line 5531
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5533
    :cond_6e
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b7

    .line 5534
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 5535
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_89

    .line 5536
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5538
    :cond_89
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_9d

    .line 5539
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 5541
    :cond_9d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 5545
    :cond_a7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_b3

    .line 5546
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5548
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5551
    :cond_b7
    const/4 v0, -0x5

    if-ne p1, v0, :cond_ca

    .line 5559
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_c6

    .line 5560
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5562
    :cond_c6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5565
    :cond_ca
    const/16 v0, 0xa

    if-ne p1, v0, :cond_de

    .line 5573
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_da

    .line 5574
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5576
    :cond_da
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5579
    :cond_de
    const/16 v0, -0x130

    if-ne p1, v0, :cond_f6

    .line 5580
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_f2

    .line 5581
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1e

    .line 5583
    :cond_f2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5585
    :cond_f6
    const/16 v0, -0x12f

    if-ne p1, v0, :cond_fe

    .line 5586
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5587
    :cond_fe
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-ne v0, v2, :cond_108

    .line 5588
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5589
    :cond_108
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-ne v0, v2, :cond_112

    .line 5590
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e

    .line 5592
    :cond_112
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1e
.end method

.method getKeyIndices(II[I)I
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 3495
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 3497
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v5, -0x1

    .line 3501
    .local v5, primaryIndex:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 3502
    .local v3, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_2f

    .line 3503
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 3506
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v1, 0x0

    .line 3507
    .local v1, isInside:Z
    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_2c

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_2c

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-ge p2, v6, :cond_2c

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_2c

    .line 3508
    const/4 v1, 0x1

    .line 3541
    :cond_2c
    if-eqz v1, :cond_30

    .line 3542
    move v5, v0

    .line 3551
    .end local v1           #isInside:Z
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2f
    return v5

    .line 3502
    .restart local v1       #isInside:Z
    .restart local v2       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .registers 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;
    .registers 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method getTheNearestKeyIndex(II[I)I
    .registers 18
    .parameter "TouchX"
    .parameter "TouchY"
    .parameter "nearKeys"

    .prologue
    .line 4982
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v11

    .line 4983
    .local v11, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v13, -0x1

    .line 4984
    .local v13, theNearestKeyIndex:I
    const v12, 0x7fffffff

    .line 4985
    .local v12, minDistance:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_b
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v10, v1, :cond_35

    .line 4986
    const/4 v8, 0x0

    .line 4987
    .local v8, currentDistance:I
    aget v1, p3, v10

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 4988
    .local v9, currentKey:Landroid/inputmethodservice/Keyboard$Key;
    iget v2, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 4989
    .local v2, keyX:I
    iget v3, v9, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4991
    .local v3, keyY:I
    iget v1, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int v4, v2, v1

    iget v1, v9, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int v5, v3, v1

    move-object v1, p0

    move v6, p1

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getDistanceSquare(IIIIII)I

    move-result v8

    .line 4993
    if-ge v8, v12, :cond_32

    .line 4994
    move v12, v8

    .line 4995
    aget v13, p3, v10

    .line 4985
    :cond_32
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 4998
    .end local v2           #keyX:I
    .end local v3           #keyY:I
    .end local v8           #currentDistance:I
    .end local v9           #currentKey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_35
    return v13
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5456
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 5457
    const/4 v0, 0x1

    .line 5459
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected handleChangeLanguage(I)V
    .registers 8
    .parameter "diff"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0xa1

    const/16 v2, -0xa2

    .line 4047
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_21

    .line 4048
    if-lez p1, :cond_25

    .line 4049
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 4054
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->releaseSlidingDrawable()V

    .line 4055
    return-void

    .line 4051
    :cond_25
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v1, v5, [I

    aput v2, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_21
.end method

.method public initActionPopup()V
    .registers 5

    .prologue
    const/4 v1, -0x2

    .line 7910
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4f

    .line 7911
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    .line 7912
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7913
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7914
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7915
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7916
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7917
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 7918
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    if-nez v1, :cond_4f

    .line 7919
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    .line 7922
    :cond_4f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->updateActionPopup()V

    .line 7923
    return-void
.end method

.method public initSymbolHistory()V
    .registers 8

    .prologue
    .line 3644
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3645
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3646
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v5, "usersymbollist"

    const-string v6, ":-) ;-) :-( :\'( :-o :-P :-X"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3647
    .local v4, temp:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3648
    .local v3, splitTemp:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    .line 3649
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v5, v3

    if-ge v1, v5, :cond_2d

    .line 3650
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3649
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3652
    :cond_2d
    return-void
.end method

.method public invalidateAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4157
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 4158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setFlagDrawPending(Z)V

    .line 4159
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    .line 4160
    return-void
.end method

.method public invalidateKey(I)V
    .registers 9
    .parameter "keyIndex"

    .prologue
    .line 4183
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_12

    .line 4184
    if-ltz p1, :cond_12

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_13

    .line 4197
    :cond_12
    :goto_12
    return-void

    .line 4188
    :cond_13
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 4189
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 4190
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 4192
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 4194
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate(IIII)V

    goto :goto_12
.end method

.method public invalidateSpaceKey(Z)V
    .registers 12
    .parameter "isTapMode"

    .prologue
    .line 4162
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsCandShown:Z

    .line 4163
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v4, :cond_73

    .line 4164
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 4165
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4166
    .local v2, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v2, :cond_73

    .line 4167
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 4168
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_74

    .line 4169
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 4170
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v9, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 4172
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 4173
    iget v4, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v8, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate(IIII)V

    .line 4179
    .end local v0           #i:I
    .end local v1           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v2           #keyCount:I
    .end local v3           #keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_73
    return-void

    .line 4166
    .restart local v0       #i:I
    .restart local v1       #key:Landroid/inputmethodservice/Keyboard$Key;
    .restart local v2       #keyCount:I
    .restart local v3       #keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public isInMultiTap()Z
    .registers 2

    .prologue
    .line 7736
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    return v0
.end method

.method public isKeyLongPressed()Z
    .registers 2

    .prologue
    .line 5493
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .registers 2

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isShiftPressed()Z
    .registers 2

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsShiftedPressed:Z

    return v0
.end method

.method public isShifted()Z
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_b

    .line 1209
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 1211
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTapingBeforeTimeout()Z
    .registers 2

    .prologue
    .line 7740
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    return v0
.end method

.method protected isThisKeyEnable(I)Z
    .registers 12
    .parameter

    .prologue
    const/16 v9, -0x6f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3293
    .line 3294
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3295
    and-int/lit8 v3, v0, 0xf

    .line 3296
    and-int/lit16 v4, v0, 0xff0

    .line 3297
    const v5, 0xfff000

    and-int/2addr v0, v5

    .line 3298
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 3300
    const/16 v6, -0xff

    if-eq p1, v6, :cond_26

    const/16 v6, -0x100

    if-ne p1, v6, :cond_28

    :cond_26
    move v1, v2

    .line 3421
    :cond_27
    :goto_27
    return v1

    .line 3304
    :cond_28
    if-ltz p1, :cond_32

    const/16 v6, 0x20

    if-eq p1, v6, :cond_32

    const/16 v6, 0xa

    if-ne p1, v6, :cond_e9

    :cond_32
    if-eq p1, v9, :cond_e9

    .line 3308
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v7, :cond_46

    const/16 v0, -0x64

    if-eq p1, v0, :cond_44

    const/16 v0, -0xd3

    if-ne p1, v0, :cond_46

    :cond_44
    move v1, v2

    .line 3311
    goto :goto_27

    .line 3312
    :cond_46
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v7, :cond_58

    if-eqz v5, :cond_5e

    const-string v0, "NoSetting"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_58
    const/16 v0, -0x67

    if-ne p1, v0, :cond_5e

    move v1, v2

    .line 3315
    goto :goto_27

    .line 3316
    :cond_5e
    const/16 v0, -0x67

    if-ne p1, v0, :cond_7c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v1, :cond_7c

    :cond_7a
    move v1, v2

    .line 3320
    goto :goto_27

    .line 3321
    :cond_7c
    const/16 v0, -0x66

    if-ne p1, v0, :cond_8b

    .line 3322
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_27

    move v1, v2

    .line 3323
    goto :goto_27

    .line 3327
    :cond_8b
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_97

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v0, :cond_97

    move v1, v2

    .line 3328
    goto :goto_27

    .line 3329
    :cond_97
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_27

    .line 3330
    const/16 v0, -0x12c

    if-gt p1, v0, :cond_bc

    const/16 v0, -0x12d

    if-lt p1, v0, :cond_bc

    .line 3332
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-eqz v0, :cond_b3

    move v1, v2

    .line 3333
    goto/16 :goto_27

    .line 3335
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    if-nez v0, :cond_27

    move v1, v2

    .line 3338
    goto/16 :goto_27

    .line 3341
    :cond_bc
    const/16 v0, -0x130

    if-ne p1, v0, :cond_c9

    .line 3342
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    if-nez v0, :cond_27

    move v1, v2

    .line 3345
    goto/16 :goto_27

    .line 3347
    :cond_c9
    const/16 v0, -0x12e

    if-ne p1, v0, :cond_27

    .line 3348
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3349
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3350
    if-eqz v0, :cond_e7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e7

    move v0, v1

    :goto_e4
    move v1, v0

    .line 3355
    goto/16 :goto_27

    :cond_e7
    move v0, v2

    .line 3353
    goto :goto_e4

    .line 3361
    :cond_e9
    if-ne v3, v8, :cond_fa

    move v0, v2

    .line 3362
    :goto_ec
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    array-length v3, v3

    if-ge v0, v3, :cond_111

    .line 3363
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    aget-char v3, v3, v0

    if-eq p1, v3, :cond_27

    .line 3362
    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 3368
    :cond_fa
    if-ne v3, v7, :cond_140

    .line 3370
    const/16 v3, 0x3000

    if-ne v0, v3, :cond_114

    .line 3371
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3380
    :goto_10a
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_27

    :cond_111
    move v1, v2

    goto/16 :goto_27

    .line 3372
    :cond_114
    const/16 v3, 0x2000

    if-ne v0, v3, :cond_124

    .line 3373
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10a

    .line 3374
    :cond_124
    const/16 v3, 0x1000

    if-ne v0, v3, :cond_134

    .line 3375
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10a

    .line 3377
    :cond_134
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10a

    .line 3383
    :cond_140
    const/4 v0, 0x4

    if-ne v3, v0, :cond_177

    .line 3385
    const/16 v0, 0x10

    if-ne v4, v0, :cond_155

    .line 3386
    :goto_147
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    array-length v0, v0

    if-ge v2, v0, :cond_27

    .line 3387
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    aget-char v0, v0, v2

    if-eq p1, v0, :cond_27

    .line 3386
    add-int/lit8 v2, v2, 0x1

    goto :goto_147

    .line 3392
    :cond_155
    const/16 v0, 0x20

    if-ne v4, v0, :cond_167

    .line 3393
    :goto_159
    sget-object v0, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    array-length v0, v0

    if-ge v2, v0, :cond_27

    .line 3394
    sget-object v0, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    aget-char v0, v0, v2

    if-eq p1, v0, :cond_27

    .line 3393
    add-int/lit8 v2, v2, 0x1

    goto :goto_159

    .line 3399
    :cond_167
    if-nez v4, :cond_27

    .line 3400
    :goto_169
    sget-object v0, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    array-length v0, v0

    if-ge v2, v0, :cond_27

    .line 3401
    sget-object v0, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    aget-char v0, v0, v2

    if-eq p1, v0, :cond_27

    .line 3400
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    .line 3407
    :cond_177
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v8, :cond_194

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v8, :cond_18f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v7, :cond_194

    .line 3410
    :cond_18f
    if-ne p1, v9, :cond_27

    move v1, v2

    .line 3413
    goto/16 :goto_27

    .line 3415
    :cond_194
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v7, :cond_27

    const v0, 0xffe6

    if-ne p1, v0, :cond_27

    move v1, v2

    .line 3417
    goto/16 :goto_27
.end method

.method onBufferDraw()V
    .registers 37

    .prologue
    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    if-nez v3, :cond_34

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    if-eqz v3, :cond_ae

    .line 1732
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_78

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_78

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_78

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    if-eqz v3, :cond_72

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_78

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_78

    :cond_72
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    if-eqz v3, :cond_a6

    .line 1736
    :cond_78
    const/4 v3, 0x1

    :try_start_79
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1737
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1738
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_94} :catch_17d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_79 .. :try_end_94} :catch_187

    .line 1748
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1749
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    .line 1751
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 1752
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    .line 1755
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v0

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1757
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1759
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v3, :cond_233

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-nez v3, :cond_df

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-nez v3, :cond_df

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    if-eqz v3, :cond_233

    .line 1760
    :cond_df
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1761
    const/16 v4, 0xff

    const/16 v5, 0x5c

    const/16 v6, 0x5c

    const/16 v7, 0x5c

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1762
    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1763
    const/4 v4, 0x0

    .line 1764
    const/4 v3, 0x0

    .line 1766
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-eqz v5, :cond_191

    .line 1767
    const/4 v4, 0x3

    .line 1768
    const/4 v3, 0x6

    move v5, v4

    move v4, v3

    .line 1783
    :goto_104
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0200cb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1784
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v3, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1785
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0200cc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1786
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v8, v3, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 1790
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-eqz v6, :cond_1df

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    if-eqz v6, :cond_1df

    .line 1791
    const/4 v6, 0x1

    :goto_150
    if-gt v6, v5, :cond_1b5

    .line 1792
    const/4 v9, 0x0

    iget v10, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v11, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1793
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1794
    const/4 v9, 0x0

    iget v10, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v11, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x2

    neg-int v10, v10

    int-to-float v10, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1791
    add-int/lit8 v6, v6, 0x1

    goto :goto_150

    .line 1739
    :catch_17d
    move-exception v3

    .line 1740
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1741
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 2666
    :cond_186
    :goto_186
    return-void

    .line 1743
    :catch_187
    move-exception v3

    .line 1744
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1745
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_186

    .line 1769
    :cond_191
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-eqz v5, :cond_1a9

    .line 1770
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    if-eqz v3, :cond_1a3

    .line 1771
    const/4 v4, 0x3

    .line 1772
    const/4 v3, 0x1

    move v5, v4

    move v4, v3

    goto/16 :goto_104

    .line 1774
    :cond_1a3
    const/4 v4, 0x1

    .line 1775
    const/4 v3, 0x3

    move v5, v4

    move v4, v3

    goto/16 :goto_104

    .line 1777
    :cond_1a9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    if-eqz v5, :cond_18f7

    .line 1778
    const/4 v4, 0x1

    .line 1779
    const/4 v3, 0x6

    move v5, v4

    move v4, v3

    goto/16 :goto_104

    .line 1798
    :cond_1b5
    const/4 v5, 0x1

    :goto_1b6
    if-gt v5, v4, :cond_233

    .line 1799
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/lit8 v6, v6, -0x1

    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v8, v5

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1800
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1801
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/lit8 v6, v6, -0x1

    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v8, v5

    add-int/2addr v6, v8

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1798
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b6

    .line 1806
    :cond_1df
    const/4 v6, 0x1

    :goto_1e0
    if-gt v6, v5, :cond_209

    .line 1807
    const/4 v9, 0x0

    iget v10, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v11, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1808
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1809
    const/4 v9, 0x0

    iget v10, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v11, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x2

    neg-int v10, v10

    int-to-float v10, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1806
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e0

    .line 1813
    :cond_209
    const/4 v5, 0x1

    :goto_20a
    if-gt v5, v4, :cond_233

    .line 1814
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1815
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1816
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v6, v8

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1813
    add-int/lit8 v5, v5, 0x1

    goto :goto_20a

    .line 1821
    :cond_233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v3, :cond_186

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v19

    .line 1831
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v20

    .line 1832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v21

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v22, v0

    .line 1835
    const/16 v3, 0xff

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1836
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextColor:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1837
    const/4 v3, 0x0

    .line 1840
    if-eqz v22, :cond_18f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_18f4

    .line 1842
    move-object/from16 v0, v22

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v5, v5, v19

    add-int/lit8 v5, v5, -0x1

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_18f4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v5, v5, v20

    add-int/lit8 v5, v5, -0x1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_18f4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int v5, v5, v19

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_18f4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int v5, v5, v20

    add-int/lit8 v5, v5, 0x1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v4, :cond_18f4

    .line 1847
    const/4 v3, 0x1

    move v10, v3

    .line 1851
    :goto_2b6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    .line 1852
    const/4 v4, 0x0

    .line 1854
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelSize()I

    move-result v24

    .line 1855
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelSize()I

    move-result v25

    .line 1856
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEmoticonKeyLabelSize()I

    move-result v26

    .line 1857
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterkeyLabelSize()I

    move-result v27

    .line 1858
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelColor()I

    move-result v11

    .line 1859
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v12

    .line 1860
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentDisableKeyLabelColor()I

    move-result v28

    .line 1862
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentExtraKeyLabelSize()I

    move-result v29

    .line 1863
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentExtraKeyLabelColor()I

    move-result v30

    .line 1865
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWwwDotComKeyLabelSize()I

    move-result v31

    .line 1866
    const/4 v3, 0x0

    move v14, v3

    move v3, v4

    :goto_2e6
    move/from16 v0, v23

    if-ge v14, v0, :cond_18a1

    if-nez v3, :cond_18a1

    .line 1867
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    .line 1868
    if-eqz v10, :cond_2fe

    move-object/from16 v0, v22

    if-eq v0, v8, :cond_2fe

    .line 1866
    :goto_2fa
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_2e6

    .line 1872
    :cond_2fe
    if-eqz v10, :cond_18eb

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_18eb

    .line 1873
    const/4 v3, 0x1

    move v13, v3

    .line 1876
    :goto_306
    iget-object v4, v8, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1877
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1880
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-eqz v5, :cond_33a

    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_33a

    .line 1881
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5c6

    .line 1882
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v5

    if-eqz v5, :cond_5a1

    .line 1883
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1884
    if-eqz v3, :cond_18e8

    .line 1888
    :goto_32b
    const/4 v4, 0x0

    .line 1889
    const-string v5, ":-)"

    iput-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1890
    const v5, 0x7f050026

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v35, v4

    move-object v4, v3

    move-object/from16 v3, v35

    .line 1964
    :cond_33a
    :goto_33a
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1966
    invoke-virtual {v8}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v5

    .line 1967
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1970
    if-nez v3, :cond_745

    const/4 v3, 0x0

    .line 1977
    :goto_34f
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getExtraKeyLable(I)Ljava/lang/String;

    move-result-object v7

    .line 1980
    const/4 v5, 0x0

    .line 1981
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v9

    const/4 v15, 0x5

    if-ne v9, v15, :cond_36a

    .line 1982
    const/4 v4, 0x0

    .line 1983
    iget-object v9, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v9, v9, v15

    packed-switch v9, :pswitch_data_18fc

    .line 2073
    :cond_36a
    :goto_36a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v9

    if-eqz v9, :cond_37e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v9

    if-nez v9, :cond_18ee

    :cond_37e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v9

    const/4 v15, 0x5

    if-eq v9, v15, :cond_18ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v9

    const/4 v15, 0x4

    if-eq v9, v15, :cond_18ee

    iget-object v9, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v9, v9, v15

    const/16 v15, 0x20

    if-eq v9, v15, :cond_18ee

    iget-object v9, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v9, v9, v15

    const/16 v15, 0xa

    if-eq v9, v15, :cond_18ee

    if-eqz v4, :cond_18ee

    .line 2079
    const/4 v3, 0x0

    move-object v15, v3

    .line 2082
    :goto_3aa
    if-eqz v10, :cond_3b7

    .line 2083
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2084
    if-eqz v3, :cond_3b7

    .line 2085
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2089
    :cond_3b7
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2090
    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v9, v0, :cond_3cb

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v9, v3, :cond_3dc

    .line 2091
    :cond_3cb
    const/4 v3, 0x0

    const/4 v9, 0x0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v3, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2093
    :cond_3dc
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v3, v3, v19

    int-to-float v3, v3

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v9, v9, v20

    int-to-float v9, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2094
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2097
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x69

    if-ne v3, v6, :cond_8e2

    .line 2098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_429

    .line 2099
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_429

    .line 2100
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2101
    const/4 v6, 0x0

    const/4 v9, 0x0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v6, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2102
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2137
    :cond_429
    :goto_429
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x69

    if-eq v3, v6, :cond_43b

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x68

    if-ne v3, v6, :cond_9ab

    .line 2138
    :cond_43b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->drawArrowTextBox(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;)V

    .line 2182
    :cond_442
    :goto_442
    if-eqz v4, :cond_4b7

    .line 2183
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x69

    if-ne v3, v6, :cond_b5c

    .line 2184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4b7

    .line 2185
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    .line 2186
    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    .line 2187
    int-to-float v9, v3

    int-to-float v0, v6

    move/from16 v32, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2188
    const/4 v9, 0x0

    const/16 v32, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v33

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2189
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2190
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v6

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2224
    :cond_4b7
    :goto_4b7
    if-eqz v7, :cond_521

    const-string v3, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "3"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "5"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "6"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "7"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_509

    const-string v3, "9"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_521

    .line 2235
    :cond_509
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2236
    move/from16 v0, v29

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2237
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->drawExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V

    .line 2239
    :cond_521
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2240
    if-eqz v15, :cond_58d

    const-string v3, "StrEmpty"

    invoke-virtual {v15, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_58d

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_cc0

    .line 2242
    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2244
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_cbd

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_555
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2408
    :cond_55a
    :goto_55a
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-boolean v4, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 2409
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_10ed

    .line 2410
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v6, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2418
    :cond_57b
    :goto_57b
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x72

    if-ne v3, v4, :cond_1109

    .line 2638
    :cond_584
    :goto_584
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2641
    :cond_58d
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v3, v3

    sub-int v3, v3, v19

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v4, v4

    sub-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move v3, v13

    goto/16 :goto_2fa

    .line 1891
    :cond_5a1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isCurrentEnterActionIcon()Z

    move-result v5

    if-eqz v5, :cond_5b9

    .line 1892
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1893
    if-eqz v5, :cond_5b1

    .line 1895
    const/4 v3, 0x0

    move-object v4, v5

    .line 1897
    :cond_5b1
    const/4 v5, 0x0

    iput-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1898
    const/4 v5, 0x0

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1900
    :cond_5b9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1901
    const/4 v4, 0x0

    .line 1902
    const/4 v5, 0x0

    iput-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1903
    const/4 v5, 0x0

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1905
    :cond_5c6
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, -0x66

    if-ne v5, v6, :cond_614

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_60d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v3

    array-length v3, v3

    const/4 v6, 0x4

    if-lt v3, v6, :cond_60b

    const/4 v3, 0x1

    :goto_5f2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60d

    .line 1909
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_33a

    .line 1906
    :cond_60b
    const/4 v3, 0x0

    goto :goto_5f2

    .line 1911
    :cond_60d
    const/4 v4, 0x0

    .line 1912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    goto/16 :goto_33a

    .line 1914
    :cond_614
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, -0xc9

    if-ne v5, v6, :cond_64f

    .line 1915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v3, :cond_639

    .line 1916
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1917
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1918
    const/4 v5, 0x0

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1920
    :cond_639
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1921
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1922
    const v5, 0x7f050021

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1924
    :cond_64f
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_681

    .line 1925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v3, :cond_66b

    .line 1926
    const-string v3, ""

    iput-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1927
    const-string v3, ""

    .line 1928
    const/4 v5, 0x0

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1930
    :cond_66b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00b4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1931
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1932
    const v5, 0x7f050025

    iput v5, v8, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_33a

    .line 1934
    :cond_681
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeedChangeKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_33a

    .line 1935
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1936
    if-eqz v5, :cond_33a

    .line 1937
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v4, v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6d6

    iget-object v4, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    const/16 v6, -0x130

    if-ne v4, v6, :cond_6d6

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v3, :cond_6c8

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    goto/16 :goto_33a

    .line 1944
    :cond_6c8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    goto/16 :goto_33a

    .line 1946
    :cond_6d6
    iget-object v4, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    const/16 v6, 0x20

    if-ne v4, v6, :cond_718

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v4

    if-eqz v4, :cond_718

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_709

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    if-nez v3, :cond_709

    .line 1950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    goto/16 :goto_33a

    .line 1952
    :cond_709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    goto/16 :goto_33a

    .line 1954
    :cond_718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_72c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-nez v4, :cond_742

    :cond_72c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_742

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_742

    :cond_742
    move-object v4, v5

    goto/16 :goto_33a

    .line 1970
    :cond_745
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_756

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34f

    :cond_756
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v7, 0x20

    if-ne v5, v7, :cond_76f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v5

    if-eqz v5, :cond_76f

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34f

    :cond_76f
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v7, 0xa

    if-ne v5, v7, :cond_77e

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34f

    :cond_77e
    iget-object v5, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v7, -0x6f

    if-ne v5, v7, :cond_78d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34f

    :cond_78d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34f

    .line 1985
    :pswitch_799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 1986
    const-string v3, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18f1

    .line 1987
    const/4 v3, 0x0

    .line 1989
    :goto_7ab
    const-string v4, "1"

    move-object/from16 v35, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 1990
    goto/16 :goto_36a

    .line 1992
    :pswitch_7b5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 1993
    const-string v3, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c7

    .line 1994
    const/4 v4, 0x0

    .line 1996
    :cond_7c7
    const-string v3, "2"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 1997
    goto/16 :goto_36a

    .line 1999
    :pswitch_7d0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2000
    const-string v3, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e2

    .line 2001
    const/4 v4, 0x0

    .line 2003
    :cond_7e2
    const-string v3, "3"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2004
    goto/16 :goto_36a

    .line 2006
    :pswitch_7eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2007
    const-string v3, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7fd

    .line 2008
    const/4 v4, 0x0

    .line 2010
    :cond_7fd
    const-string v3, "4"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2011
    goto/16 :goto_36a

    .line 2013
    :pswitch_806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2014
    const-string v3, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_818

    .line 2015
    const/4 v4, 0x0

    .line 2017
    :cond_818
    const-string v3, "5"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2018
    goto/16 :goto_36a

    .line 2020
    :pswitch_821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2021
    const-string v3, "6"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_833

    .line 2022
    const/4 v4, 0x0

    .line 2024
    :cond_833
    const-string v3, "6"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2025
    goto/16 :goto_36a

    .line 2027
    :pswitch_83c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2028
    const-string v3, "7"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84e

    .line 2029
    const/4 v4, 0x0

    .line 2031
    :cond_84e
    const-string v3, "7"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2032
    goto/16 :goto_36a

    .line 2034
    :pswitch_857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2035
    const-string v3, "8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_869

    .line 2036
    const/4 v4, 0x0

    .line 2038
    :cond_869
    const-string v3, "8"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2039
    goto/16 :goto_36a

    .line 2041
    :pswitch_872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2042
    const-string v3, "9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_885

    .line 2043
    const/4 v4, 0x0

    .line 2045
    :cond_885
    const-string v3, "9"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2046
    goto/16 :goto_36a

    .line 2048
    :pswitch_88e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2049
    const-string v3, "10"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a1

    .line 2050
    const/4 v4, 0x0

    .line 2052
    :cond_8a1
    const-string v3, "10"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2053
    goto/16 :goto_36a

    .line 2055
    :pswitch_8aa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2056
    const-string v3, "11"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8bd

    .line 2057
    const/4 v4, 0x0

    .line 2059
    :cond_8bd
    const-string v3, "11"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    .line 2060
    goto/16 :goto_36a

    .line 2062
    :pswitch_8c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v5

    .line 2063
    const-string v3, "12"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d9

    .line 2064
    const/4 v4, 0x0

    .line 2066
    :cond_8d9
    const-string v3, "12"

    move-object/from16 v35, v3

    move-object v3, v5

    move-object/from16 v5, v35

    goto/16 :goto_36a

    .line 2105
    :cond_8e2
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x68

    if-ne v3, v6, :cond_91d

    .line 2106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_429

    .line 2107
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_429

    .line 2108
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2109
    const/4 v6, 0x0

    const/4 v9, 0x0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v6, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2110
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_429

    .line 2113
    :cond_91d
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x67

    if-ne v3, v6, :cond_429

    .line 2114
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    if-eqz v3, :cond_429

    .line 2115
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_971

    .line 2117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_965

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02009b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2122
    :goto_94d
    const/4 v6, 0x0

    const/4 v9, 0x0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v6, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2123
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_429

    .line 2120
    :cond_965
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_94d

    .line 2126
    :cond_971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_99f

    .line 2127
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02009a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2131
    :goto_987
    const/4 v6, 0x0

    const/4 v9, 0x0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v6, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2132
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_429

    .line 2129
    :cond_99f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02005f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_987

    .line 2139
    :cond_9ab
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0xd2

    if-eq v3, v6, :cond_9bd

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x100

    if-ne v3, v6, :cond_442

    .line 2142
    :cond_9bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2143
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2144
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2145
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_b07

    .line 2149
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2150
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v3

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x13

    div-int/lit8 v6, v6, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v9, v9, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v9, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2154
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v3

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x27

    div-int/lit8 v6, v6, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v9, v9, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v9, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2158
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v3

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x13

    div-int/lit8 v6, v6, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v9, v9, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v9, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2162
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v3

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x27

    div-int/lit8 v6, v6, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v9, v9, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v9, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2179
    :goto_afe
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_442

    .line 2167
    :cond_b07
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x100

    if-ne v3, v6, :cond_b1b

    .line 2168
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2169
    if-eqz v3, :cond_b1b

    .line 2170
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2173
    :cond_b1b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v3

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    iget v9, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v9, v9, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v9, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_afe

    .line 2192
    :cond_b5c
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, -0x68

    if-ne v3, v6, :cond_bcf

    .line 2193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4b7

    .line 2194
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x3

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    .line 2195
    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    .line 2196
    int-to-float v9, v3

    int-to-float v0, v6

    move/from16 v32, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2197
    const/4 v9, 0x0

    const/16 v32, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v33

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2198
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2199
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v6

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4b7

    .line 2202
    :cond_bcf
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsCandShown:Z

    if-nez v3, :cond_bdf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCandidateSuggestionListNum()I

    move-result v3

    if-lez v3, :cond_c5e

    :cond_bdf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-nez v3, :cond_c5e

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    const/16 v6, 0x20

    if-ne v3, v6, :cond_c5e

    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v3, :cond_c5e

    .line 2204
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getSpaceTapKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2206
    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    .line 2207
    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    .line 2208
    int-to-float v9, v4

    int-to-float v0, v6

    move/from16 v32, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2209
    const/4 v9, 0x0

    const/16 v32, 0x0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v33

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v3, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2210
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2211
    neg-int v3, v4

    int-to-float v3, v3

    neg-int v4, v6

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2212
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsCandShown:Z

    goto/16 :goto_4b7

    .line 2214
    :cond_c5e
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    .line 2215
    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    .line 2216
    int-to-float v9, v3

    int-to-float v0, v6

    move/from16 v32, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2217
    const/4 v9, 0x0

    const/16 v32, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v33

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2218
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2219
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v6

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4b7

    :cond_cbd
    move v3, v11

    .line 2244
    goto/16 :goto_555

    .line 2245
    :cond_cc0
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_ceb

    .line 2246
    move/from16 v0, v27

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2248
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_ce9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_ce2
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    :cond_ce9
    move v3, v12

    goto :goto_ce2

    .line 2249
    :cond_ceb
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v3, :cond_e96

    .line 2250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2252
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_d04

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    if-eqz v3, :cond_d61

    .line 2253
    :cond_d04
    move/from16 v0, v26

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2258
    :goto_d0c
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e8d

    .line 2259
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_d70

    .line 2260
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v3, :cond_d6a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-nez v3, :cond_d36

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-nez v3, :cond_d36

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    if-eqz v3, :cond_d6a

    .line 2261
    :cond_d36
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    .line 2266
    :goto_d3b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    .line 2267
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    .line 2268
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    .line 2269
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    .line 2270
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    .line 2271
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLabel:Ljava/lang/String;

    .line 2272
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    goto/16 :goto_55a

    .line 2255
    :cond_d61
    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_d0c

    .line 2263
    :cond_d6a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    goto :goto_d3b

    .line 2274
    :cond_d70
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v3, :cond_ded

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    if-nez v3, :cond_d88

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-nez v3, :cond_d88

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    if-eqz v3, :cond_ded

    .line 2275
    :cond_d88
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    .line 2279
    :goto_d8d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstUmlautMiniKeyboard:Z

    if-eqz v3, :cond_dfd

    add-int/lit8 v3, v23, -0x1

    if-ne v3, v14, :cond_dfd

    .line 2281
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPrevTouchX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 2282
    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_df3

    .line 2283
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 2288
    :goto_db6
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 2289
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    .line 2290
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    .line 2291
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    .line 2292
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    .line 2293
    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    .line 2294
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLabel:Ljava/lang/String;

    .line 2295
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstUmlautMiniKeyboard:Z

    .line 2296
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    goto/16 :goto_55a

    .line 2277
    :cond_ded
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonKey:Z

    goto :goto_d8d

    .line 2285
    :cond_df3
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_db6

    .line 2297
    :cond_dfd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstSymbolMiniKeyboard:Z

    if-nez v3, :cond_e0f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstDomainMiniKeyboard:Z

    if-nez v3, :cond_e0f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstEmoticonMiniKeyboard:Z

    if-eqz v3, :cond_e86

    .line 2298
    :cond_e0f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    if-gez v3, :cond_e1a

    .line 2299
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    .line 2302
    :cond_e1a
    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPrevTouchX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v6, v3, v4

    .line 2304
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    .line 2305
    add-int/lit8 v4, v23, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    .line 2306
    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_55a

    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v0, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    add-int v9, v9, v32

    int-to-float v9, v9

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_55a

    iget v4, v4, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-ne v4, v6, :cond_55a

    .line 2307
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 2308
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    .line 2309
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateX:I

    .line 2310
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTranslateY:I

    .line 2311
    iget v6, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyWidth:I

    .line 2312
    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyHeight:I

    .line 2313
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLabel:Ljava/lang/String;

    .line 2314
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstUmlautMiniKeyboard:Z

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    goto/16 :goto_55a

    .line 2319
    :cond_e86
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboardOn:Z

    goto/16 :goto_55a

    .line 2323
    :cond_e8d
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2326
    :cond_e96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f67

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x12c

    if-gt v3, v4, :cond_f67

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x130

    if-lt v3, v4, :cond_f67

    .line 2329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2330
    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2332
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x12f

    if-ne v3, v4, :cond_ef5

    .line 2333
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_eec

    .line 2334
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_eea

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_ee3
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    :cond_eea
    move v3, v12

    goto :goto_ee3

    .line 2336
    :cond_eec
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2338
    :cond_ef5
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x130

    if-ne v3, v4, :cond_f3f

    .line 2339
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f36

    .line 2340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v3, :cond_f25

    .line 2341
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_f23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_f1c
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    :cond_f23
    move v3, v12

    goto :goto_f1c

    .line 2343
    :cond_f25
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_f34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_f2d
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    :cond_f34
    move v3, v11

    goto :goto_f2d

    .line 2346
    :cond_f36
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2349
    :cond_f3f
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f5e

    .line 2350
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_f5c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_f55
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    :cond_f5c
    move v3, v11

    goto :goto_f55

    .line 2352
    :cond_f5e
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2355
    :cond_f67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_fe7

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_fe7

    .line 2357
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2358
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_faa

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_f8c
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_fc2

    .line 2362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_55a

    .line 2358
    :cond_faa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_fc0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_fc0

    move v3, v12

    goto :goto_f8c

    :cond_fc0
    move v3, v11

    goto :goto_f8c

    .line 2364
    :cond_fc2
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_fe5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_fca
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2366
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v3, :cond_55a

    .line 2367
    const/16 v3, 0x80

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_55a

    :cond_fe5
    move v3, v11

    .line 2364
    goto :goto_fca

    .line 2370
    :cond_fe7
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v3

    if-nez v3, :cond_1001

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v3

    if-eqz v3, :cond_1056

    .line 2371
    :cond_1001
    move/from16 v0, v25

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2372
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x66

    if-ne v3, v4, :cond_1041

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v3

    if-eqz v3, :cond_1041

    .line 2373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2378
    :goto_1025
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    if-eqz v3, :cond_104d

    .line 2380
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_104b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_103a
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2375
    :cond_1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1025

    :cond_104b
    move v3, v11

    .line 2380
    goto :goto_103a

    .line 2382
    :cond_104d
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2385
    :cond_1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_106b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_109d

    :cond_106b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v3

    if-nez v3, :cond_109d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v3

    if-nez v3, :cond_109d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v3

    if-nez v3, :cond_109d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v3

    if-nez v3, :cond_109d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v3

    if-eqz v3, :cond_10cf

    .line 2388
    :cond_109d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2393
    :goto_10a6
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10d9

    .line 2394
    move/from16 v0, v26

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2399
    :goto_10b2
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10e4

    .line 2400
    iget-boolean v3, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_10e2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    :goto_10c8
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2390
    :cond_10cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_10a6

    .line 2396
    :cond_10d9
    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_10b2

    :cond_10e2
    move v3, v11

    .line 2400
    goto :goto_10c8

    .line 2402
    :cond_10e4
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_55a

    .line 2412
    :cond_10ed
    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_57b

    .line 2413
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    const/high16 v4, -0x4080

    const/high16 v6, -0x4080

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v6, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_57b

    .line 2422
    :cond_1109
    if-eqz v7, :cond_133c

    .line 2423
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v3, :cond_1206

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1167

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v3

    if-eqz v3, :cond_1167

    .line 2426
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3e99999a

    mul-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2430
    :cond_1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_11c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_11c7

    .line 2433
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xb

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2438
    :cond_11c7
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2444
    :cond_1206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1252

    .line 2446
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3e99999a

    mul-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2451
    :cond_1252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_129d

    .line 2452
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3f19999a

    mul-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2456
    :cond_129d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_12fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_12fd

    .line 2459
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xb

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2464
    :cond_12fd
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2470
    :cond_133c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13ae

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13ae

    .line 2472
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v3, :cond_13a5

    .line 2473
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2477
    :goto_1366
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2475
    :cond_13a5
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1366

    .line 2493
    :cond_13ae
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1420

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1420

    .line 2495
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v3, :cond_1417

    .line 2496
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2500
    :goto_13d8
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2498
    :cond_1417
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_13d8

    .line 2516
    :cond_1420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1503

    .line 2518
    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    .line 2520
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExceptMonthLocale()Z

    move-result v4

    if-nez v4, :cond_1440

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147f

    .line 2521
    :cond_1440
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2526
    :cond_147f
    if-eqz v5, :cond_14c1

    .line 2527
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3e2e147b

    mul-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2533
    :cond_14c1
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f266666

    mul-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2538
    :cond_1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1558

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1558

    .line 2540
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2544
    :cond_1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_16d4

    iget-object v3, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_16d4

    .line 2547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-nez v3, :cond_15d7

    .line 2548
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    const/4 v5, 0x0

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/drawable/Drawable;IILandroid/inputmethodservice/Keyboard$Key;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    .line 2552
    :goto_1582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    if-eqz v3, :cond_15ac

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_584

    .line 2561
    :cond_15ac
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    new-array v6, v3, [F

    .line 2562
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v6}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_15df

    const v3, 0x3e99999a

    .line 2564
    :goto_15c4
    const/4 v5, 0x0

    .line 2565
    const/4 v4, 0x0

    :goto_15c6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_15e3

    .line 2566
    int-to-float v5, v5

    aget v7, v6, v4

    add-float/2addr v5, v7

    const/high16 v7, 0x3f00

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2565
    add-int/lit8 v4, v4, 0x1

    goto :goto_15c6

    .line 2550
    :cond_15d7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    invoke-virtual {v3, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setKey(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_1582

    .line 2563
    :cond_15df
    const v3, 0x3dcccccd

    goto :goto_15c4

    .line 2569
    :cond_15e3
    iget-boolean v4, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v4, :cond_1694

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 2571
    :goto_15eb
    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 2572
    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 2573
    int-to-float v7, v5

    int-to-float v9, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2574
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2575
    neg-int v4, v5

    int-to-float v4, v4

    neg-int v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2577
    iget-boolean v4, v8, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v4, :cond_16b4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 2579
    :goto_163d
    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v5, v5

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    sub-float v3, v5, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 2580
    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 2581
    int-to-float v6, v3

    int-to-float v7, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2582
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2583
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_584

    .line 2569
    :cond_1694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_16ae

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v4

    if-nez v4, :cond_16ae

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_15eb

    :cond_16ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_15eb

    .line 2577
    :cond_16b4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_16ce

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v4

    if-nez v4, :cond_16ce

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_163d

    :cond_16ce
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_163d

    .line 2585
    :cond_16d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v3

    if-eqz v3, :cond_1848

    .line 2586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v3

    if-eqz v3, :cond_1753

    const-string v3, "1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "2"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "3"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "4"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "5"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "6"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "7"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "8"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "9"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "0"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "*"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1748

    const-string v3, "#"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1753

    .line 2599
    :cond_1748
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v15, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->drawPhoneModeExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V

    goto/16 :goto_584

    .line 2601
    :cond_1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceHelverica:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2602
    const-string v3, "Pause"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_176c

    const-string v3, "Wait"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b5

    .line 2603
    :cond_176c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_EXTRA_STRING_LABEL_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2604
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2608
    :cond_17b5
    const-string v3, "*"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1809

    .line 2609
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_NUMBER_SYMBOLSTAR_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2610
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4120

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2615
    :cond_1809
    iget v3, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2623
    :cond_1848
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    if-eqz v3, :cond_184e

    .line 2626
    :cond_184e
    const/4 v3, 0x0

    .line 2627
    const-string v4, "@()\u00bf\u00a1\u00ab\u00bb<>{}[]\u00a7\u00a2"

    .line 2628
    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1860

    .line 2629
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const v4, 0x3f333333

    mul-float/2addr v3, v4

    .line 2631
    :cond_1860
    iget v4, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float v3, v5, v3

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v4, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_584

    .line 2643
    :cond_18a1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 2646
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v3, :cond_18b6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_18d9

    .line 2647
    :cond_18b6
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 2648
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBackgroundDimAmount:F

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2649
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v3, v16

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2664
    :cond_18d9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setFlagDrawPending(Z)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_186

    :cond_18e8
    move-object v3, v4

    goto/16 :goto_32b

    :cond_18eb
    move v13, v3

    goto/16 :goto_306

    :cond_18ee
    move-object v15, v3

    goto/16 :goto_3aa

    :cond_18f1
    move-object v3, v4

    goto/16 :goto_7ab

    :cond_18f4
    move v10, v3

    goto/16 :goto_2b6

    :cond_18f7
    move v5, v4

    move v4, v3

    goto/16 :goto_104

    .line 1983
    nop

    :pswitch_data_18fc
    .packed-switch -0x98
        :pswitch_8c6
        :pswitch_8aa
        :pswitch_88e
        :pswitch_872
        :pswitch_857
        :pswitch_83c
        :pswitch_821
        :pswitch_806
        :pswitch_7eb
        :pswitch_7d0
        :pswitch_7b5
        :pswitch_799
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 1274
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 5440
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5441
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->closing()V

    .line 5442
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1715
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1719
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getFlagDrawPending()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    if-eqz v0, :cond_19

    .line 1720
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 1723
    :cond_19
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 1724
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1726
    :cond_23
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x64

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4234
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 4312
    :cond_10
    :goto_10
    return v0

    .line 4237
    :cond_11
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/4 v3, -0x3

    if-ne v2, v3, :cond_21

    .line 4238
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v1

    .line 4239
    goto :goto_10

    .line 4240
    :cond_21
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    if-ne v2, v6, :cond_32

    .line 4241
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    const/16 v2, -0x65

    invoke-interface {v0, v2, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v1

    .line 4242
    goto :goto_10

    .line 4246
    :cond_32
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, -0x67

    if-ne v2, v3, :cond_48

    .line 4247
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 4248
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    move v0, v1

    .line 4249
    goto :goto_10

    .line 4251
    :cond_48
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v2

    .line 4252
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 4254
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v3, :cond_10

    .line 4257
    if-eqz v2, :cond_59

    .line 4258
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    :cond_57
    :goto_57
    move v0, v1

    .line 4312
    goto :goto_10

    .line 4260
    :cond_59
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getExtraKeyLable(I)Ljava/lang/String;

    move-result-object v2

    .line 4261
    if-eqz v2, :cond_79

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    if-ne v3, v1, :cond_71

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v3

    if-nez v3, :cond_79

    .line 4264
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_57

    .line 4266
    :cond_79
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_be

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_be

    .line 4267
    const-string v2, "1234567890/@._-,"

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v6, :cond_ad

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    if-ltz v2, :cond_ad

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_ad

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_57

    .line 4271
    :cond_ad
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4272
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v2

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v0

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v2, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_57

    .line 4275
    :cond_be
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    if-ne v3, v1, :cond_106

    .line 4277
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 4278
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_e7

    move v2, v0

    .line 4291
    :goto_d7
    if-eqz v2, :cond_10

    .line 4292
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4293
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto/16 :goto_57

    .line 4280
    :cond_e7
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0x30

    if-ne v2, v3, :cond_f2

    .line 4281
    const/16 v2, 0x2b

    goto :goto_d7

    .line 4282
    :cond_f2
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0x23

    if-ne v2, v3, :cond_104

    move v2, v0

    goto :goto_d7

    .line 4286
    :cond_fc
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_104

    :cond_104
    move v2, v0

    goto :goto_d7

    .line 4297
    :cond_106
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_10

    .line 4298
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v3

    if-eqz v3, :cond_136

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_136

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 4299
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4300
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    const/16 v2, 0x2b

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto/16 :goto_57

    .line 4301
    :cond_136
    if-nez v2, :cond_57

    goto/16 :goto_10
.end method

.method public onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_1d

    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setMeasuredDimension(II)V

    .line 1414
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showActionPopup()V

    .line 1416
    return-void

    .line 1406
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 1407
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_3a

    .line 1408
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1410
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setMeasuredDimension(II)V

    goto :goto_19
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 18
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    .line 5218
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5220
    const/4 v1, 0x1

    .line 5385
    :goto_9
    return v1

    .line 5222
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int v3, v1, v2

    .line 5223
    .local v3, touchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v2

    sub-int v4, v1, v2

    .line 5224
    .local v4, touchY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 5225
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 5227
    .local v5, eventTime:J
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    if-eqz v1, :cond_48

    if-nez v7, :cond_48

    .line 5228
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v9

    check-cast v9, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 5229
    .local v9, kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v9, :cond_48

    .line 5230
    iget-boolean v1, v9, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    if-eqz v1, :cond_98

    .line 5231
    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 5238
    .end local v9           #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_48
    :goto_48
    iput-wide v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldEventTime:J

    .line 5239
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPossiblePoly:Z

    .line 5241
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIndices(II[I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 5242
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6b

    .line 5244
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v3, v4}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v11

    .line 5245
    .local v11, keyIndices:[I
    if-eqz v11, :cond_6b

    array-length v1, v11

    if-lez v1, :cond_6b

    .line 5246
    invoke-virtual {p0, v3, v4, v11}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTheNearestKeyIndex(II[I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 5249
    .end local v11           #keyIndices:[I
    :cond_6b
    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 5252
    .local v10, keyIndex:I
    if-nez v7, :cond_74

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->clear()V

    .line 5253
    :cond_74
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5255
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 5256
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 5257
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5258
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5259
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 5233
    .end local v10           #keyIndex:I
    .restart local v9       #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_98
    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_48

    .line 5264
    .end local v9           #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v10       #keyIndex:I
    :cond_b0
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 5265
    :cond_bc
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 5268
    :cond_bf
    packed-switch v7, :pswitch_data_278

    .line 5383
    :goto_c2
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    .line 5384
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    .line 5385
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 5270
    :pswitch_c9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 5271
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartX:I

    .line 5272
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartY:I

    .line 5273
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 5274
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 5275
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 5276
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5277
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 5278
    iput v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5279
    iput v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    .line 5280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    .line 5281
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .line 5282
    invoke-virtual {p0, v5, v6, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->checkMultiTap(JI)V

    .line 5285
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    if-nez v1, :cond_10d

    .line 5286
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    const/4 v1, -0x1

    if-eq v10, v1, :cond_152

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    aget v1, v1, v13

    :goto_10a
    invoke-interface {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 5289
    :cond_10d
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ltz v1, :cond_138

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v1, v1, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v1, :cond_138

    .line 5290
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 5291
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->repeatKey()Z

    .line 5292
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 5293
    .local v12, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x190

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5295
    .end local v12           #msg:Landroid/os/Message;
    :cond_138
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14d

    .line 5296
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 5297
    .restart local v12       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x320

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5299
    .end local v12           #msg:Landroid/os/Message;
    :cond_14d
    invoke-virtual {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    goto/16 :goto_c2

    .line 5286
    :cond_152
    const/4 v1, 0x0

    goto :goto_10a

    .line 5304
    :pswitch_154
    const/4 v8, 0x0

    .line 5305
    .local v8, continueLongPress:Z
    const/4 v1, -0x1

    if-eq v10, v1, :cond_176

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v1, :cond_176

    .line 5306
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_196

    .line 5307
    iput v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5308
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    sub-long v1, v5, v1

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5326
    :goto_169
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    if-eq v10, v1, :cond_176

    .line 5327
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5328
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 5331
    :cond_176
    if-nez v8, :cond_191

    .line 5333
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5335
    const/4 v1, -0x1

    if-eq v10, v1, :cond_191

    .line 5336
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 5337
    .restart local v12       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x320

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5340
    .end local v12           #msg:Landroid/os/Message;
    :cond_191
    invoke-virtual {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    goto/16 :goto_c2

    .line 5310
    :cond_196
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ne v10, v1, :cond_1a5

    .line 5311
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    sub-long v13, v5, v13

    add-long/2addr v1, v13

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5312
    const/4 v8, 0x1

    goto :goto_169

    .line 5314
    :cond_1a5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 5316
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    aget v1, v1, v13

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onChange(I)V

    .line 5318
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 5319
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 5320
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 5321
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v1, v5

    iget-wide v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    sub-long/2addr v1, v13

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 5322
    iput v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5323
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto :goto_169

    .line 5345
    .end local v8           #continueLongPress:Z
    :pswitch_1db
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5346
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5347
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5348
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ne v10, v1, :cond_261

    .line 5349
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    sub-long v13, v5, v13

    add-long/2addr v1, v13

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5357
    :goto_1fa
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    cmp-long v1, v1, v13

    if-gez v1, :cond_213

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_213

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_213

    .line 5358
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5359
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 5360
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 5362
    :cond_213
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 5363
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 5366
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_230

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_230

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v1, :cond_230

    .line 5367
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 5370
    :cond_230
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-nez v1, :cond_25c

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25c

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25c

    if-nez p2, :cond_25c

    .line 5373
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 5374
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 5375
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 5376
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 5380
    :cond_25c
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_c2

    .line 5351
    :cond_261
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 5352
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 5353
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v1, v5

    iget-wide v13, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    sub-long/2addr v1, v13

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 5354
    iput v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5355
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto :goto_1fa

    .line 5268
    nop

    :pswitch_data_278
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_1db
        :pswitch_154
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1538
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1541
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 32
    .parameter "me"

    .prologue
    .line 5041
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 5042
    .local v20, crntPointCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .line 5043
    .local v18, action:I
    const/16 v26, 0x0

    .line 5044
    .local v26, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 5045
    .local v3, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v6

    sub-int v27, v5, v6

    .line 5046
    .local v27, touchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mVerticalCorrection:I

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v6

    sub-int v28, v5, v6

    .line 5048
    .local v28, touchY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sput v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPrevTouchX:F

    .line 5049
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sput v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPrevTouchY:F

    .line 5051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v5}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v23

    .line 5053
    .local v23, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/inputmethodservice/Keyboard$Key;

    .line 5055
    .local v24, mKeys:[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIndices(II[I)I

    move-result v22

    .line 5058
    .local v22, keyIndex:I
    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_134

    aget-object v5, v24, v22

    iget-object v5, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v19, v5, v6

    .line 5060
    .local v19, code:I
    :goto_62
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_8d

    .line 5061
    const/4 v5, -0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_85

    .line 5062
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->IsOneTimeShift()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 5063
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 5064
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 5066
    :cond_7f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 5069
    :cond_85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 5072
    :cond_8d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a3

    const/4 v5, 0x2

    move/from16 v0, v20

    if-ne v0, v5, :cond_a3

    .line 5074
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 5084
    :cond_a3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    move/from16 v0, v20

    if-eq v0, v5, :cond_1ea

    .line 5085
    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_17e

    .line 5086
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-eqz v5, :cond_138

    .line 5087
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_c0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 5088
    :cond_c0
    const/16 v26, 0x1

    .line 5146
    :cond_c2
    :goto_c2
    const/4 v5, 0x2

    move/from16 v0, v20

    if-ne v0, v5, :cond_12d

    .line 5147
    const/4 v5, 0x5

    move/from16 v0, v18

    if-eq v0, v5, :cond_d2

    const/16 v5, 0x105

    move/from16 v0, v18

    if-ne v0, v5, :cond_276

    .line 5149
    :cond_d2
    const/4 v8, 0x0

    .line 5150
    .local v8, x:F
    const/4 v9, 0x0

    .line 5151
    .local v9, y:F
    const/4 v5, 0x5

    move/from16 v0, v18

    if-ne v0, v5, :cond_236

    .line 5152
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    if-nez v5, :cond_10a

    .line 5154
    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .end local v8           #x:F
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .end local v9           #y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 5156
    .local v29, up:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5157
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 5160
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_10a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 5161
    .restart local v8       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 5162
    .restart local v9       #y:F
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 5176
    :goto_117
    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v21

    .line 5178
    .local v21, down:Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5179
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 5212
    .end local v8           #x:F
    .end local v9           #y:F
    .end local v21           #down:Landroid/view/MotionEvent;
    :cond_12d
    :goto_12d
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    .line 5214
    return v26

    .line 5058
    .end local v19           #code:I
    :cond_134
    const/16 v19, 0x0

    goto/16 :goto_62

    .line 5089
    .restart local v19       #code:I
    :cond_138
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    if-eqz v5, :cond_14c

    .line 5090
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_148

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 5091
    :cond_148
    const/16 v26, 0x1

    goto/16 :goto_c2

    .line 5094
    :cond_14c
    if-nez v18, :cond_16e

    .line 5095
    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v21

    .line 5097
    .restart local v21       #down:Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5098
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_c2

    .line 5101
    .end local v21           #down:Landroid/view/MotionEvent;
    :cond_16e
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_c2

    .line 5102
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    goto/16 :goto_c2

    .line 5106
    :cond_17e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-nez v5, :cond_c2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    if-nez v5, :cond_c2

    .line 5110
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 5112
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5113
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 5117
    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_c2

    const/4 v5, -0x5

    move/from16 v0, v19

    if-eq v0, v5, :cond_c2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v5

    if-nez v5, :cond_c2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c2

    .line 5120
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 5121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 5122
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 5123
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    goto/16 :goto_c2

    .line 5128
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_1ea
    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_232

    .line 5129
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-eqz v5, :cond_203

    .line 5130
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_1ff

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 5131
    :cond_1ff
    const/16 v26, 0x1

    goto/16 :goto_c2

    .line 5132
    :cond_203
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    if-eqz v5, :cond_217

    .line 5133
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_213

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 5134
    :cond_213
    const/16 v26, 0x1

    goto/16 :goto_c2

    .line 5136
    :cond_217
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerX:F

    .line 5138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerY:F

    goto/16 :goto_c2

    .line 5142
    :cond_232
    const/16 v26, 0x1

    goto/16 :goto_c2

    .line 5164
    .restart local v8       #x:F
    .restart local v9       #y:F
    :cond_236
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_261

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-nez v5, :cond_261

    .line 5166
    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .end local v8           #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .end local v9           #y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 5168
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5169
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 5172
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_261
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 5173
    .restart local v8       #x:F
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 5174
    .restart local v9       #y:F
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    goto/16 :goto_117

    .line 5180
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_276
    const/4 v5, 0x6

    move/from16 v0, v18

    if-eq v0, v5, :cond_281

    const/16 v5, 0x106

    move/from16 v0, v18

    if-ne v0, v5, :cond_2ec

    .line 5182
    :cond_281
    const/4 v5, 0x6

    move/from16 v0, v18

    if-ne v0, v5, :cond_2b6

    .line 5183
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-eqz v5, :cond_295

    .line 5184
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 5185
    const/16 v26, 0x1

    goto/16 :goto_12d

    .line 5187
    :cond_295
    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    move-wide v10, v3

    move-wide v12, v3

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 5189
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5190
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_12d

    .line 5193
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_2b6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    if-eqz v5, :cond_2c5

    .line 5194
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 5195
    const/16 v26, 0x1

    goto/16 :goto_12d

    .line 5197
    :cond_2c5
    const/4 v14, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    move-wide v10, v3

    move-wide v12, v3

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 5199
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5200
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_12d

    .line 5203
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_2ec
    const/4 v5, 0x2

    move/from16 v0, v18

    if-ne v0, v5, :cond_12d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    if-eqz v5, :cond_12d

    .line 5204
    const/4 v14, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    move-wide v10, v3

    move-wide v12, v3

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v25

    .line 5206
    .local v25, move:Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 5207
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerX:F

    .line 5208
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerY:F

    goto/16 :goto_12d
.end method

.method popupMiniKeyboard()Z
    .registers 4

    .prologue
    .line 4365
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 4366
    .local v0, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    return v1
.end method

.method public releaseSlidingDrawable()V
    .registers 2

    .prologue
    .line 8739
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    if-eqz v0, :cond_7

    .line 8740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingSpace:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    .line 8742
    :cond_7
    return-void
.end method

.method public removeActionPopup()V
    .registers 2

    .prologue
    .line 7968
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 7969
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7971
    :cond_9
    return-void
.end method

.method public removeAllMsg()V
    .registers 3

    .prologue
    .line 5404
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5405
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5406
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5407
    return-void
.end method

.method repeatKey()Z
    .registers 9

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    .line 5391
    .local v7, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    if-le v0, v1, :cond_1a

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-nez v0, :cond_22

    .line 5393
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5394
    const/4 v0, 0x0

    .line 5400
    :goto_21
    return v0

    .line 5397
    :cond_22
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 5398
    .local v6, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 5399
    const/4 v7, 0x0

    .line 5400
    const/4 v0, 0x1

    goto :goto_21
.end method

.method resetMultiTap()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5463
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 5464
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 5465
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    .line 5466
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 5467
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    .line 5468
    return-void
.end method

.method public saveSymbolHistoryToPreference()V
    .registers 8

    .prologue
    const/16 v2, 0x14

    .line 3663
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 3675
    :goto_6
    return-void

    .line 3666
    :cond_7
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3667
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3668
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_40

    .line 3669
    .local v2, itemCount:I
    :goto_19
    const-string v4, ""

    .line 3670
    .local v4, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v2, :cond_47

    .line 3671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3670
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 3668
    .end local v1           #i:I
    .end local v2           #itemCount:I
    .end local v4           #temp:Ljava/lang/String;
    :cond_40
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_19

    .line 3673
    .restart local v1       #i:I
    .restart local v2       #itemCount:I
    .restart local v4       #temp:Ljava/lang/String;
    :cond_47
    const-string v5, "usersymbollist"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method public setIsDomainAllKeyboard(Z)V
    .registers 2
    .parameter "isDonainAll"

    .prologue
    .line 7895
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    .line 7896
    return-void
.end method

.method public setIsEmoticonsKeyboard(Z)V
    .registers 2
    .parameter "isEmo"

    .prologue
    .line 7898
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    .line 7899
    return-void
.end method

.method public setIsFirtDomain(Z)V
    .registers 2
    .parameter "isFirst"

    .prologue
    .line 8392
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstDomainMiniKeyboard:Z

    .line 8393
    return-void
.end method

.method public setIsFirtEmoticon(Z)V
    .registers 2
    .parameter "isFirst"

    .prologue
    .line 8395
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstEmoticonMiniKeyboard:Z

    .line 8396
    return-void
.end method

.method public setIsFirtSymbol(Z)V
    .registers 2
    .parameter "isFirst"

    .prologue
    .line 8389
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstSymbolMiniKeyboard:Z

    .line 8390
    return-void
.end method

.method public setIsFirtUmlaut(Z)V
    .registers 2
    .parameter "isFirst"

    .prologue
    .line 8386
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsFirstUmlautMiniKeyboard:Z

    .line 8387
    return-void
.end method

.method public setIsMiniKeyboard(Z)V
    .registers 2
    .parameter "isMini"

    .prologue
    .line 7879
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    .line 7880
    return-void
.end method

.method public setIsModeChangeMiniKeyboard(Z)V
    .registers 2
    .parameter "isMini"

    .prologue
    .line 7883
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    .line 7884
    return-void
.end method

.method public setIsSymbolsKeyboard(Z)V
    .registers 2
    .parameter "isSym"

    .prologue
    .line 7902
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    .line 7903
    return-void
.end method

.method public setIsUmlautMiniKeyboard(Z)V
    .registers 2
    .parameter "isUmlaut"

    .prologue
    .line 8399
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    .line 8400
    return-void
.end method

.method public setIsVerticalMiniKeyboard(Z)V
    .registers 2
    .parameter "setIsVertical"

    .prologue
    .line 7906
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    .line 7907
    return-void
.end method

.method public setKeyLongPressed(Z)V
    .registers 2
    .parameter "keyLongPressed"

    .prologue
    .line 5497
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    .line 5498
    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 6
    .parameter "keyboard"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1125
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_9

    .line 1126
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 1128
    :cond_9
    if-nez p1, :cond_c

    .line 1172
    :goto_b
    return-void

    .line 1134
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeAllMsg()V

    .line 1135
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 1137
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->updateActionPopup()V

    .line 1139
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->requestLayout()V

    .line 1141
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 1142
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 1144
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_32

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1146
    .local v0, viewBG:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    .line 1154
    .end local v0           #viewBG:Landroid/graphics/drawable/Drawable;
    :cond_32
    :goto_32
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    .line 1158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1161
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 1165
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 1167
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 1168
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 1169
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentSpaceKeyIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    goto :goto_b

    .line 1149
    .restart local v0       #viewBG:Landroid/graphics/drawable/Drawable;
    :cond_49
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_32
.end method

.method public setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 1106
    return-void
.end method

.method public setOneTimeShift(Z)V
    .registers 2
    .parameter "isOneTime"

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsOneTimeShift:Z

    .line 583
    return-void
.end method

.method public setPopupOffset(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1242
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetX:I

    .line 1243
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetY:I

    .line 1244
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1245
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1247
    :cond_11
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 1239
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .registers 2
    .parameter "previewEnabled"

    .prologue
    .line 1221
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    .line 1222
    return-void
.end method

.method public setShiftPressed(Z)V
    .registers 2
    .parameter "isPressed"

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsShiftedPressed:Z

    .line 571
    return-void
.end method

.method public setShifted(Z)Z
    .registers 3
    .parameter "shifted"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_11

    .line 1191
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1193
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 1195
    const/4 v0, 0x1

    .line 1198
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public showActionPopup()V
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 7938
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    .line 7939
    .local v0, action:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCustomExtractViewEnabled()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v4

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v4

    if-nez v4, :cond_40

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->hasAction()Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3c

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3c

    if-ne v0, v5, :cond_40

    :cond_3c
    const/4 v1, 0x1

    .line 7947
    .local v1, show:Z
    :goto_3d
    if-nez v1, :cond_42

    .line 7965
    :cond_3f
    :goto_3f
    return-void

    .end local v1           #show:Z
    :cond_40
    move v1, v3

    .line 7939
    goto :goto_3d

    .line 7949
    .restart local v1       #show:Z
    :cond_42
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-nez v4, :cond_49

    .line 7951
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initActionPopup()V

    .line 7954
    :cond_49
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3f

    .line 7955
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v4

    if-eqz v4, :cond_77

    const/16 v2, -0xa4

    .line 7956
    .local v2, y:I
    :goto_57
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 7957
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupY:I

    if-eq v4, v2, :cond_74

    .line 7958
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7963
    :cond_74
    :goto_74
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupY:I

    goto :goto_3f

    .line 7955
    .end local v2           #y:I
    :cond_77
    const/16 v2, -0x72

    goto :goto_57

    .line 7961
    .restart local v2       #y:I
    :cond_7a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p0, v5, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_74
.end method

.method showPreview(I)V
    .registers 16
    .parameter

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 3739
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 3740
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 3743
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 3746
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 3748
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v2, v0, :cond_6d

    .line 3749
    if-eq v2, v5, :cond_3f

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3f

    .line 3750
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-ne v1, v5, :cond_ba

    move v1, v6

    :goto_39
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 3751
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateKey(I)V

    .line 3753
    :cond_3f
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v5, :cond_6d

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v1, :cond_6d

    .line 3754
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 3755
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateKey(I)V

    .line 3759
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_5f1

    if-ltz p1, :cond_5f1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5f1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_5f1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_5f1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isBubblePreviewOn()Z

    move-result v0

    if-eqz v0, :cond_5f1

    move v8, v6

    .line 3771
    :goto_a4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_bd

    .line 3772
    :cond_ae
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4044
    :cond_b9
    :goto_b9
    return-void

    :cond_ba
    move v1, v7

    .line 3750
    goto/16 :goto_39

    .line 3775
    :cond_bd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12a

    move v0, v6

    .line 3777
    :goto_cc
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v5, :cond_11e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v1, v4, :cond_11e

    if-nez v0, :cond_12c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-eqz v0, :cond_12c

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_12c

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_12c

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 3784
    :cond_11e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b9

    :cond_12a
    move v0, v7

    .line 3775
    goto :goto_cc

    .line 3788
    :cond_12c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShown()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 3789
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b9

    .line 3793
    :cond_13f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    .line 3794
    if-nez v8, :cond_1a6

    .line 3795
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPreviewEnabled()Z

    move-result v1

    if-eqz v1, :cond_199

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-ne v1, v11, :cond_199

    const/4 v1, 0x3

    if-eq v0, v1, :cond_199

    if-eq v0, v11, :cond_199

    const/4 v1, 0x4

    if-eq v0, v1, :cond_199

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v6, :cond_199

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_199

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_199

    :cond_17b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v5, :cond_199

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v1, :cond_199

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 3811
    :cond_199
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b9

    .line 3816
    :cond_1a6
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v5, :cond_1cf

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v1, :cond_1cf

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v1, -0xff

    if-ne v0, v1, :cond_1cf

    .line 3818
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b9

    .line 3826
    :cond_1cf
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v5, :cond_226

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v1, :cond_226

    .line 3827
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_26f

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v0, :cond_21f

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v0, :cond_21f

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21f

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_26f

    .line 3832
    :cond_21f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3844
    :cond_226
    :goto_226
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-ne v2, v0, :cond_230

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_b9

    :cond_230
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isBubblePreviewOn()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_b9

    .line 3845
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3846
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_254

    .line 3847
    if-ne p1, v5, :cond_254

    .line 3848
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3851
    :cond_254
    if-eq p1, v5, :cond_b9

    .line 3852
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/Keyboard$Key;

    .line 3855
    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v1, -0xff

    if-ne v0, v1, :cond_28f

    .line 3856
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 3857
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_b9

    .line 3833
    :cond_26f
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v1, -0x67

    if-ne v0, v1, :cond_287

    .line 3834
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_226

    .line 3836
    :cond_287
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_226

    .line 3862
    :cond_28f
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyPreviewIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3863
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 3864
    const/4 v9, 0x0

    .line 3866
    :cond_2a8
    const/4 v0, 0x0

    .line 3867
    if-eqz v8, :cond_2eb

    .line 3868
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v11, :cond_3aa

    .line 3869
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_386

    .line 3870
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v0

    if-eqz v0, :cond_378

    .line 3871
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    .line 3885
    :goto_2cf
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/drawable/Drawable;IILandroid/inputmethodservice/Keyboard$Key;Z)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    .line 3886
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 3889
    :cond_2eb
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3891
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3892
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3893
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3894
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3895
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPaddingBottom:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3897
    if-eqz v9, :cond_3b8

    .line 3898
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3899
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v9, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3900
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3901
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3902
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3903
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3904
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3905
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3906
    if-eqz v8, :cond_352

    .line 3907
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3908
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3910
    :cond_352
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 3980
    :cond_35f
    :goto_35f
    if-nez v9, :cond_4ec

    if-eqz v1, :cond_36b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ec

    .line 3981
    :cond_36b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b9

    .line 3873
    :cond_378
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_2cf

    .line 3876
    :cond_386
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v0

    if-eqz v0, :cond_39c

    .line 3877
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_2cf

    .line 3879
    :cond_39c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_2cf

    .line 3883
    :cond_3aa
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_2cf

    .line 3913
    :cond_3b8
    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPreviewFuntionKey(I)Z

    move-result v0

    if-eqz v0, :cond_459

    .line 3914
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3915
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3916
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3918
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3919
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3920
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3921
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPaddingBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3922
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPaddingBottom:Landroid/widget/TextView;

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 3924
    if-eqz v1, :cond_35f

    .line 3925
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3926
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3927
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3928
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPreviewLabelSize(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/CharSequence;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3930
    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v2, -0xca

    if-ne v0, v2, :cond_426

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_426

    .line 3932
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_35f

    .line 3933
    :cond_426
    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v7

    const/16 v2, -0x6f

    if-ne v0, v2, :cond_44c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v11, :cond_44c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_44c

    .line 3936
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_35f

    .line 3938
    :cond_44c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    iget v2, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_35f

    .line 3942
    :cond_459
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3943
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3945
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3946
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3947
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3948
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3950
    const-string v0, "gjpqy@J"

    .line 3951
    iget-object v2, v5, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4dd

    .line 3952
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3953
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3955
    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4d8

    iget-object v0, v5, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v2, "j"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d8

    .line 3956
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    mul-int/lit8 v0, v0, 0x2

    .line 3960
    :goto_4a0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 3961
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 3967
    :goto_4ac
    if-eqz v1, :cond_35f

    .line 3969
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3970
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3971
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3972
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPreviewLabelSize(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/CharSequence;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3974
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v2, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_35f

    .line 3958
    :cond_4d8
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    mul-int/lit8 v0, v0, 0x3

    goto :goto_4a0

    .line 3963
    :cond_4dd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3964
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4ac

    .line 3984
    :cond_4ec
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 3987
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 3988
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 3990
    if-eqz v9, :cond_56c

    .line 3991
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 4007
    :cond_505
    :goto_505
    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4008
    invoke-virtual {v10, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4010
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewCentered:Z

    if-nez v1, :cond_5c5

    .line 4011
    iget v1, v5, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    .line 4012
    iget v1, v5, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewOffset:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    .line 4018
    :goto_522
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 4019
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    if-nez v1, :cond_546

    .line 4020
    new-array v1, v11, [I

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 4021
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLocationInWindow([I)V

    .line 4022
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v1, v7

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v3, v4

    aput v3, v1, v7

    .line 4023
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v1, v6

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v3, v4

    aput v3, v1, v6

    .line 4028
    :cond_546
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5dc

    .line 4029
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v3, v7

    add-int/2addr v1, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4040
    :goto_55d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b9

    .line 3993
    :cond_56c
    iget-object v3, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    const/16 v4, -0xca

    if-ne v3, v4, :cond_584

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_584

    .line 3995
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_505

    .line 3996
    :cond_584
    iget-object v3, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    const/16 v4, -0x6f

    if-ne v3, v4, :cond_5a5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-ne v3, v11, :cond_5a5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_5a5

    .line 3999
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_505

    .line 4000
    :cond_5a5
    if-eqz v1, :cond_5b5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v6, :cond_5b5

    .line 4001
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto/16 :goto_505

    .line 4003
    :cond_5b5
    iget-object v1, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v7

    const/16 v3, -0x66

    if-ne v1, v3, :cond_505

    .line 4004
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto/16 :goto_505

    .line 4015
    :cond_5c5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0xa0

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    .line 4016
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_522

    .line 4034
    :cond_5dc
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    invoke-virtual {v10, v0, v7, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_55d

    :cond_5f1
    move v8, v7

    goto/16 :goto_a4
.end method

.method protected swipeDown()V
    .registers 2

    .prologue
    .line 5422
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 5423
    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    .prologue
    .line 5414
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 5415
    return-void
.end method

.method protected swipeRight()V
    .registers 2

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 5411
    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 5419
    return-void
.end method

.method public updateActionPopup()V
    .registers 3

    .prologue
    .line 7926
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 7927
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7935
    :cond_c
    return-void
.end method
