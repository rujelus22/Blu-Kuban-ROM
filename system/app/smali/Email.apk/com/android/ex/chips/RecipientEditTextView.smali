.class public Lcom/android/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
    }
.end annotation


# static fields
.field private static DISMISS:I

.field private static sSelectedTextColor:I


# instance fields
.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mCopyViewRes:I

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChips:Z

.field private final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/RecipientChip;

.field private mShouldShrink:Z

.field private mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    .line 113
    const/4 v0, -0x1

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 148
    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 150
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 189
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$2;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$3;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 221
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 224
    :cond_40
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 225
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 226
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 227
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 228
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 229
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$4;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 243
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 244
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 246
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$5;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 257
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 90
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1082
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 1089
    :goto_6
    return v0

    .line 1085
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v2, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1086
    if-eqz v0, :cond_18

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 1087
    :cond_18
    const/4 v0, 0x0

    goto :goto_6

    :cond_1a
    move v0, v1

    .line 1089
    goto :goto_6
.end method

.method private calculateAvailableWidth(Z)F
    .registers 4
    .parameter "pressed"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 578
    .local v0, actualLine:I
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private checkChipWidths()V
    .registers 9

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 681
    .local v3, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_30

    .line 683
    move-object v0, v3

    .local v0, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_30

    aget-object v2, v0, v4

    .line 684
    .local v2, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 685
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v6

    if-lez v6, :cond_2d

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_2d

    .line 687
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 683
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 691
    .end local v0           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_30
    return-void
.end method

.method private chipsPending()Z
    .registers 2

    .prologue
    .line 1948
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private clearSelectedChip()V
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_c

    .line 1189
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1192
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1193
    return-void
.end method

.method private commitByCharacter()V
    .registers 5

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 999
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1000
    .local v1, end:I
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1001
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1002
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1004
    :cond_17
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1005
    return-void
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1009
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_23

    .line 1012
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    move v0, v1

    .line 1045
    :goto_22
    return v0

    .line 1016
    :cond_23
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1017
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_41

    .line 1018
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p3, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1019
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3f

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_41

    .line 1020
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 1023
    :cond_41
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1025
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_86

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 1026
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_78

    .line 1028
    const-string v3, ""

    invoke-static {p3, p1, p2, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1029
    invoke-direct {p0, v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_78

    if-le p1, v5, :cond_78

    if-le p2, v5, :cond_78

    .line 1031
    invoke-interface {p3, p1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1038
    :cond_78
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_81

    .line 1039
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1041
    :cond_81
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    move v0, v1

    .line 1042
    goto :goto_22

    :cond_86
    move v0, v2

    .line 1045
    goto :goto_22
.end method

.method private commitDefault()Z
    .registers 7

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 981
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 982
    .local v1, end:I
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 984
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 985
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 988
    .local v3, whatEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_29

    .line 989
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    .line 990
    const/4 v4, 0x1

    .line 994
    .end local v3           #whatEnd:I
    :goto_28
    return v4

    .line 992
    .restart local v3       #whatEnd:I
    :cond_29
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v4

    goto :goto_28

    .line 994
    .end local v3           #whatEnd:I
    :cond_2e
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    .registers 14
    .parameter "contact"
    .parameter "offset"
    .parameter "pressed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 541
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_d

    .line 542
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 545
    :cond_d
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 547
    .local v2, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 548
    .local v3, paint:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 549
    .local v1, defaultSize:F
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 552
    .local v0, defaultColor:I
    if-eqz p3, :cond_43

    .line 553
    invoke-direct {p0, p1, v3, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 560
    .local v6, tmpBitmap:Landroid/graphics/Bitmap;
    :goto_23
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 561
    .local v5, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 562
    new-instance v4, Lcom/android/ex/chips/RecipientChip;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/ex/chips/RecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V

    .line 564
    .local v4, recipientChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 565
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 566
    return-object v4

    .line 556
    .end local v4           #recipientChip:Lcom/android/ex/chips/RecipientChip;
    .end local v5           #result:Landroid/graphics/drawable/Drawable;
    .end local v6           #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_43
    invoke-direct {p0, p1, v3, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #tmpBitmap:Landroid/graphics/Bitmap;
    goto :goto_23
.end method

.method private createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .registers 10
    .parameter "chip"

    .prologue
    .line 1286
    new-instance v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getDataId()J

    move-result-wide v4

    iget v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    return-object v0
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .registers 13
    .parameter "entry"
    .parameter "pressed"

    .prologue
    const/4 v7, 0x0

    .line 1404
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, displayText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v1, v7

    .line 1425
    :cond_c
    :goto_c
    return-object v1

    .line 1408
    :cond_d
    const/4 v1, 0x0

    .line 1410
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 1411
    .local v4, end:I
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1412
    .local v5, start:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1413
    .local v6, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1           #chipText:Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1414
    .restart local v1       #chipText:Landroid/text/SpannableString;
    iget-boolean v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v8, :cond_c

    .line 1416
    :try_start_2b
    invoke-direct {p0, p1, v5, p2}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 1417
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    const/4 v8, 0x0

    const/16 v9, 0x21

    invoke-virtual {v1, v0, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1419
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_3c} :catch_3d

    goto :goto_c

    .line 1420
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    :catch_3d
    move-exception v3

    .line 1421
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    .line 1422
    goto :goto_c
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    .registers 15
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 1557
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, moreText:Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1559
    .local v6, morePaint:Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1560
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1561
    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v12, v3, v4

    .line 1563
    .local v12, width:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineHeight()I

    move-result v9

    .line 1564
    .local v9, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1565
    .local v8, drawable:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1566
    .local v0, canvas:Landroid/graphics/Canvas;
    move v7, v9

    .line 1567
    .local v7, adjustedHeight:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 1568
    .local v10, layout:Landroid/text/Layout;
    if-eqz v10, :cond_62

    .line 1569
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 1571
    :cond_62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1573
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1574
    .local v11, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v2, v2, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1575
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v11}, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createReplacementChip(IILandroid/text/Editable;)V
    .registers 16
    .parameter "tokenStart"
    .parameter "tokenEnd"
    .parameter "editable"

    .prologue
    .line 793
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 830
    :cond_6
    :goto_6
    return-void

    .line 798
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 799
    .local v9, token:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 800
    .local v2, commitCharIndex:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_2c

    .line 801
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 803
    :cond_2c
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    .line 804
    .local v6, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v6, :cond_6

    .line 805
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, destText:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 808
    .local v8, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 809
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 810
    .local v5, end:I
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 811
    .local v7, start:I
    const/4 v0, 0x0

    .line 813
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    :try_start_50
    iget-boolean v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v10, :cond_5f

    .line 814
    const/4 v10, 0x0

    invoke-direct {p0, v6, v7, v10}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 815
    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v0, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_5f} :catch_7c

    .line 820
    :cond_5f
    :goto_5f
    invoke-interface {p3, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 822
    if-eqz v0, :cond_6

    .line 823
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v10, :cond_6f

    .line 824
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 826
    :cond_6f
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 827
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 817
    :catch_7c
    move-exception v4

    .line 818
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v10, "RecipientEditTextView"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 415
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v9, v2

    .line 416
    .local v9, height:I
    move v8, v9

    .line 417
    .local v8, deleteWidth:I
    const/4 v2, 0x1

    new-array v12, v2, [F

    .line 418
    .local v12, widths:[F
    const-string v2, " "

    invoke-virtual {p2, v2, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v3

    int-to-float v4, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, p2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 424
    .local v1, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v2, v8, 0x2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 429
    .local v11, width:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 430
    .local v10, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_93

    .line 432
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    sget v2, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 436
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v9}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 439
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 440
    .local v7, backgroundPadding:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 441
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v8

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v11, v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v9, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    .end local v7           #backgroundPadding:Landroid/graphics/Rect;
    :goto_92
    return-object v10

    .line 447
    :cond_93
    const-string v2, "RecipientEditTextView"

    const-string v3, "Unable to draw a background for the chips as it was never set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92
.end method

.method private createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .registers 6
    .parameter "currentChip"

    .prologue
    .line 1291
    new-instance v0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .registers 8
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 834
    const/4 v4, 0x0

    .line 874
    :goto_8
    return-object v4

    .line 836
    :cond_9
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 837
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .line 838
    .local v0, display:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v2, :cond_3b

    array-length v4, v2

    if-lez v4, :cond_3b

    .line 841
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 843
    invoke-static {v0, p1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    goto :goto_8

    .line 845
    :cond_2a
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 847
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    goto :goto_8

    .line 853
    :cond_3b
    const/4 v3, 0x0

    .line 854
    .local v3, validatedToken:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v4, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 856
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v4, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 858
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 861
    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 862
    .local v1, tokenized:[Landroid/text/util/Rfc822Token;
    array-length v4, v1

    if-lez v4, :cond_6b

    .line 863
    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 874
    .end local v1           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_6b
    :goto_6b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78

    .end local v3           #validatedToken:Ljava/lang/String;
    :goto_71
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    goto :goto_8

    .line 869
    .restart local v3       #validatedToken:Ljava/lang/String;
    :cond_76
    const/4 v3, 0x0

    goto :goto_6b

    :cond_78
    move-object v3, p1

    .line 874
    goto :goto_71
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .registers 25
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v12, v4

    .line 458
    .local v12, height:I
    move v13, v12

    .line 459
    .local v13, iconWidth:I
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 460
    .local v20, widths:[F
    const-string v4, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 461
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v5

    int-to-float v6, v13

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v20, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v5}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 465
    .local v3, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v4, v13, 0x2

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 470
    .local v19, width:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 471
    .local v18, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 472
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 473
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_122

    .line 474
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v4, v5, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 475
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_120

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 482
    .local v16, photoBytes:[B
    if-nez v16, :cond_94

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_94

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 490
    :cond_94
    if-eqz v16, :cond_11b

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 497
    .local v15, photo:Landroid/graphics/Bitmap;
    :goto_a0
    if-eqz v15, :cond_ec

    .line 498
    new-instance v17, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 499
    .local v17, src:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 500
    .local v10, backgroundPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 501
    new-instance v11, Landroid/graphics/RectF;

    sub-int v4, v19, v13

    iget v5, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v19, v6

    int-to-float v6, v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v12, v7

    int-to-float v7, v7

    invoke-direct {v11, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 505
    .local v11, dst:Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 506
    .local v14, matrix:Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 507
    move-object/from16 v0, p2

    invoke-virtual {v2, v15, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 513
    .end local v10           #backgroundPadding:Landroid/graphics/Rect;
    .end local v11           #dst:Landroid/graphics/RectF;
    .end local v14           #matrix:Landroid/graphics/Matrix;
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    .end local v17           #src:Landroid/graphics/RectF;
    :cond_ec
    :goto_ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 515
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v6, v6

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1, v12}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v7

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 520
    :goto_11a
    return-object v18

    .line 494
    .restart local v16       #photoBytes:[B
    :cond_11b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .restart local v15       #photo:Landroid/graphics/Bitmap;
    goto :goto_a0

    .line 511
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    :cond_120
    const/4 v13, 0x0

    goto :goto_ec

    .line 518
    :cond_122
    const-string v4, "RecipientEditTextView"

    const-string v5, "Unable to draw a background for the chips as it was never set"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .registers 6
    .parameter "item"

    .prologue
    .line 1458
    if-nez p1, :cond_4

    .line 1459
    const/4 v1, 0x0

    .line 1474
    :goto_3
    return-object v1

    .line 1465
    :cond_4
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, destination:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1470
    :cond_32
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_3

    .line 1472
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_37
    move-object v1, p1

    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_3
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .registers 7
    .parameter "text"
    .parameter "paint"
    .parameter "maxWidth"

    .prologue
    .line 403
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 404
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2b

    const-string v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 405
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2b
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->removeMoreChip()V

    .line 391
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 393
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_35

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_19
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 396
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 397
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v1, p0, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 400
    :cond_34
    return-void

    :cond_35
    move v1, v2

    .line 393
    goto :goto_19
.end method

.method private findChip(I)Lcom/android/ex/chips/RecipientChip;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1342
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1344
    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 1345
    aget-object v2, v0, v1

    .line 1346
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1347
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 1348
    if-lt p1, v3, :cond_28

    if-gt p1, v4, :cond_28

    move-object v0, v2

    .line 1352
    :goto_27
    return-object v0

    .line 1344
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1352
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private findText(Landroid/text/Editable;I)I
    .registers 5
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 1335
    invoke-interface {p1, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    .line 1338
    .end local p2
    :goto_8
    return p2

    .restart local p2
    :cond_9
    const/4 p2, -0x1

    goto :goto_8
.end method

.method private focusNext()Z
    .registers 3

    .prologue
    .line 964
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 965
    .local v0, next:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 967
    const/4 v1, 0x1

    .line 969
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private getChipEnd(Lcom/android/ex/chips/RecipientChip;)I
    .registers 3
    .parameter "chip"

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/RecipientChip;)I
    .registers 3
    .parameter "chip"

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .registers 8
    .parameter "text"
    .parameter "paint"
    .parameter "height"

    .prologue
    .line 533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 534
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 535
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 536
    .local v1, textHeight:I
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    int-to-float v2, v2

    return v2
.end method

.method private handleEdit(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1093
    if-eq p1, v3, :cond_5

    if-ne p2, v3, :cond_9

    .line 1095
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1113
    :goto_8
    return-void

    .line 1100
    :cond_9
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1101
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1102
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1104
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 1105
    const-string v2, ""

    invoke-static {v0, p1, p2, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1106
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1107
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1108
    if-eqz v1, :cond_3d

    if-le p1, v3, :cond_3d

    if-le v2, v3, :cond_3d

    .line 1109
    invoke-interface {v0, p1, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1112
    :cond_3d
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_8
.end method

.method private handlePasteAndReplace()V
    .registers 5

    .prologue
    .line 2064
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 2065
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 2067
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    .line 2068
    .local v1, replace:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2070
    .end local v1           #replace:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    :cond_1b
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .registers 7
    .parameter

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2032
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2033
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 2034
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2035
    if-eqz v1, :cond_3c

    .line 2036
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v2

    .line 2037
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 2038
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2039
    if-ltz v2, :cond_3f

    if-ltz v3, :cond_3f

    if-eq v2, v3, :cond_3f

    .line 2040
    invoke-interface {v4, v1, v2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2044
    :goto_39
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteAndReplace()V

    .line 2033
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2042
    :cond_3f
    invoke-interface {v4, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_39

    .line 2049
    :cond_43
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2050
    return-void
.end method

.method private isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z
    .registers 6
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1864
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isValid(Ljava/lang/String;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5
.end method

.method private postHandlePendingChips()V
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    return-void
.end method

.method private putOffsetInRange(I)I
    .registers 11
    .parameter "o"

    .prologue
    .line 1308
    move v3, p1

    .line 1309
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1310
    .local v6, text:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1312
    .local v2, length:I
    move v5, v2

    .line 1313
    .local v5, realLength:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_1b

    .line 1314
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1b

    .line 1315
    add-int/lit8 v5, v5, -0x1

    .line 1313
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1323
    :cond_1b
    if-lt v3, v5, :cond_1f

    move v4, v3

    .line 1331
    .end local v3           #offset:I
    .local v4, offset:I
    :goto_1e
    return v4

    .line 1326
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_1f
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1327
    .local v0, editable:Landroid/text/Editable;
    :goto_23
    if-ltz v3, :cond_35

    invoke-direct {p0, v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_35

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    if-nez v7, :cond_35

    .line 1329
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_35
    move v4, v3

    .line 1331
    .end local v3           #offset:I
    .restart local v4       #offset:I
    goto :goto_1e
.end method

.method private scrollLineIntoView(I)V
    .registers 5
    .parameter "line"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    .line 1248
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1250
    :cond_e
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1729
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_33

    .line 1730
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1731
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1732
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1733
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1734
    invoke-virtual {p0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1735
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1736
    new-instance v1, Lcom/android/ex/chips/RecipientChip;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-direct {v1, v2, v0, v5}, Lcom/android/ex/chips/RecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V

    move-object v0, v1

    .line 1789
    :goto_32
    return-object v0

    .line 1737
    :cond_33
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v0

    const-wide/16 v3, -0x2

    cmp-long v0, v0, v3

    if-nez v0, :cond_b0

    .line 1738
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1739
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1740
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1743
    :try_start_4c
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_52

    move-object v0, v2

    .line 1744
    goto :goto_32

    .line 1746
    :cond_52
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_5a} :catch_9e

    move-result-object v0

    .line 1751
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1752
    const-string v4, ""

    invoke-static {v2, v1, v3, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1753
    if-eq v1, v5, :cond_68

    if-ne v3, v5, :cond_aa

    .line 1754
    :cond_68
    const-string v1, "RecipientEditTextView"

    const-string v2, "The chip being selected no longer exists but should."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :goto_6f
    invoke-virtual {v0, v6}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 1759
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_8d

    .line 1760
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 1762
    :cond_8d
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 1763
    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto :goto_32

    .line 1747
    :catch_9e
    move-exception v0

    .line 1748
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1749
    goto :goto_32

    .line 1756
    :cond_aa
    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6f

    .line 1766
    :cond_b0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1767
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 1768
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1771
    :try_start_bf
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_c7
    .catch Ljava/lang/NullPointerException; {:try_start_bf .. :try_end_c7} :catch_10c

    move-result-object v0

    .line 1776
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1777
    const-string v4, ""

    invoke-static {v2, v1, v3, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1778
    if-eq v1, v5, :cond_d5

    if-ne v3, v5, :cond_119

    .line 1779
    :cond_d5
    const-string v1, "RecipientEditTextView"

    const-string v2, "The chip being selected no longer exists but should."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :goto_dc
    invoke-virtual {v0, v6}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 1784
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_fa

    .line 1785
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 1787
    :cond_fa
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 1788
    invoke-virtual {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto/16 :goto_32

    .line 1772
    :catch_10c
    move-exception v0

    .line 1773
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1774
    goto/16 :goto_32

    .line 1781
    :cond_119
    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_dc
.end method

.method private shouldCreateChip(II)Z
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .registers 12
    .parameter "currentChip"
    .parameter "popup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1796
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1797
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 1800
    .local v0, bottom:I
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->setEnabled(Z)V

    .line 1801
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1802
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1803
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1804
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1805
    new-instance v3, Lcom/android/ex/chips/RecipientEditTextView$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$7;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1812
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1813
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1814
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1815
    invoke-virtual {v2, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1816
    return-void
.end method

.method private showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .registers 12
    .parameter "currentChip"
    .parameter "alternatesPopup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1254
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1255
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 1258
    .local v0, bottom:I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1259
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setEnabled(Z)V

    .line 1260
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1261
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1263
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1265
    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1266
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1267
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1268
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1273
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    if-eq v3, v5, :cond_42

    .line 1274
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1275
    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1277
    :cond_42
    return-void
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2355
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2356
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2357
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyViewRes:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 2358
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2359
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2360
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2361
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2362
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2363
    return-void
.end method

.method private shrink()V
    .registers 7

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 346
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 386
    :goto_17
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    .line 387
    :goto_1a
    return-void

    .line 348
    :cond_1b
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_30

    .line 354
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 360
    :cond_30
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_3f

    .line 361
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 384
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 363
    :cond_3f
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 364
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 365
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 366
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v4, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 367
    if-eqz v0, :cond_5e

    array-length v0, v0

    if-nez v0, :cond_37

    .line 368
    :cond_5e
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 369
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 371
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_78

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_78

    .line 372
    add-int/lit8 v0, v0, 0x1

    .line 376
    :cond_78
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 377
    if-eq v0, v4, :cond_82

    .line 378
    invoke-direct {p0, v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    goto :goto_37

    .line 380
    :cond_82
    invoke-direct {p0, v3, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_37
.end method

.method private startDrag(Lcom/android/ex/chips/RecipientChip;)V
    .registers 7
    .parameter "currentChip"

    .prologue
    .line 2301
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 2305
    .local v1, data:Landroid/content/ClipData;
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 2309
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 2310
    return-void
.end method

.method private submitItemAtPosition(I)V
    .registers 7
    .parameter

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 1440
    if-nez v0, :cond_11

    .line 1455
    :goto_10
    return-void

    .line 1443
    :cond_11
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1445
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1446
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1448
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1449
    const-string v4, ""

    invoke-static {v3, v2, v1, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1450
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_39

    if-ltz v2, :cond_39

    if-ltz v1, :cond_39

    .line 1452
    invoke-interface {v3, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1454
    :cond_39
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_10
.end method

.method private tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "destination"

    .prologue
    .line 883
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 884
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    .line 885
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 887
    .end local p1
    :cond_10
    return-object p1
.end method

.method private unselectChip(Lcom/android/ex/chips/RecipientChip;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 1824
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    .line 1825
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 1826
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1827
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1828
    if-eq v0, v4, :cond_14

    if-ne v1, v4, :cond_42

    .line 1829
    :cond_14
    const-string v0, "RecipientEditTextView"

    const-string v1, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1831
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1845
    :cond_25
    :goto_25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1846
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1848
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1850
    :cond_41
    return-void

    .line 1833
    :cond_42
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1834
    const-string v3, ""

    invoke-static {v2, v0, v1, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1835
    invoke-interface {v2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1837
    :try_start_51
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v3, :cond_25

    .line 1838
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    const/16 v4, 0x21

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_63} :catch_64

    goto :goto_25

    .line 1841
    :catch_64
    move-exception v0

    .line 1842
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .registers 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_9

    .line 308
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_3c

    move-object v0, p1

    .line 312
    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, displayString:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 314
    .local v1, seperatorPos:I
    if-eqz v1, :cond_3c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_3c

    .line 316
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 317
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v0           #displayString:Ljava/lang/String;
    .end local v1           #seperatorPos:I
    :cond_3c
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v2, :cond_43

    .line 322
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 324
    :cond_43
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method countTokens(Landroid/text/Editable;)I
    .registers 5
    .parameter "text"

    .prologue
    .line 1600
    const/4 v1, 0x0

    .line 1601
    .local v1, tokenCount:I
    const/4 v0, 0x0

    .line 1602
    .local v0, start:I
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 1603
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 1604
    add-int/lit8 v1, v1, 0x1

    .line 1605
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1609
    :cond_1a
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1358
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1360
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    move-object v1, v2

    .line 1363
    :cond_16
    if-eqz v0, :cond_28

    .line 1366
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1367
    if-eqz v3, :cond_28

    array-length v4, v3

    if-lez v4, :cond_28

    .line 1368
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1371
    :cond_28
    new-instance v3, Landroid/text/util/Rfc822Token;

    invoke-direct {v3, v1, v0, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1373
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4b

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_4b
    return-object v0
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .registers 7
    .parameter "entry"

    .prologue
    .line 1381
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1384
    :cond_14
    const/4 v1, 0x0

    .line 1386
    :cond_15
    if-eqz v0, :cond_27

    .line 1389
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1390
    .local v2, tokenized:[Landroid/text/util/Rfc822Token;
    if-eqz v2, :cond_27

    array-length v3, v2

    if-lez v3, :cond_27

    .line 1391
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1394
    .end local v2           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1399
    .end local v1           #display:Ljava/lang/String;
    :goto_2d
    return-object v1

    .line 1396
    .restart local v1       #display:Ljava/lang/String;
    :cond_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    move-object v1, v0

    .line 1397
    goto :goto_2d

    .line 1399
    :cond_36
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d
.end method

.method createMoreChip()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 1619
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v0, :cond_9

    .line 1620
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChipPlainText()V

    .line 1670
    :cond_8
    :goto_8
    return-void

    .line 1624
    :cond_9
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v0, :cond_8

    .line 1628
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 1629
    array-length v1, v0

    if-lez v1, :cond_2d

    .line 1630
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1632
    :cond_2d
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    .line 1634
    if-eqz v4, :cond_37

    array-length v0, v4

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3b

    .line 1635
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_8

    .line 1638
    :cond_3b
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    .line 1639
    array-length v6, v4

    .line 1640
    add-int/lit8 v7, v6, -0x2

    .line 1641
    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v8

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 1645
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 1646
    sub-int v0, v6, v7

    move v1, v2

    move v3, v2

    :goto_55
    array-length v10, v4

    if-ge v0, v10, :cond_a3

    .line 1647
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    sub-int v10, v6, v7

    if-ne v0, v10, :cond_69

    .line 1649
    aget-object v3, v4, v0

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1651
    :cond_69
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_74

    .line 1652
    aget-object v1, v4, v0

    invoke-interface {v5, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1654
    :cond_74
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v10, :cond_82

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9b

    .line 1655
    :cond_82
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 1656
    aget-object v11, v4, v0

    invoke-interface {v5, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 1657
    aget-object v12, v4, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1659
    :cond_9b
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1661
    :cond_a3
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v1, v0, :cond_ad

    .line 1662
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1664
    :cond_ad
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1665
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1666
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v9, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1667
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v8, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1668
    invoke-interface {v9, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1669
    iput-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_8
.end method

.method createMoreChipPlainText()V
    .registers 11

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1582
    .local v5, text:Landroid/text/Editable;
    const/4 v4, 0x0

    .line 1583
    .local v4, start:I
    move v1, v4

    .line 1584
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    const/4 v7, 0x2

    if-ge v2, v7, :cond_18

    .line 1585
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 1586
    move v4, v1

    .line 1584
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1589
    :cond_18
    const/4 v4, 0x0

    .line 1590
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 1591
    .local v6, tokenCount:I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 1592
    .local v3, moreSpan:Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1593
    .local v0, chipText:Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1594
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1595
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1596
    return-void
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "contact"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method

.method getLastChip()Lcom/android/ex/chips/RecipientChip;
    .registers 4

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, last:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 264
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_f

    array-length v2, v0

    if-lez v2, :cond_f

    .line 265
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 267
    :cond_f
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1551
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 1553
    if-eqz v0, :cond_1d

    array-length v1, v0

    if-lez v1, :cond_1d

    aget-object v0, v0, v3

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;
    .registers 5

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1506
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1508
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 1509
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$6;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$6;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1524
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    return-object v0
.end method

.method getSpannable()Landroid/text/Spannable;
    .registers 2

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .registers 2

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2075
    .local v7, text:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v7, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2076
    .local v5, originalTokenStart:I
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2077
    .local v4, lastAddress:Ljava/lang/String;
    move v9, v5

    .line 2078
    .local v9, tokenStart:I
    move v6, v9

    .line 2079
    .local v6, prevTokenStart:I
    const/4 v3, 0x0

    .line 2080
    .local v3, findChip:Lcom/android/ex/chips/RecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v9, :cond_5a

    .line 2083
    :goto_20
    if-eqz v9, :cond_30

    if-nez v3, :cond_30

    .line 2084
    move v6, v9

    .line 2085
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 2086
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    goto :goto_20

    .line 2088
    :cond_30
    if-eq v9, v5, :cond_5a

    .line 2089
    if-eqz v3, :cond_35

    .line 2090
    move v9, v6

    .line 2094
    :cond_35
    :goto_35
    if-ge v9, v5, :cond_5a

    .line 2095
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 2096
    .local v8, tokenEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2097
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v1

    .line 2099
    .local v1, createdChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 2100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 2106
    .end local v1           #createdChip:Lcom/android/ex/chips/RecipientChip;
    .end local v8           #tokenEnd:I
    :cond_5a
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 2107
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2108
    .local v2, editable:Landroid/text/Editable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 2109
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v2}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2110
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    .end local v2           #editable:Landroid/text/Editable;
    :cond_7a
    return-object v0
.end method

.method handlePendingChips()V
    .registers 14

    .prologue
    const/16 v9, 0x32

    const/4 v8, 0x2

    .line 695
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getViewWidth()I

    move-result v5

    if-gtz v5, :cond_a

    .line 751
    :cond_9
    :goto_9
    return-void

    .line 701
    :cond_a
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_9

    .line 705
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v6

    .line 706
    :try_start_11
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 708
    .local v1, editable:Landroid/text/Editable;
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gt v5, v9, :cond_9a

    .line 709
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_58

    .line 710
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 711
    .local v0, current:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 712
    .local v4, tokenStart:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 713
    .local v3, tokenEnd:I
    if-ltz v4, :cond_4f

    .line 716
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_4c

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_4c

    .line 718
    add-int/lit8 v3, v3, 0x1

    .line 720
    :cond_4c
    invoke-direct {p0, v4, v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;)V

    .line 722
    :cond_4f
    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 724
    .end local v0           #current:Ljava/lang/String;
    .end local v3           #tokenEnd:I
    .end local v4           #tokenStart:I
    :cond_58
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeEnd()V

    .line 729
    .end local v2           #i:I
    :goto_5b
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_c2

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c2

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v9, :cond_c2

    .line 731
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_9e

    .line 732
    :cond_7d
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v7}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 733
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 748
    :goto_8c
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 749
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 750
    monitor-exit v6

    goto/16 :goto_9

    .end local v1           #editable:Landroid/text/Editable;
    :catchall_97
    move-exception v5

    monitor-exit v6
    :try_end_99
    .catchall {:try_start_11 .. :try_end_99} :catchall_97

    throw v5

    .line 726
    .restart local v1       #editable:Landroid/text/Editable;
    :cond_9a
    const/4 v5, 0x1

    :try_start_9b
    iput-boolean v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z

    goto :goto_5b

    .line 736
    :cond_9e
    new-instance v5, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    .line 737
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 740
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_8c

    .line 745
    :cond_c2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 746
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V
    :try_end_c8
    .catchall {:try_start_9b .. :try_end_c8} :catchall_97

    goto :goto_8c
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1184
    :cond_7
    :goto_7
    return v4

    .line 1177
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1178
    .local v1, end:I
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1179
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1181
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1182
    .local v0, atEnd:C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_36

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_7

    :cond_36
    const/4 v4, 0x1

    goto :goto_7
.end method

.method movePastTerminators(I)I
    .registers 6
    .parameter "tokenEnd"

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_8

    move v1, p1

    .line 2129
    .end local p1
    .local v1, tokenEnd:I
    :goto_7
    return v1

    .line 2120
    .end local v1           #tokenEnd:I
    .restart local p1
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2121
    .local v0, atEnd:C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1e

    .line 2122
    :cond_1c
    add-int/lit8 p1, p1, 0x1

    .line 2126
    :cond_1e
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_36

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_36

    .line 2127
    add-int/lit8 p1, p1, 0x1

    :cond_36
    move v1, p1

    .line 2129
    .end local p1
    .restart local v1       #tokenEnd:I
    goto :goto_7
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1529
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedItemChanged(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1298
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_12

    .line 1299
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1301
    :cond_12
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 2390
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2392
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2393
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2394
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/RecipientChip;IFF)V
    .registers 6
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1938
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1939
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/RecipientEditTextView;->isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1940
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1945
    :cond_f
    :goto_f
    return-void

    .line 1942
    :cond_10
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_f
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1534
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .prologue
    .line 1282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setEnabled(Z)V

    .line 1283
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 2384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 2385
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 2261
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2317
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 2328
    :pswitch_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 2320
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    .line 2322
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_9

    .line 2325
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_9

    .line 2317
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_19
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2267
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 330
    if-nez p1, :cond_9

    .line 331
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    .line 336
    :goto_8
    return-void

    .line 333
    :cond_9
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->expand()V

    .line 334
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    goto :goto_8
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1434
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    .line 1435
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_1e

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1e

    .line 1122
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1123
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1125
    :cond_19
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1128
    :cond_1e
    const/16 v0, 0x42

    if-ne p1, v0, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1129
    const/4 v0, 0x1

    .line 1132
    :goto_29
    return v0

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_29
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 917
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 918
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 920
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 933
    sparse-switch p1, :sswitch_data_3c

    .line 960
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    .line 936
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 937
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-nez v1, :cond_8

    .line 940
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_1d

    .line 941
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_8

    .line 943
    :cond_1d
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_8

    .line 949
    :sswitch_24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 950
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_38

    .line 951
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 955
    :goto_31
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_8

    .line 953
    :cond_38
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    goto :goto_31

    .line 933
    :sswitch_data_3c
    .sparse-switch
        0x17 -> :sswitch_9
        0x3d -> :sswitch_24
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 2272
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v4, :cond_5

    .line 2288
    :cond_4
    :goto_4
    return-void

    .line 2275
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2276
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2277
    .local v3, y:F
    invoke-virtual {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    .line 2278
    .local v1, offset:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 2279
    .local v0, currentChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_4

    .line 2280
    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_23

    .line 2282
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Lcom/android/ex/chips/RecipientChip;)V

    goto :goto_4

    .line 2285
    :cond_23
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1538
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 285
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    :goto_e
    return-void

    .line 287
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_e
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 295
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2368
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 275
    .local v0, last:Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_29

    .line 277
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 279
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 280
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 2374
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 2379
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 652
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 653
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 654
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_25

    .line 655
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 661
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_32

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_32

    .line 662
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 663
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1a
    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_29

    .line 664
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1a

    .line 657
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_25
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->checkChipWidths()V

    goto :goto_e

    .line 666
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_29
    if-eqz v0, :cond_2f

    .line 667
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 669
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    .line 671
    :cond_32
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 4
    .parameter

    .prologue
    .line 2054
    const v0, 0x1020022

    if-ne p1, v0, :cond_1a

    .line 2055
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2057
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 2058
    const/4 v0, 0x1

    .line 2060
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_19
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 1205
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1207
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1243
    :cond_b
    :goto_b
    return v3

    .line 1209
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1210
    .local v3, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1211
    .local v0, action:I
    const/4 v1, 0x0

    .line 1212
    .local v1, chipWasSelected:Z
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v7, :cond_1e

    .line 1213
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1215
    :cond_1e
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v7, :cond_4f

    if-ne v0, v11, :cond_4f

    .line 1216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1217
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1218
    .local v6, y:F
    invoke-virtual {p0, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v4

    .line 1219
    .local v4, offset:I
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 1220
    .local v2, currentChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_76

    .line 1221
    if-ne v0, v11, :cond_4d

    .line 1222
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v7, :cond_57

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eq v7, v2, :cond_57

    .line 1223
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1224
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1233
    :cond_4d
    :goto_4d
    const/4 v1, 0x1

    .line 1234
    const/4 v3, 0x1

    .line 1240
    .end local v2           #currentChip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #offset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_4f
    :goto_4f
    if-ne v0, v11, :cond_b

    if-nez v1, :cond_b

    .line 1241
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_b

    .line 1225
    .restart local v2       #currentChip:Lcom/android/ex/chips/RecipientChip;
    .restart local v4       #offset:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_57
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v7, :cond_70

    .line 1226
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1227
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1228
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    goto :goto_4d

    .line 1230
    :cond_70
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/ex/chips/RecipientEditTextView;->onClick(Lcom/android/ex/chips/RecipientChip;IFF)V

    goto :goto_4d

    .line 1235
    :cond_76
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v7, :cond_4f

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_4f

    .line 1237
    const/4 v1, 0x1

    goto :goto_4f
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1158
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    .line 1159
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1162
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1163
    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1164
    if-eqz v0, :cond_28

    array-length v0, v0

    if-lez v0, :cond_28

    .line 1169
    :goto_27
    return-void

    .line 1168
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_27
.end method

.method public performValidation()V
    .registers 1

    .prologue
    .line 341
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/RecipientChip;)V
    .registers 10
    .parameter "chip"

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1873
    .local v2, spannable:Landroid/text/Spannable;
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1874
    .local v1, spanStart:I
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1875
    .local v0, spanEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1876
    .local v3, text:Landroid/text/Editable;
    move v4, v0

    .line 1877
    .local v4, toDelete:I
    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-ne p1, v6, :cond_2e

    const/4 v5, 0x1

    .line 1879
    .local v5, wasSelected:Z
    :goto_16
    if-eqz v5, :cond_1b

    .line 1880
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1883
    :cond_1b
    :goto_1b
    if-ltz v4, :cond_30

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_30

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_30

    .line 1884
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1877
    .end local v5           #wasSelected:Z
    :cond_2e
    const/4 v5, 0x0

    goto :goto_16

    .line 1886
    .restart local v5       #wasSelected:Z
    :cond_30
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1887
    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1888
    if-eqz v5, :cond_3b

    .line 1889
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1891
    :cond_3b
    return-void
.end method

.method removeMoreChip()V
    .registers 12

    .prologue
    .line 1678
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_25

    .line 1679
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 1680
    .local v7, span:Landroid/text/Spannable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1681
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1683
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_25

    .line 1685
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v6

    .line 1688
    .local v6, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v6, :cond_25

    array-length v9, v6

    if-nez v9, :cond_26

    .line 1714
    .end local v6           #recipients:[Lcom/android/ex/chips/RecipientChip;
    .end local v7           #span:Landroid/text/Spannable;
    :cond_25
    :goto_25
    return-void

    .line 1691
    .restart local v6       #recipients:[Lcom/android/ex/chips/RecipientChip;
    .restart local v7       #span:Landroid/text/Spannable;
    :cond_26
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1692
    .local v4, end:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1693
    .local v3, editable:Landroid/text/Editable;
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientChip;

    .line 1698
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1703
    .local v8, token:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1704
    .local v2, chipStart:I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, chipEnd:I
    move v4, v1

    .line 1706
    const/4 v9, -0x1

    if-eq v2, v9, :cond_39

    .line 1707
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_39

    .line 1711
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v1           #chipEnd:I
    .end local v2           #chipStart:I
    .end local v8           #token:Ljava/lang/String;
    :cond_6a
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_25
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1954
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1955
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 1899
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-ne p1, v0, :cond_3d

    move v1, v2

    .line 1900
    :goto_8
    if-eqz v1, :cond_d

    .line 1901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 1903
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 1904
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    .line 1905
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1906
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1907
    invoke-direct {p0, p2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1908
    if-eqz v6, :cond_34

    .line 1909
    if-eq v4, v7, :cond_2a

    if-ne v0, v7, :cond_3f

    .line 1910
    :cond_2a
    const-string v0, "RecipientEditTextView"

    const-string v4, "The chip to replace does not exist but should."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1926
    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1927
    if-eqz v1, :cond_3c

    .line 1928
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1930
    :cond_3c
    return-void

    :cond_3d
    move v1, v3

    .line 1899
    goto :goto_8

    .line 1913
    :cond_3f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1919
    :goto_45
    if-ltz v0, :cond_58

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_58

    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_58

    .line 1920
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1922
    :cond_58
    invoke-interface {v5, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_34
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 909
    return-void
.end method

.method sanitizeBetween()V
    .registers 9

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 1052
    .local v3, recips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_3a

    array-length v6, v3

    if-lez v6, :cond_3a

    .line 1053
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1054
    .local v2, last:Lcom/android/ex/chips/RecipientChip;
    const/4 v0, 0x0

    .line 1055
    .local v0, beforeLast:Lcom/android/ex/chips/RecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_18

    .line 1056
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1058
    :cond_18
    const/4 v4, 0x0

    .line 1059
    .local v4, startLooking:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1060
    .local v1, end:I
    if-eqz v0, :cond_45

    .line 1061
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1062
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1063
    .local v5, text:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3a

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v4, v6, :cond_3b

    .line 1075
    .end local v0           #beforeLast:Lcom/android/ex/chips/RecipientChip;
    .end local v1           #end:I
    .end local v2           #last:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #startLooking:I
    .end local v5           #text:Landroid/text/Editable;
    :cond_3a
    :goto_3a
    return-void

    .line 1067
    .restart local v0       #beforeLast:Lcom/android/ex/chips/RecipientChip;
    .restart local v1       #end:I
    .restart local v2       #last:Lcom/android/ex/chips/RecipientChip;
    .restart local v4       #startLooking:I
    .restart local v5       #text:Landroid/text/Editable;
    :cond_3b
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_45

    .line 1068
    add-int/lit8 v4, v4, 0x1

    .line 1071
    .end local v5           #text:Landroid/text/Editable;
    :cond_45
    if-ltz v4, :cond_3a

    if-ltz v1, :cond_3a

    if-eq v4, v1, :cond_3a

    .line 1072
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3a
.end method

.method sanitizeEnd()V
    .registers 9

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 765
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_4d

    array-length v5, v0

    if-lez v5, :cond_4d

    .line 768
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 769
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_4e

    .line 770
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 774
    .local v3, lastSpan:Landroid/text/style/ImageSpan;
    :goto_15
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 775
    .local v2, end:I
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 776
    .local v1, editable:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 777
    .local v4, length:I
    if-le v4, v2, :cond_4d

    .line 779
    const-string v5, "RecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 780
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_48
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 786
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #lastSpan:Landroid/text/style/ImageSpan;
    .end local v4           #length:I
    :cond_4d
    return-void

    .line 772
    :cond_4e
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .restart local v3       #lastSpan:Landroid/text/style/ImageSpan;
    goto :goto_15
.end method

.method public setChipDimensions(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIFFFI)V
    .registers 14
    .parameter "chipBackground"
    .parameter "chipBackgroundPressed"
    .parameter "invalidChip"
    .parameter "chipDelete"
    .parameter "defaultContact"
    .parameter "moreResource"
    .parameter "alternatesLayout"
    .parameter "chipHeight"
    .parameter "padding"
    .parameter "chipFontSize"
    .parameter "copyViewRes"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 611
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 612
    iput-object p4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 613
    float-to-int v0, p9

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 614
    iput p7, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 615
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 616
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 617
    iput p8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 618
    iput p10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 619
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 620
    iput p11, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCopyViewRes:I

    .line 621
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .registers 3
    .parameter "tokenizer"

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 893
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 894
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .parameter "validator"

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 899
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 900
    return-void
.end method
