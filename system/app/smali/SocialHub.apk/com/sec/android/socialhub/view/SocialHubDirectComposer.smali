.class public Lcom/sec/android/socialhub/view/SocialHubDirectComposer;
.super Landroid/widget/LinearLayout;
.source "SocialHubDirectComposer.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->initialize(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 86
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/EditTextEx;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    .line 91
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v1, :cond_48

    .line 95
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    new-instance v2, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/SocialHubDirectComposer$1;-><init>(Lcom/sec/android/socialhub/view/SocialHubDirectComposer;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/view/EditTextEx;->setOnEditTextLineChangedListener(Lcom/sec/android/socialhub/view/EditTextEx$OnEditTextLineChangedListener;)V

    .line 116
    :cond_48
    return-void
.end method


# virtual methods
.method public clearText()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/EditTextEx;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_b
    return-void
.end method

.method public getButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x33

    if-lt v0, v1, :cond_23

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 60
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_22
    :goto_22
    return-void

    .line 64
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 65
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    .line 68
    :cond_2d
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_4a

    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    .line 77
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_9
    return-void
.end method

.method public setButtonText(I)V
    .registers 3
    .parameter "res"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 196
    :cond_9
    return-void
.end method

.method public setTextHint(I)V
    .registers 3
    .parameter "res"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SocialHubDirectComposer;->mEditText:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/EditTextEx;->setHint(I)V

    .line 133
    :cond_9
    return-void
.end method
