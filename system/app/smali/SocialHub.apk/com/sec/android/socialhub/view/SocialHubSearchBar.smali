.class public Lcom/sec/android/socialhub/view/SocialHubSearchBar;
.super Landroid/widget/LinearLayout;
.source "SocialHubSearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    }
.end annotation


# instance fields
.field private InputManager:Landroid/view/inputmethod/InputMethodManager;

.field public date:Ljava/util/Date;

.field private mButton:Landroid/widget/Button;

.field private mCurrent:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

.field public mEditText:Landroid/widget/EditText;

.field private mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

.field private maxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->date:Ljava/util/Date;

    .line 61
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    .line 63
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mCurrent:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->maxLines:I

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->initialize(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->date:Ljava/util/Date;

    .line 61
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    .line 63
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mCurrent:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->maxLines:I

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->initialize(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->InputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 83
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, inflator:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getLayoutID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->InputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditTextID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getButtonID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    .line 92
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->maxLines:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$1;-><init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setListener()V

    .line 103
    return-void
.end method


# virtual methods
.method public clean(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 315
    return-void
.end method

.method public getButtonID()I
    .registers 2

    .prologue
    .line 122
    const v0, 0x7f0b0023

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditTextID()I
    .registers 2

    .prologue
    .line 117
    const v0, 0x7f0b0021

    return v0
.end method

.method public getLayoutID()I
    .registers 2

    .prologue
    .line 112
    const v0, 0x7f030007

    return v0
.end method

.method public getSearchModel()Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mCurrent:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onDestory()V
    .registers 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->removeAllViews()V

    .line 108
    return-void
.end method

.method public setListener()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$2;-><init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    .line 157
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$3;-><init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_1c
    return-void
.end method

.method public setOnQueryHandler(Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mHandler:Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;

    .line 306
    return-void
.end method

.method public setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mCurrent:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    .line 179
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 182
    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v0

    const v1, 0x7f0800e2

    if-ne v0, v1, :cond_29

    .line 184
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar$4;-><init>(Lcom/sec/android/socialhub/view/SocialHubSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :goto_28
    return-void

    .line 221
    :cond_29
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28
.end method
