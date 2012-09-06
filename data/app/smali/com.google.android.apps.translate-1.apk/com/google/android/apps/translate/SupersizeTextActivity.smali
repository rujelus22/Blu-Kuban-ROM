.class public Lcom/google/android/apps/translate/SupersizeTextActivity;
.super Landroid/app/Activity;
.source "SupersizeTextActivity.java"


# static fields
.field public static final SUPPORT_ROTATE_TO_SUPERTEXT:Z = false

.field private static final TAG:Ljava/lang/String; = "SupersizeTextActivity"


# instance fields
.field private mExitBtn:Landroid/view/View;

.field private mFromLanguage:Lcom/google/android/apps/translate/Language;

.field private mSupersizeHelper:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

.field private mSupersizeText:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mToLanguage:Lcom/google/android/apps/translate/Language;

.field private mTranslateInputText:Ljava/lang/String;

.field private mTriggeredByGesture:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTriggeredByGesture:Z

    return-void
.end method

.method private findAvailableSpace()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 136
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/SupersizeTextActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 139
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 140
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 145
    .local v2, width:I
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 149
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 151
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private readIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string v0, "key_language_to"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mToLanguage:Lcom/google/android/apps/translate/Language;

    .line 122
    const-string v0, "key_language_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    .line 123
    const-string v0, "key_text_input"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTranslateInputText:Ljava/lang/String;

    .line 124
    const-string v0, "key_translate_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeText:Ljava/lang/String;

    .line 125
    const-string v0, "key_supersize_by_gesture"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTriggeredByGesture:Z

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mToLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTranslateInputText:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeText:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    move v0, v1

    goto :goto_3e
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->finish()V

    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 216
    const-string v0, "SupersizeTextActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    iget-boolean v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTriggeredByGesture:Z

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->finish()V

    .line 223
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 61
    sget v1, Lcom/google/android/apps/translate/R$layout;->supersize_text_activity:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->setContentView(I)V

    .line 64
    sget v1, Lcom/google/android/apps/translate/R$id;->supersize_text:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_exit:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mExitBtn:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/translate/SupersizeTextActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/SupersizeTextActivity$1;-><init>(Lcom/google/android/apps/translate/SupersizeTextActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->findAvailableSpace()Landroid/graphics/Rect;

    move-result-object v0

    .line 75
    .local v0, usableSpace:Landroid/graphics/Rect;
    new-instance v1, Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    iget-object v2, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;-><init>(Landroid/content/Context;Landroid/widget/TextView;II)V

    iput-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeHelper:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->setSupersizeText(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->finish()V

    .line 84
    :cond_53
    iget-boolean v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTriggeredByGesture:Z

    if-eqz v1, :cond_5b

    .line 86
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->setRequestedOrientation(I)V

    .line 88
    :cond_5b
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeHelper:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->onDestroy()V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 166
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->onBackPressed()V

    .line 174
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method setSupersizeText(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/SupersizeTextActivity;->readIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 112
    :goto_b
    return v1

    .line 107
    :cond_c
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mToLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/ExternalFonts;->getFontByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/ExternalFonts;

    move-result-object v0

    .line 108
    .local v0, font:Lcom/google/android/apps/translate/ExternalFonts;
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/ExternalFonts;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeHelper:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    iget-object v4, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mSupersizeText:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/android/apps/translate/Language;

    iget-object v6, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mFromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity;->mToLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->resizeText(Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    move v1, v2

    .line 112
    goto :goto_b
.end method
