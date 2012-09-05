.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# instance fields
.field private mCursorColor:I

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mSystemFontSize:I

.field private mTextColor:I

.field private mTextSize:F

.field mTextTop:Ljava/lang/Boolean;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 202
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 968
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 978
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1016
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1041
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 202
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    .line 968
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 978
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1016
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1041
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 4
    .parameter "mView"

    .prologue
    .line 354
    const v1, 0x7f0800ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 355
    .local v0, audioView:Landroid/widget/LinearLayout;
    return-object v0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .registers 4
    .parameter "mView"

    .prologue
    .line 348
    const v1, 0x7f0800a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 349
    .local v0, MediaView:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .registers 4
    .parameter "mView"

    .prologue
    .line 360
    const v1, 0x7f0800b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 361
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFontIndex()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    return v0
.end method

.method private getSystemFontSize()V
    .registers 4

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mSystemFontSize:I

    .line 1261
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    .line 1262
    return-void
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .registers 10
    .parameter "index"
    .parameter "addWatcher"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1110
    const/4 v1, 0x0

    .line 1115
    .local v1, mView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1117
    const v4, 0x7f0800a8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1118
    .local v2, topEditText:Landroid/widget/EditText;
    const v4, 0x7f0800ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1120
    .local v0, bottomEditText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4b

    .line 1121
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1126
    :cond_25
    :goto_25
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1127
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1128
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1129
    move-object v3, v2

    .line 1136
    .local v3, visibleEditText:Landroid/widget/EditText;
    :goto_34
    if-eqz p2, :cond_3b

    .line 1137
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1141
    :cond_3b
    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1144
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1145
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 1147
    return-object v3

    .line 1122
    .end local v3           #visibleEditText:Landroid/widget/EditText;
    :cond_4b
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_25

    .line 1123
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_25

    .line 1131
    :cond_57
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1132
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1133
    move-object v3, v0

    .restart local v3       #visibleEditText:Landroid/widget/EditText;
    goto :goto_34
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .registers 9
    .parameter "page"
    .parameter "checkFirstText"

    .prologue
    const/4 v4, 0x1

    .line 1069
    const/4 v1, 0x0

    .line 1071
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1074
    if-eqz p2, :cond_13

    .line 1075
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1076
    .local v3, textLength:I
    if-lez v3, :cond_13

    .line 1093
    .end local v3           #textLength:I
    :cond_12
    :goto_12
    return v4

    .line 1081
    :cond_13
    const v5, 0x7f0800a9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1083
    .local v2, mediaVisibility:I
    if-eqz v2, :cond_12

    .line 1087
    const v5, 0x7f0800ae

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1089
    .local v0, audioVisibility:I
    if-eqz v0, :cond_12

    .line 1093
    const/4 v4, 0x0

    goto :goto_12
.end method

.method private resetLayoutAttr()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 928
    const/4 v6, 0x0

    .line 929
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v5

    .line 932
    .local v5, pageNumber:I
    move v2, v5

    .local v2, i:I
    :goto_a
    if-lez v2, :cond_16

    .line 933
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 932
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 936
    :cond_16
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 938
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 939
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 940
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 941
    .local v4, pageDivider:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 943
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3d

    .line 944
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 945
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_3d

    .line 946
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 949
    :cond_3d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_46

    .line 950
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 953
    :cond_46
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4f

    .line 954
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 957
    :cond_4f
    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_58

    .line 958
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 961
    :cond_58
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 962
    const/high16 v7, 0x3f80

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 963
    invoke-virtual {p0, v8, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 965
    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .registers 8
    .parameter "slide"
    .parameter "index"

    .prologue
    const/16 v4, 0x8

    .line 901
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_23

    .line 902
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 903
    .local v2, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 904
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 905
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 908
    .end local v2           #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_23
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_34

    .line 909
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 910
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    :cond_34
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 916
    :cond_54
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 917
    .local v1, editText:Landroid/widget/EditText;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 920
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_61
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 921
    return-void
.end method

.method private setAddAnimation()V
    .registers 5

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1156
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    .line 1157
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1158
    .local v0, addAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_23

    .line 1159
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1162
    .end local v0           #addAnimation:Landroid/view/animation/Animation;
    :cond_23
    return-void
.end method

.method private setDeleteAnimation(II)V
    .registers 7
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1166
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2c

    .line 1167
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1168
    .local v0, deleteAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 1169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1170
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1189
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1192
    .end local v0           #deleteAnimation:Landroid/view/animation/Animation;
    :cond_2c
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .registers 5
    .parameter "childAt"
    .parameter "weight"

    .prologue
    .line 874
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 875
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 877
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 878
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .registers 11
    .parameter "index"

    .prologue
    const/16 v8, 0x8

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 140
    .local v4, mView:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 146
    .local v2, mEditField:Landroid/widget/EditText;
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    const/high16 v6, 0x200

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 150
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 153
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v6

    if-nez v6, :cond_43

    .line 156
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 158
    :cond_43
    const v6, 0x7f0800aa

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 159
    .local v3, mMediaView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 162
    .local v1, mAudioInfo:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 168
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 188
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 190
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 831
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_6a

    .line 832
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    .line 833
    .local v5, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v5, :cond_6a

    .line 834
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 835
    .local v2, mTempIndex:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 836
    .local v4, slideCount:I
    const/4 v3, 0x0

    .line 838
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    if-ge v0, v4, :cond_50

    .line 839
    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 840
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 842
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 844
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    .line 845
    .local v7, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, string:Ljava/lang/String;
    invoke-direct {p0, v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 847
    .local v1, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {p0, v1, v6, v0}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 848
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 849
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v8

    if-nez v8, :cond_4d

    .line 850
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 838
    .end local v1           #mTempEdit:Landroid/widget/EditText;
    .end local v6           #string:Ljava/lang/String;
    .end local v7           #text:Lcom/android/mms/model/TextModel;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 855
    :cond_50
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 857
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 859
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 860
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 871
    .end local v0           #i:I
    .end local v2           #mTempIndex:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #slideCount:I
    .end local v5           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_6a
    :goto_6a
    return-void

    .line 863
    .restart local v0       #i:I
    .restart local v2       #mTempIndex:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #slideCount:I
    .restart local v5       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_6b
    iget v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v8, :cond_75

    .line 864
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 866
    :cond_75
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_6a
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .registers 4
    .parameter "mView"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 335
    const v1, 0x7f0800a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 341
    .local v0, mEdit:Landroid/widget/EditText;
    :goto_11
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 342
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 343
    return-object v0

    .line 337
    .end local v0           #mEdit:Landroid/widget/EditText;
    :cond_1c
    const v1, 0x7f0800ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #mEdit:Landroid/widget/EditText;
    goto :goto_11
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .registers 4

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    .line 322
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, mFocusedChild:Landroid/view/View;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 329
    .local v0, mEdit:Landroid/widget/EditText;
    return-object v0

    .line 324
    .end local v0           #mEdit:Landroid/widget/EditText;
    .end local v1           #mFocusedChild:Landroid/view/View;
    :cond_10
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .restart local v1       #mFocusedChild:Landroid/view/View;
    goto :goto_b
.end method

.method public getFocusedSlideIndex()I
    .registers 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 367
    .local v0, count:I
    sget v2, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v0, v2, :cond_a

    .line 368
    sget v0, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    .line 370
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 371
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 375
    .end local v1           #i:I
    :goto_17
    return v1

    .line 370
    .restart local v1       #i:I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 375
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getMMSLayout()Z
    .registers 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 225
    .local v0, mString:Landroid/text/Editable;
    return-object v0
.end method

.method public getTotalPageCount()I
    .registers 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 897
    .local v0, totalPage:I
    return v0
.end method

.method public hasContents(Z)Z
    .registers 4
    .parameter "checkFirstText"

    .prologue
    const/4 v1, 0x1

    .line 1060
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1062
    .local v0, cnt:I
    if-le v0, v1, :cond_8

    .line 1065
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v1

    goto :goto_7
.end method

.method public initContainer()V
    .registers 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, textFieldColor:I
    if-nez v0, :cond_1d

    .line 122
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    .line 129
    :goto_18
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    .line 130
    return-void

    .line 125
    :cond_1d
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 126
    const/high16 v1, -0x100

    iput v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    goto :goto_18
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    return-void
.end method

.method public removePage(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, newIndex:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 175
    add-int/lit8 v0, p1, -0x1

    .line 176
    if-gez v0, :cond_12

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 181
    :goto_11
    return-void

    .line 179
    :cond_12
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_11
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .parameter "watcher"

    .prologue
    .line 193
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 197
    :cond_12
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .registers 7
    .parameter "audioFileName"
    .parameter "index"

    .prologue
    const/4 v3, 0x7

    .line 687
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 688
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    const v2, 0x7f0800b0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 689
    .local v1, fileName:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 693
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 695
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 697
    return-void
.end method

.method public setCursorColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 1230
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mCursorColor:I

    .line 1231
    return-void
.end method

.method public setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V
    .registers 4
    .parameter "filter"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextCharMaxInputFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 201
    return-void
.end method

.method public setFocusEditText()V
    .registers 3

    .prologue
    .line 256
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 258
    return-void
.end method

.method public setFocusEditText(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 250
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 252
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 253
    return-void
.end method

.method public setFocusEditText(IZ)V
    .registers 5
    .parameter "index"
    .parameter "setLastPos"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 232
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 234
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 236
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 237
    if-eqz p2, :cond_25

    .line 238
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 242
    :goto_24
    return-void

    .line 240
    :cond_25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_24
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method public setHint()V
    .registers 5

    .prologue
    .line 267
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_8

    .line 278
    :goto_7
    return-void

    .line 272
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 274
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFontIndex()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_19

    .line 275
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_7

    .line 277
    :cond_19
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "hint"

    .prologue
    .line 293
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_8

    .line 300
    :goto_7
    return-void

    .line 298
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 299
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public setHintRes(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 261
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    .line 262
    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .registers 12
    .parameter "img"
    .parameter "index"

    .prologue
    const/4 v8, 0x5

    .line 630
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 631
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v5, 0x7f0800aa

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 632
    .local v2, imageView:Landroid/widget/ImageView;
    const v5, 0x7f0800ab

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 633
    .local v4, playButton:Landroid/widget/ImageView;
    const v5, 0x7f0800ac

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, dummyView:Landroid/view/View;
    if-nez p1, :cond_2f

    .line 637
    :try_start_24
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_2e} :catch_57

    move-result-object p1

    .line 644
    :cond_2f
    :goto_2f
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 645
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 646
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_41

    .line 647
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    :cond_41
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 650
    new-instance v5, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v5, p0, v8, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 652
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    return-void

    .line 640
    :catch_57
    move-exception v1

    .line 641
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "Mms/MmsRichContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "mView"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 305
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x2

    .local v2, i:I
    :goto_6
    if-ltz v2, :cond_29

    .line 306
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2a

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 309
    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_29

    move-object v3, v1

    .line 310
    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 315
    :cond_29
    return-void

    .line 305
    .restart local v1       #childView:Landroid/view/View;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6
.end method

.method public setMMSLayout(Z)V
    .registers 4
    .parameter "textTop"

    .prologue
    .line 1101
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 1103
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 1152
    return-void
.end method

.method public setPageDivider(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .line 883
    .local v2, total:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 884
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    const v3, 0x7f0800b2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 885
    .local v1, pageInfo:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 888
    const/4 v3, 0x1

    if-le v2, v3, :cond_42

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_42

    .line 889
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 893
    :goto_41
    return-void

    .line 891
    :cond_42
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_41
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 2
    .parameter "editorActionListener"

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1098
    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .registers 6
    .parameter "editText"
    .parameter "text"
    .parameter "index"

    .prologue
    .line 700
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 701
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 703
    return-void
.end method

.method public setTextColor(I)V
    .registers 2
    .parameter "textColor"

    .prologue
    .line 1195
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1196
    return-void
.end method

.method public setTextSize(F)V
    .registers 2
    .parameter "textSize"

    .prologue
    .line 1255
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextSize:F

    .line 1256
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSystemFontSize()V

    .line 1257
    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .registers 14
    .parameter "videoUri"
    .parameter "index"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 656
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 657
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    const v6, 0x7f0800aa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 658
    .local v5, videoView:Landroid/widget/ImageView;
    const v6, 0x7f0800ab

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 659
    .local v4, playButton:Landroid/widget/ImageView;
    const v6, 0x7f0800ac

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, dummyView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_36

    .line 665
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020115

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_35} :catch_6b

    move-result-object v0

    .line 672
    :cond_36
    :goto_36
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 673
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 674
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_55

    .line 675
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020061

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_55
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 680
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 682
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 683
    return-void

    .line 668
    :catch_6b
    move-exception v2

    .line 669
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .registers 18
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 707
    const-string v12, "Mms/MmsRichContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update(),type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    if-eqz p1, :cond_ad

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    if-eqz v12, :cond_155

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v9

    .line 712
    .local v9, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v9, :cond_ad

    .line 713
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    .line 714
    .local v6, mTempIndex:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 715
    .local v8, slideCount:I
    const/4 v7, 0x0

    .line 717
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    :goto_35
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-ge v12, v8, :cond_43

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_35

    .line 721
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v12

    if-le v12, v8, :cond_52

    .line 722
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    goto :goto_43

    .line 725
    :cond_52
    const/4 v4, 0x0

    .local v4, i:I
    :goto_53
    if-ge v4, v8, :cond_63

    .line 727
    const/4 v12, 0x0

    invoke-virtual {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 729
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_ae

    .line 730
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 763
    :cond_63
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-direct {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 765
    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_7a

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_11a

    .line 766
    :cond_7a
    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 777
    :cond_7e
    :goto_7e
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v12

    if-eqz v12, :cond_145

    .line 778
    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 788
    :goto_8a
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9e

    .line 789
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 790
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 792
    :cond_9e
    const/16 v12, 0xc

    move/from16 v0, p2

    if-ne v0, v12, :cond_ad

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 793
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    .line 828
    .end local v4           #i:I
    .end local v6           #mTempIndex:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #slideCount:I
    .end local v9           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_ad
    :goto_ad
    return-void

    .line 733
    .restart local v4       #i:I
    .restart local v6       #mTempIndex:I
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #slideCount:I
    .restart local v9       #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_ae
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 734
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_c5

    .line 735
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    .line 737
    :cond_c5
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 738
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    .line 740
    :cond_d2
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v12

    if-eqz v12, :cond_e3

    .line 741
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    .line 744
    :cond_e3
    const/4 v12, 0x1

    invoke-direct {p0, v4, v12}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v5

    .line 746
    .local v5, mTempEdit:Landroid/widget/EditText;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v12

    if-eqz v12, :cond_114

    .line 747
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v11

    .line 748
    .local v11, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    .line 749
    .local v10, string:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_110

    .line 750
    new-instance v12, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v13, 0x8

    invoke-direct {v12, p0, v13, v4}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 758
    .end local v10           #string:Ljava/lang/String;
    .end local v11           #text:Lcom/android/mms/model/TextModel;
    :goto_106
    invoke-direct {p0, v7, v4}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    .line 760
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 725
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_53

    .line 752
    .restart local v10       #string:Ljava/lang/String;
    .restart local v11       #text:Lcom/android/mms/model/TextModel;
    :cond_110
    invoke-virtual {p0, v5, v10, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_106

    .line 755
    .end local v10           #string:Ljava/lang/String;
    .end local v11           #text:Lcom/android/mms/model/TextModel;
    :cond_114
    const-string v12, ""

    invoke-virtual {p0, v5, v12, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_106

    .line 767
    .end local v5           #mTempEdit:Landroid/widget/EditText;
    :cond_11a
    const/16 v12, 0xe

    move/from16 v0, p2

    if-ne v0, v12, :cond_134

    .line 768
    iget-object v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_12e

    .line 769
    const/4 v12, 0x1

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_7e

    .line 771
    :cond_12e
    const/4 v12, 0x0

    invoke-virtual {p0, v6, v12}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_7e

    .line 773
    :cond_134
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_7e

    .line 774
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    goto/16 :goto_7e

    .line 781
    :cond_145
    iget v12, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v12, :cond_150

    .line 782
    const-string v12, ""

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_8a

    .line 784
    :cond_150
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_8a

    .line 795
    .end local v4           #i:I
    .end local v6           #mTempIndex:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #slideCount:I
    .end local v9           #slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_155
    const/16 v12, 0xd

    move/from16 v0, p2

    if-ne v0, v12, :cond_184

    .line 797
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 798
    .local v3, firstView:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 799
    .local v1, firstEditText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, firstText:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 802
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 804
    const/high16 v12, 0x3f80

    invoke-direct {p0, v3, v12}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 805
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 806
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_ad

    .line 807
    .end local v1           #firstEditText:Landroid/widget/EditText;
    .end local v2           #firstText:Ljava/lang/String;
    .end local v3           #firstView:Landroid/view/View;
    :cond_184
    const/16 v12, 0xf

    move/from16 v0, p2

    if-ne v0, v12, :cond_192

    .line 808
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 809
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_ad

    .line 810
    :cond_192
    const/16 v12, 0xc

    move/from16 v0, p2

    if-eq v0, v12, :cond_19e

    const/16 v12, 0x10

    move/from16 v0, p2

    if-ne v0, v12, :cond_ad

    .line 813
    :cond_19e
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 814
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 815
    .restart local v3       #firstView:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 816
    .restart local v1       #firstEditText:Landroid/widget/EditText;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 817
    .local v11, text:Ljava/lang/CharSequence;
    if-eqz v11, :cond_1c0

    .line 818
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1c7

    .line 819
    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :cond_1c0
    :goto_1c0
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_ad

    .line 821
    :cond_1c7
    const-string v12, ""

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_1c0
.end method
