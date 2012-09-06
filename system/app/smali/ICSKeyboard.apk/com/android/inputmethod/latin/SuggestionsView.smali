.class public Lcom/android/inputmethod/latin/SuggestionsView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestionsView$Listener;,
        Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;,
        Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final MAX_SUGGESTIONS:I = 0x12

.field private static final MIN_TEXT_XSCALE:F = 0.7f

.field private static final MORE_SUGGESTIONS_CHECKING_MODAL_OR_SLIDING:I = 0x1

.field private static final MORE_SUGGESTIONS_IN_MODAL_MODE:I = 0x0

.field private static final MORE_SUGGESTIONS_IN_SLIDING_MODE:I = 0x2


# instance fields
.field private final mDividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

.field private final mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

.field private final mMoreSuggestionsContainer:Landroid/view/View;

.field private final mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMoreSuggestionsModalTolerance:I

.field private mMoreSuggestionsMode:I

.field private final mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

.field private final mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

.field private final mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

.field private mOriginX:I

.field private mOriginY:I

.field private final mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

.field private final mSuggestionsStrip:Landroid/view/ViewGroup;

.field private final mWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 483
    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/SuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 484
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 487
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    .line 95
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 100
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    .line 710
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$1;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 727
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$2;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$2;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 796
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$3;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$3;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 489
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 490
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03000d

    invoke-virtual {v8, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 492
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 493
    const v0, 0x7f03000b

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 494
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 495
    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 494
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 496
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    .line 500
    const/4 v10, 0x0

    .local v10, pos:I
    :goto_78
    const/16 v0, 0x12

    if-lt v10, v0, :cond_f6

    .line 513
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 517
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 518
    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 517
    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 519
    new-instance v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 521
    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 523
    .local v9, moreWindow:Landroid/widget/PopupWindow;
    const/4 v0, -0x2

    const/4 v1, -0x2

    .line 522
    invoke-virtual {v9, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 524
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 526
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 527
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 528
    new-instance v0, Lcom/android/inputmethod/latin/SuggestionsView$4;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SuggestionsView$4;-><init>(Lcom/android/inputmethod/latin/SuggestionsView;)V

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 534
    iput-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 538
    .local v11, res:Landroid/content/res/Resources;
    const v0, 0x7f0b0016

    .line 537
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    .line 539
    new-instance v0, Landroid/view/GestureDetector;

    .line 540
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 539
    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    .line 541
    return-void

    .line 501
    .end local v9           #moreWindow:Landroid/widget/PopupWindow;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_f6
    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 502
    .local v12, word:Landroid/widget/TextView;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 507
    .local v7, divider:Landroid/view/View;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mDividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mInfos:Ljava/util/ArrayList;

    const v0, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_78
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestedWords;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestionsView$Listener;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardView;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/SuggestionsView;)Z
    .registers 2
    .parameter

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/SuggestionsView;)Z
    .registers 2
    .parameter

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .registers 1
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Landroid/view/View;FI)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->setLayoutWeight(Landroid/view/View;FI)V

    return-void
.end method

.method static synthetic access$7()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    return v0
.end method

.method static synthetic access$8(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private addToDictionary(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "word"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 704
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00a2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, v1, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 707
    .end local v0           #message:Ljava/lang/CharSequence;
    :cond_24
    return-void
.end method

.method private dismissMoreSuggestions()Z
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 736
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 737
    const/4 v0, 0x1

    .line 739
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/CharSequence;
    .registers 5
    .parameter "suggestions"
    .parameter "pos"

    .prologue
    .line 562
    sget-boolean v2, Lcom/android/inputmethod/latin/SuggestionsView;->DBG:Z

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-ge p1, v2, :cond_1b

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SuggestedWords;->getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v1

    .line 564
    .local v1, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-eqz v1, :cond_1b

    .line 565
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, debugInfo:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 571
    .end local v0           #debugInfo:Ljava/lang/CharSequence;
    .end local v1           #wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const v5, 0x3f333333

    .line 595
    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 612
    .end local p0
    :cond_6
    :goto_6
    return-object p0

    .line 596
    .restart local p0
    :cond_7
    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 597
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    .line 598
    .local v2, width:I
    if-le v2, p1, :cond_6

    .line 601
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 602
    .local v1, scaleX:F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_1e

    .line 603
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    goto :goto_6

    .line 610
    :cond_1e
    int-to-float v3, p1

    div-float/2addr v3, v5

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 609
    invoke-static {p0, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 611
    .local v0, ellipsized:Ljava/lang/CharSequence;
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    move-object p0, v0

    .line 612
    goto :goto_6
.end method

.method private static getTextScaleX(Ljava/lang/CharSequence;ILandroid/text/TextPaint;)F
    .registers 6
    .parameter "text"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    const/high16 v1, 0x3f80

    .line 585
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 586
    invoke-static {p0, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    .line 587
    .local v0, width:I
    if-gt v0, p1, :cond_c

    .line 590
    :goto_b
    return v1

    :cond_c
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_b
.end method

.method private static getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;
    .registers 6
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 631
    instance-of v2, p0, Landroid/text/SpannableString;

    if-nez v2, :cond_8

    .line 632
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 642
    :goto_7
    return-object v2

    :cond_8
    move-object v0, p0

    .line 634
    check-cast v0, Landroid/text/SpannableString;

    .line 635
    .local v0, ss:Landroid/text/SpannableString;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 636
    .local v1, styles:[Landroid/text/style/StyleSpan;
    array-length v2, v1

    if-nez v2, :cond_1d

    .line 637
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_7

    .line 639
    :cond_1d
    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    .line 642
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_7

    .line 640
    :pswitch_29
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_7

    .line 639
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .registers 10
    .parameter "text"
    .parameter "paint"

    .prologue
    const/4 v4, 0x0

    .line 616
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 627
    :goto_7
    return v4

    .line 617
    :cond_8
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 618
    .local v3, savedTypeface:Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 619
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 620
    .local v2, len:I
    new-array v5, v2, [F

    .line 621
    .local v5, widths:[F
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 622
    .local v0, count:I
    const/4 v4, 0x0

    .line 623
    .local v4, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-lt v1, v0, :cond_25

    .line 626
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7

    .line 624
    :cond_25
    aget v6, v5, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method private hidePreview()V
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 677
    return-void
.end method

.method private static setLayoutWeight(Landroid/view/View;FI)V
    .registers 6
    .parameter "v"
    .parameter "weight"
    .parameter "height"

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 576
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 577
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 578
    .local v0, llp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 579
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 580
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 582
    .end local v0           #llp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    return-void
.end method

.method private showMoreSuggestions()Z
    .registers 16

    .prologue
    .line 752
    iget-object v13, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    .line 753
    .local v13, params:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;
    iget-boolean v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsAvailable:Z

    if-eqz v1, :cond_6e

    .line 754
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v14

    .line 755
    .local v14, stripWidth:I
    iget-object v11, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsContainer:Landroid/view/View;

    .line 756
    .local v11, container:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v14, v1

    .line 757
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 756
    sub-int v3, v1, v2

    .line 758
    .local v3, maxWidth:I
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsBuilder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 759
    .local v0, builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    iget v2, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    .line 760
    int-to-float v5, v3

    iget v6, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMinMoreSuggestionsWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 761
    iget v5, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMaxMoreSuggestionsRow:I

    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->layout(Lcom/android/inputmethod/latin/SuggestedWords;IIII)Lcom/android/inputmethod/latin/MoreSuggestions$Builder;

    .line 762
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->build()Lcom/android/inputmethod/latin/MoreSuggestions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 764
    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 763
    invoke-virtual {v11, v1, v2}, Landroid/view/View;->measure(II)V

    .line 766
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 767
    .local v4, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    div-int/lit8 v7, v14, 0x2

    .line 768
    .local v7, pointX:I
    iget v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mMoreSuggestionsBottomGap:I

    neg-int v8, v1

    .line 770
    .local v8, pointY:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 771
    iget-object v9, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-object v5, p0

    .line 769
    invoke-interface/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 772
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 773
    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastX:I

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginX:I

    .line 774
    iget v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastY:I

    iput v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginY:I

    .line 775
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->dimEntireKeyboard(Z)V

    .line 776
    const/4 v12, 0x0

    .local v12, i:I
    :goto_59
    iget v1, v13, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mSuggestionsCountInStrip:I

    if-lt v12, v1, :cond_5f

    .line 779
    const/4 v1, 0x1

    .line 781
    .end local v0           #builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    .end local v3           #maxWidth:I
    .end local v4           #moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .end local v7           #pointX:I
    .end local v8           #pointY:I
    .end local v11           #container:Landroid/view/View;
    .end local v12           #i:I
    .end local v14           #stripWidth:I
    :goto_5e
    return v1

    .line 777
    .restart local v0       #builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    .restart local v3       #maxWidth:I
    .restart local v4       #moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .restart local v7       #pointX:I
    .restart local v8       #pointY:I
    .restart local v11       #container:Landroid/view/View;
    .restart local v12       #i:I
    .restart local v14       #stripWidth:I
    :cond_5f
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 776
    add-int/lit8 v12, v12, 0x1

    goto :goto_59

    .line 781
    .end local v0           #builder:Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    .end local v3           #maxWidth:I
    .end local v4           #moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .end local v7           #pointX:I
    .end local v8           #pointY:I
    .end local v11           #container:Landroid/view/View;
    .end local v12           #i:I
    .end local v14           #stripWidth:I
    :cond_6e
    const/4 v1, 0x0

    goto :goto_5e
.end method

.method private showPreview(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "view"
    .parameter "word"

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 680
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 700
    :goto_8
    return-void

    .line 683
    :cond_9
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewText:Landroid/widget/TextView;

    .line 684
    .local v4, previewText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mColorTypedWord:I
    invoke-static {v5}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->access$0(Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 688
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 689
    .local v0, offsetInWindow:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 690
    aget v1, v0, v7

    .line 691
    .local v1, posX:I
    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int v2, v5, v6

    .line 692
    .local v2, posY:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 693
    .local v3, previewPopup:Landroid/widget/PopupWindow;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 694
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 698
    :goto_3e
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->postHidePreview()V

    goto :goto_8

    .line 696
    :cond_47
    invoke-virtual {v3, p0, v7, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3e
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 670
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->removeAllViews()V

    .line 671
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->addView(Landroid/view/View;)V

    .line 672
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    .line 673
    return-void
.end method

.method public dismissAddToDictionaryHint()Z
    .registers 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 658
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 659
    const/4 v0, 0x1

    .line 661
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .parameter "me"

    .prologue
    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 810
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    if-nez v4, :cond_35

    .line 811
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastX:I

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mLastY:I

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsSlidingDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 814
    const/4 v4, 0x1

    .line 847
    :goto_2f
    return v4

    .line 816
    :cond_30
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_2f

    .line 819
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 820
    .local v6, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 821
    .local v8, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 822
    .local v11, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 823
    .local v15, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 824
    .local v14, id:I
    invoke-static {v14, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v1

    .line 825
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 826
    .local v16, x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v17, v0

    .line 827
    .local v17, y:I
    move/from16 v0, v16

    invoke-interface {v6, v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v2

    .line 828
    .local v2, translatedX:I
    move/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v3

    .line 830
    .local v3, translatedY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_aa

    .line 831
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginX:I

    sub-int v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-ge v4, v5, :cond_90

    .line 832
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mOriginY:I

    sub-int v4, v4, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsModalTolerance:I

    if-lt v4, v5, :cond_9e

    .line 835
    :cond_90
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    .line 837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 836
    invoke-virtual/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 842
    :cond_9c
    :goto_9c
    const/4 v4, 0x1

    goto :goto_2f

    .line 838
    :cond_9e
    const/4 v4, 0x1

    if-eq v8, v4, :cond_a4

    const/4 v4, 0x6

    if-ne v8, v4, :cond_9c

    .line 840
    :cond_a4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/inputmethod/latin/SuggestionsView;->mMoreSuggestionsMode:I

    goto :goto_9c

    :cond_aa
    move-object v7, v1

    move v9, v2

    move v10, v3

    move-object v13, v6

    .line 846
    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 847
    const/4 v4, 0x1

    goto/16 :goto_2f
.end method

.method public getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 647
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_16

    .line 648
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v2, v2, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 852
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v3, v3, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->mWordToSaveView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_13

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/SuggestionsView;->addToDictionary(Ljava/lang/CharSequence;)V

    .line 854
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 867
    :cond_12
    :goto_12
    return-void

    .line 858
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 859
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_12

    .line 861
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 862
    .local v0, index:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 865
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 866
    .local v2, word:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    invoke-interface {v3, v0, v2}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_12
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 871
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 872
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mHandler:Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelAllMessages()V

    .line 873
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V

    .line 874
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->showMoreSuggestions()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/inputmethod/latin/SuggestionsView$Listener;Landroid/view/View;)V
    .registers 4
    .parameter "listener"
    .parameter "inputView"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    .line 549
    const v0, 0x7f07003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mKeyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 550
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .registers 6
    .parameter "suggestions"

    .prologue
    .line 553
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 559
    :cond_8
    :goto_8
    return-void

    .line 556
    :cond_9
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 557
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 558
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->layout(Lcom/android/inputmethod/latin/SuggestedWords;Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V

    goto :goto_8
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 653
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mParams:Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestionsStrip:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView;->getWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$SuggestionsViewParams;->layoutAddToDictionaryHint(Ljava/lang/CharSequence;Landroid/view/ViewGroup;I)V

    .line 654
    return-void
.end method
