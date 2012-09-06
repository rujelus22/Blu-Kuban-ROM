.class public Lcom/google/android/apps/translate/translation/ChipView;
.super Landroid/widget/LinearLayout;
.source "ChipView.java"

# interfaces
.implements Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/translation/ChipView$8;,
        Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;,
        Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;,
        Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;,
        Lcom/google/android/apps/translate/translation/ChipView$ChipPart;,
        Lcom/google/android/apps/translate/translation/ChipView$ViewState;
    }
.end annotation


# static fields
.field private static final ADD_LITTLE_STAR_TO_UNSELECTED_CHIP:Z = true

.field private static final DEBUG:Z = false

.field private static final EXPANDING_ANIMATION_DELAY_MILLIS:I = 0x32

.field private static final LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PADDING_CHIP_RESOURCE_ID_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONETIC_FONT:Lcom/google/android/apps/translate/ExternalFonts; = null

.field private static final PHONETIC_SPAN:Lcom/google/android/apps/translate/ExtTypefaceSpan; = null

.field private static final SCROLLING_ANIMATION_DELAY_MILLIS:I = 0x32

.field private static final SCROLLING_ANIMATION_MILLIS:I = 0x12c

.field private static final SCROLLING_OVERRUN_PX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChipView"

.field private static final UNSELECT_ON_TOUCH:Z = true

.field private static final UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessTimeStampView:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mAnimateScroll:Z

.field private mChip:Landroid/widget/LinearLayout;

.field private mChipDivider:Landroid/view/View;

.field private mCreateTimeStampView:Landroid/widget/TextView;

.field private mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

.field private mDictDivider:Landroid/view/View;

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mFromLanguageText:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandledEvent:Z

.field private mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

.field private mInputText:Landroid/widget/TextView;

.field private mInputTextChip:Landroid/widget/LinearLayout;

.field private mIsExpanded:Z

.field private mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLittleStarBtn1:Landroid/widget/ImageButton;

.field private mLittleStarBtn2:Landroid/widget/ImageButton;

.field private mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field private mSrcTransliteration:Landroid/widget/TextView;

.field private mSrcTts:Landroid/view/View;

.field private mSrcTtsWrapper:Landroid/view/View;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;

.field private mToLanguageText:Landroid/widget/TextView;

.field private mTouchEventViewId:I

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

.field private mTranslatedText:Landroid/widget/TextView;

.field private mTranslationChip:Landroid/widget/LinearLayout;

.field private mTrgTransliteration:Landroid/widget/TextView;

.field private mTrgTts:Landroid/view/View;

.field private mTrgTtsWrapper:Landroid/view/View;

.field private mTts:Lcom/google/android/apps/translate/MyTts;

.field private mTtsSpinningWheelHeight:I

.field private mTtsSpinningWheelWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts;

    const-string v1, "ipa.ttf"

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/ExternalFonts;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView;->PHONETIC_FONT:Lcom/google/android/apps/translate/ExternalFonts;

    .line 63
    new-instance v0, Lcom/google/android/apps/translate/ExtTypefaceSpan;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->PHONETIC_FONT:Lcom/google/android/apps/translate/ExternalFonts;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/ExternalFonts;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/ExtTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView;->PHONETIC_SPAN:Lcom/google/android/apps/translate/ExtTypefaceSpan;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView;->PADDING_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    .line 135
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_last_access_time_stamp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_create_time_stamp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_my_lang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_input_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_src_transliteration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_their_lang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_translated_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->mvh_trg_transliteration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->PADDING_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    sget v1, Lcom/google/android/apps/translate/R$id;->chip_divider:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mHandledEvent:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mAnimateScroll:Z

    .line 131
    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/MyTts;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mChipDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTtsWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTtsWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/OutputPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mChip:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/translate/translation/ChipView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/apps/translate/translation/ChipView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/google/android/apps/translate/translation/ChipView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->initializeOutputPanelView()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/ChipView;->setSpeakerIcons(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/ChipView;->speak(Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/translate/translation/ChipView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelWidth:I

    return v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/translate/translation/ChipView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelHeight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/translate/translation/ChipView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/translate/translation/ChipView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/ChipView;->setStar(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTts:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/translation/ChipView;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getTranslationText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;

    return-object v0
.end method

.method private canSpeak(Ljava/lang/String;)Z
    .registers 6
    .parameter "shortName"

    .prologue
    .line 829
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;

    if-nez v1, :cond_6

    .line 830
    const/4 v0, 0x0

    .line 835
    :goto_5
    return v0

    .line 833
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/MyTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    .line 834
    .local v0, isAvailable:Z
    const-string v1, "ChipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is TTS available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private getPosition()I
    .registers 3

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;

    .line 729
    .local v0, tag:Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return v1

    :cond_a
    iget v1, v0, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;->position:I

    goto :goto_9
.end method

.method private getTranslationText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 820
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v1, :cond_7

    .line 821
    const-string v1, ""

    .line 825
    :goto_6
    return-object v1

    .line 823
    :cond_7
    new-instance v0, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method private initializeOutputPanelView()V
    .registers 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->init(Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Languages;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 468
    return-void
.end method

.method private isOutputTextSpeakerVisible()Z
    .registers 2

    .prologue
    .line 813
    sget v0, Lcom/google/android/apps/translate/R$id;->frame_trg_tts_speak:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
    .registers 4
    .parameter "viewState"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/ChipView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/ChipView$3;-><init>(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method private selectAndOpenContextMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 548
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    if-eqz v0, :cond_50

    .line 549
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 568
    :cond_2a
    :goto_2a
    return-void

    .line 554
    :cond_2b
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 557
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    goto :goto_2a

    .line 561
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v3, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 563
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setSelected(Z)V

    .line 564
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    goto :goto_2a
.end method

.method private selectChip(I)V
    .registers 11
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 599
    const-string v2, "ChipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectChip position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iput-boolean v5, p0, Lcom/google/android/apps/translate/translation/ChipView;->mHandledEvent:Z

    .line 601
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    if-nez v2, :cond_78

    .line 603
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 604
    const-string v2, "ChipView"

    const-string v3, "selectChip TOUCHTOUCH SRC"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v2, :cond_47

    .line 606
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5, v6, v5}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 607
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    sget-object v3, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/translation/InputPanel;->copyToInputTextBox(Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 616
    :cond_47
    :goto_47
    new-instance v2, Lcom/google/android/apps/translate/translation/ChipView$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/translation/ChipView$4;-><init>(Lcom/google/android/apps/translate/translation/ChipView;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/translate/translation/ChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    :goto_51
    return-void

    .line 609
    :cond_52
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 610
    const-string v2, "ChipView"

    const-string v3, "selectChip TOUCHTOUCH TRG"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v2, :cond_47

    .line 612
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5, v6, v5}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 613
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    sget-object v3, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/translation/InputPanel;->copyToInputTextBox(Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto :goto_47

    .line 625
    :cond_78
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->getSelectedHistoryItemPosition()I

    move-result v0

    .line 626
    .local v0, currentPosition:I
    if-ne v0, p1, :cond_c4

    .line 628
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 629
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5, v6, v6}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 635
    :cond_93
    :goto_93
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 637
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItem(Lcom/google/android/apps/translate/translation/ChipView;)V

    .line 638
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 639
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 640
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 641
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->setSelected(Z)V

    goto :goto_51

    .line 630
    :cond_b0
    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 631
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5, v5, v6}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_93

    .line 644
    :cond_c4
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isHistoryMode()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 645
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 653
    :goto_d5
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->getSelectedHistoryItem()Lcom/google/android/apps/translate/translation/ChipView;

    move-result-object v1

    .line 654
    .local v1, curretnSelectedView:Lcom/google/android/apps/translate/translation/ChipView;
    if-eqz v1, :cond_ec

    .line 655
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 657
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItem(Lcom/google/android/apps/translate/translation/ChipView;)V

    .line 658
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 660
    :cond_ec
    iget-boolean v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mAnimateScroll:Z

    if-eqz v2, :cond_106

    .line 662
    new-instance v2, Lcom/google/android/apps/translate/translation/ChipView$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/translate/translation/ChipView$5;-><init>(Lcom/google/android/apps/translate/translation/ChipView;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/translate/translation/ChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_51

    .line 648
    .end local v1           #curretnSelectedView:Lcom/google/android/apps/translate/translation/ChipView;
    :cond_fc
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEW_ITEM_EXPANSIONS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_d5

    .line 693
    .restart local v1       #curretnSelectedView:Lcom/google/android/apps/translate/translation/ChipView;
    :cond_106
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/apps/translate/translation/ChipView$6;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/translate/translation/ChipView$6;-><init>(Lcom/google/android/apps/translate/translation/ChipView;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_51
.end method

.method private setChipBackgroundResource(Landroid/view/View;ZZZ)V
    .registers 6
    .parameter "view"
    .parameter "selected"
    .parameter "focused"
    .parameter "pressed"

    .prologue
    .line 517
    if-eqz p2, :cond_18

    .line 518
    if-eqz p3, :cond_a

    .line 519
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_selected_focused:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 534
    :goto_9
    return-void

    .line 520
    :cond_a
    if-eqz p4, :cond_12

    .line 521
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_selected_pressed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 523
    :cond_12
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_selected_normal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 526
    :cond_18
    if-eqz p3, :cond_20

    .line 527
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_unselected_focused:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 528
    :cond_20
    if-eqz p4, :cond_28

    .line 529
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_unselected_pressed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 531
    :cond_28
    sget v0, Lcom/google/android/apps/translate/R$drawable;->chip_color_unselected_normal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9
.end method

.method private setSpeakerIcons(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 6
    .parameter "translation"

    .prologue
    .line 795
    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 796
    :cond_a
    const-string v2, "no translation or no result, do not set speaker icon"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    .line 810
    :goto_f
    return-void

    .line 800
    :cond_10
    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->canSpeak(Ljava/lang/String;)Z

    move-result v0

    .line 801
    .local v0, canSpeakSrc:Z
    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->canSpeak(Ljava/lang/String;)Z

    move-result v1

    .line 802
    .local v1, canSpeakTrg:Z
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/apps/translate/translation/ChipView$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/translate/translation/ChipView$7;-><init>(Lcom/google/android/apps/translate/translation/ChipView;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method private setStar(Z)V
    .registers 4
    .parameter "isFavorite"

    .prologue
    .line 358
    const-string v0, "ChipView"

    const-string v1, "setStar"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1a

    sget v0, Lcom/google/android/apps/translate/R$drawable;->ic_star_active:I

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 361
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1d

    sget v0, Lcom/google/android/apps/translate/R$drawable;->ic_star_active:I

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 363
    return-void

    .line 359
    :cond_1a
    sget v0, Lcom/google/android/apps/translate/R$drawable;->ic_star_inactive:I

    goto :goto_d

    .line 361
    :cond_1d
    sget v0, Lcom/google/android/apps/translate/R$drawable;->ic_star_inactive:I

    goto :goto_16
.end method

.method private setTransliteration(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 8
    .parameter "textView"
    .parameter "transliteration"

    .prologue
    .line 785
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 786
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :goto_b
    return-void

    .line 788
    :cond_c
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 789
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->PHONETIC_SPAN:Lcom/google/android/apps/translate/ExtTypefaceSpan;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b
.end method

.method private speak(Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    .registers 9
    .parameter "language"
    .parameter "text"
    .parameter "callback"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/apps/translate/MyTts;->speak(Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    .line 843
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->msg_speaking:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 845
    return-void
.end method


# virtual methods
.method public getOutputView()Lcom/google/android/apps/translate/translation/OutputPanelView;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    return-object v0
.end method

.method public getSelectedChipPart()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;
    .registers 3

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    if-eqz v0, :cond_26

    .line 538
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 539
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    .line 544
    :goto_14
    return-object v0

    .line 540
    :cond_15
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 541
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    goto :goto_14

    .line 544
    :cond_26
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ENTIRE_CHIP:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    goto :goto_14
.end method

.method public getSelectedViewId()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    return v0
.end method

.method public initParameters(Landroid/app/Activity;Landroid/widget/ListView;Lcom/google/android/apps/translate/history/HistoryListAdapter;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/InputPanel;Z)V
    .registers 18
    .parameter "activity"
    .parameter "listView"
    .parameter "listAdapter"
    .parameter "translateManager"
    .parameter "from"
    .parameter "to"
    .parameter "inputPanel"
    .parameter "animateScroll"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    .line 171
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListView:Landroid/widget/ListView;

    .line 172
    iput-object p3, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    .line 173
    iput-object p4, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 174
    iput-object p5, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 175
    iput-object p6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 176
    sget v6, Lcom/google/android/apps/translate/R$id;->panel_output:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    .line 177
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setVisibility(I)V

    .line 178
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_chip:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mChip:Landroid/widget/LinearLayout;

    .line 179
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_input_text_wrapper:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    .line 180
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_translation_text_wrapper:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    .line 181
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    .line 182
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 183
    new-instance v6, Landroid/view/GestureDetector;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 184
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 185
    sget v6, Lcom/google/android/apps/translate/R$id;->chip_divider:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mChipDivider:Landroid/view/View;

    .line 186
    sget v6, Lcom/google/android/apps/translate/R$id;->dictionary_divider:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mDictDivider:Landroid/view/View;

    .line 188
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_input_text:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;

    .line 189
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_translated_text:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;

    .line 190
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_my_lang:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;

    .line 191
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_their_lang:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;

    .line 192
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_src_transliteration:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;

    .line 193
    sget v6, Lcom/google/android/apps/translate/R$id;->mvh_trg_transliteration:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;

    .line 195
    sget-object v6, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a8

    .line 200
    .end local v2           #id:I
    :cond_ce
    sget-object v6, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    .restart local v2       #id:I
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 203
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d4

    .line 205
    .end local v2           #id:I
    :cond_fa
    sget-object v6, Lcom/google/android/apps/translate/translation/ChipView;->PADDING_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_100
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 206
    .restart local v2       #id:I
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_100

    .line 214
    .end local v2           #id:I
    :cond_126
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mAnimateScroll:Z

    .line 215
    sget v6, Lcom/google/android/apps/translate/R$id;->btn_little_star_button1:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    .line 216
    sget v6, Lcom/google/android/apps/translate/R$id;->btn_little_star_button2:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    .line 218
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    new-instance v7, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    invoke-direct {v7, p0, v8}, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;-><init>(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    new-instance v7, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    invoke-direct {v7, p0, v8}, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;-><init>(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->setVisibility(I)V

    .line 232
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 233
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    sget v6, Lcom/google/android/apps/translate/R$id;->frame_src_tts_speak:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTtsWrapper:Landroid/view/View;

    .line 238
    sget v6, Lcom/google/android/apps/translate/R$id;->frame_trg_tts_speak:I

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/translation/ChipView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTtsWrapper:Landroid/view/View;

    .line 239
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTtsWrapper:Landroid/view/View;

    sget v7, Lcom/google/android/apps/translate/R$id;->frame_tts_speak:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;

    .line 240
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTtsWrapper:Landroid/view/View;

    sget v7, Lcom/google/android/apps/translate/R$id;->frame_tts_speak:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTts:Landroid/view/View;

    .line 241
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;

    sget v7, Lcom/google/android/apps/translate/R$id;->btn_translate_tts_speak:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, srcTtsSpeakBtn:Landroid/view/View;
    new-instance v6, Lcom/google/android/apps/translate/translation/ChipView$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/translate/translation/ChipView$1;-><init>(Lcom/google/android/apps/translate/translation/ChipView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTts:Landroid/view/View;

    sget v7, Lcom/google/android/apps/translate/R$id;->btn_translate_tts_speak:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 256
    .local v5, trgTtsSpeakBtn:Landroid/view/View;
    new-instance v6, Lcom/google/android/apps/translate/translation/ChipView$2;

    invoke-direct {v6, p0}, Lcom/google/android/apps/translate/translation/ChipView$2;-><init>(Lcom/google/android/apps/translate/translation/ChipView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/TranslateApplication;->getMyTts()Lcom/google/android/apps/translate/MyTts;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/apps/translate/R$drawable;->tts_speak:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 273
    .local v3, speakerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelWidth:I

    .line 274
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTtsSpinningWheelHeight:I

    .line 276
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 780
    const-string v0, "ChipView"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->selectChip(I)V

    .line 782
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 751
    const-string v0, "ChipView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    if-eqz v0, :cond_10

    .line 753
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->onDestroy()V

    .line 755
    :cond_10
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 472
    const-string v0, "ChipView"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public onFavoriteChanged(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 4
    .parameter "translateEntry"
    .parameter "isFavorite"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/translation/InputPanel;->onFavoriteChanged(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    .line 748
    :cond_9
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    const-string v1, "ChipView"

    const-string v2, "onFocusChange"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 369
    .local v0, id:I
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_little_star_button1:I

    if-ne v0, v1, :cond_19

    .line 370
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn1:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 390
    :cond_18
    :goto_18
    return-void

    .line 371
    :cond_19
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_little_star_button2:I

    if-ne v0, v1, :cond_25

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLittleStarBtn2:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_18

    .line 374
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    if-eqz v1, :cond_4d

    .line 375
    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 376
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_18

    .line 378
    :cond_3b
    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_18

    .line 382
    :cond_4d
    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 384
    :cond_65
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v3, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 386
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v3, p2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_18
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 772
    const-string v0, "ChipView"

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    .line 774
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->selectAndOpenContextMenu()V

    .line 775
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 572
    const-string v0, "ChipView"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mHandledEvent:Z

    .line 574
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->selectAndOpenContextMenu()V

    .line 575
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    if-eqz v0, :cond_9

    .line 759
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mOutputView:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->onPause()V

    .line 761
    :cond_9
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 579
    const-string v0, "ChipView"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 585
    const-string v0, "ChipView"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mIsExpanded:Z

    if-eqz v0, :cond_35

    .line 587
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->UPPER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 596
    :cond_20
    :goto_20
    return-void

    .line 589
    :cond_21
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView;->LOWER_CHIP_RESOURCE_ID_LIST:Ljava/util/Set;

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 590
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_20

    .line 593
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V

    goto :goto_20
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 709
    const-string v0, "ChipView"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->selectChip(I)V

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 716
    const-string v0, "ChipView"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTouchEventViewId:I

    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mHandledEvent:Z

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mHandledEvent:Z

    if-eqz v0, :cond_24

    .line 720
    :cond_1d
    const-string v0, "ChipView"

    const-string v1, "onTouch HANDLED"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_24
    return v2
.end method

.method public onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 4
    .parameter "translateEntry"
    .parameter "isFavorite"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_9

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/translation/InputPanel;->onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    .line 741
    :cond_9
    return-void
.end method

.method public onTranslationFailed()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_9

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->onTranslationFailed()V

    .line 768
    :cond_9
    return-void
.end method

.method public render(Lcom/google/android/apps/translate/history/HistoryEntry;)V
    .registers 4
    .parameter "historyEntry"

    .prologue
    const/4 v1, 0x0

    .line 279
    if-eqz p1, :cond_b

    .line 280
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/translation/ChipView;->setVisibility(I)V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/apps/translate/translation/ChipView;->render(Lcom/google/android/apps/translate/history/HistoryEntry;II)V

    .line 285
    :goto_a
    return-void

    .line 283
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->setVisibility(I)V

    goto :goto_a
.end method

.method public render(Lcom/google/android/apps/translate/history/HistoryEntry;II)V
    .registers 14
    .parameter "itemEntry"
    .parameter "position"
    .parameter "entries"

    .prologue
    const/4 v9, 0x1

    const/16 v0, 0x8

    const/4 v5, 0x0

    .line 292
    const-string v1, "ChipView"

    const-string v2, "render"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v7, p1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 294
    .local v7, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/HistoryEntry;->isNullEntry()Z

    move-result v1

    if-nez v1, :cond_15

    if-nez v7, :cond_4d

    .line 295
    :cond_15
    const-string v1, "ChipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render NULL position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->setVisibility(I)V

    .line 355
    :goto_4c
    return-void

    .line 303
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/ChipView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_56

    .line 304
    invoke-virtual {p0, v5}, Lcom/google/android/apps/translate/translation/ChipView;->setVisibility(I)V

    .line 306
    :cond_56
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    if-eqz v1, :cond_a1

    if-eqz p1, :cond_a1

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getDbKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/Entry;->getDbKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-boolean v1, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    iget-boolean v2, p1, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-ne v1, v2, :cond_a1

    .line 309
    const-string v0, "ChipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render REUSE position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-direct {v0, p1}, Lcom/google/android/apps/translate/history/HistoryEntry;-><init>(Lcom/google/android/apps/translate/history/HistoryEntry;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 342
    :goto_97
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    if-nez v0, :cond_15d

    .line 343
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    goto :goto_4c

    .line 312
    :cond_a1
    const-string v1, "ChipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render NEW position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-direct {v1, p1}, Lcom/google/android/apps/translate/history/HistoryEntry;-><init>(Lcom/google/android/apps/translate/history/HistoryEntry;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 314
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 316
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 321
    new-instance v8, Lcom/google/android/apps/translate/Translate$TranslateResult;

    invoke-direct {v8, v7}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 323
    .local v8, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTranslatedText:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/apps/translate/Language;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mSrcTransliteration:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getSrcTransliteration()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setTransliteration(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mTrgTransliteration:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTrgTransliteration()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/translate/translation/ChipView;->setTransliteration(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mDictDivider:Landroid/view/View;

    invoke-virtual {v8}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getDictionaryResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15b

    :goto_13c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;

    iget-boolean v0, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->setStar(Z)V

    goto/16 :goto_97

    :cond_15b
    move v0, v5

    .line 332
    goto :goto_13c

    .line 345
    .end local v8           #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    :cond_15d
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->getSelectedHistoryItemPosition()I

    move-result v6

    .line 346
    .local v6, currentPosition:I
    if-ne v6, p2, :cond_16c

    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    :goto_167
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    goto/16 :goto_4c

    :cond_16c
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->UNSELECTED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    goto :goto_167
.end method
