.class public Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionBarSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/SpinnerAdapter;",
        "Landroid/app/ActionBar$OnNavigationListener;"
    }
.end annotation


# static fields
.field public static final CONVERSATION_FRAGMENT_TAG:Ljava/lang/String; = "conversation"

.field public static final CONVERSATION_ITEM_POSITION:I = 0x1

.field public static final FAVORITE_FRAGMENT_TAG:Ljava/lang/String; = "favorite"

.field public static final FAVORITE_ITEM_POSITION:I = 0x3

.field public static final HISTORY_FRAGMENT_TAG:Ljava/lang/String; = "history"

.field public static final HISTORY_ITEM_POSITION:I = 0x2

.field private static final SHOW_SMS:Z = false

.field public static final SMS_PICKER_FRAGMENT_TAG:Ljava/lang/String; = "sms"

.field public static final SMS_PICKER_ITEM_POSITION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActionBarSpinnerAdapter"

.field public static final TRANSATE_FRAGMENT_TAG:Ljava/lang/String; = "translate"

.field public static final TRANSLATE_ITEM_POSITION:I

.field public static final USE_HISTORY_STACK:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConversationFragment:Lcom/google/android/apps/translate/conversation/ConversationFragment;

.field private mConversationItem:Ljava/lang/String;

.field private mCurrentFragment:Landroid/app/Fragment;

.field private mFavoriteFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

.field private mFavoriteItem:Ljava/lang/String;

.field private mHistoryFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

.field private mHistoryItem:Ljava/lang/String;

.field private mHomeActivity:Lcom/google/android/apps/translate/HomeActivity;

.field private mSelectedPosition:I

.field private mSmsPickerFragment:Lcom/google/android/apps/translate/SmsPickerFragment;

.field private mSmsPickerItem:Ljava/lang/String;

.field private mTabMenuMode:Z

.field private mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

.field private mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

.field private mTranslateItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V
    .registers 9
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "tabMenuMode"
    .parameter "translateFragmentWrapper"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 51
    iput-boolean v2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTabMenuMode:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSelectedPosition:I

    .line 84
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "ActionBarSpinnerAdapter"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 85
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    .line 86
    check-cast p1, Lcom/google/android/apps/translate/HomeActivity;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHomeActivity:Lcom/google/android/apps/translate/HomeActivity;

    .line 87
    iput-object p5, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$string;->btn_translate:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateItem:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$string;->menu_conversation_mode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationItem:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$string;->label_history:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryItem:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$string;->label_favorites:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteItem:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/google/android/apps/translate/R$string;->title_sms_translation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSmsPickerItem:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->clear()V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateItem:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationItem:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryItem:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteItem:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0, p4}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setTabMenuMode(Z)V

    .line 104
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->onNavigationItemSelected(IJ)Z

    .line 105
    return-void
.end method

.method private postProcessPreviousFragment(II)V
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v0, 0x0

    .line 142
    packed-switch p1, :pswitch_data_14

    .line 168
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 146
    :pswitch_5
    if-eq p1, p2, :cond_4

    .line 148
    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationFragment:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    goto :goto_4

    .line 152
    :pswitch_a
    if-eq p1, p2, :cond_4

    .line 154
    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    goto :goto_4

    .line 158
    :pswitch_f
    if-eq p1, p2, :cond_4

    .line 160
    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    goto :goto_4

    .line 142
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_4
    .end packed-switch
.end method

.method public static removeActionBarTitle(Landroid/app/ActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    const/4 v2, 0x0

    .line 403
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "removeActionBarTitle"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {p0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 406
    invoke-virtual {p0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 407
    return-void
.end method

.method public static setActionBarTitle(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 388
    const-string v3, "ActionBarSpinnerAdapter"

    const-string v4, "setActionBarTitle"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 390
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 392
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 394
    .local v1, inflator:Landroid/view/LayoutInflater;
    sget v3, Lcom/google/android/apps/translate/R$layout;->action_bar_spinner_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 395
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 397
    return-void
.end method

.method private startConversationFragment(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 5
    .parameter "translateEntry"

    .prologue
    .line 240
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "startConversationFragment"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationFragment:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    if-nez v0, :cond_12

    .line 242
    new-instance v0, Lcom/google/android/apps/translate/conversation/ConversationFragment;

    invoke-direct {v0, p1}, Lcom/google/android/apps/translate/conversation/ConversationFragment;-><init>(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationFragment:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    .line 244
    :cond_12
    sget v0, Lcom/google/android/apps/translate/R$id;->fragment_container:I

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mConversationFragment:Lcom/google/android/apps/translate/conversation/ConversationFragment;

    const-string v2, "conversation"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private startFavoriteFragment()V
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    if-nez v0, :cond_d

    .line 256
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/history/HistoryFragment;-><init>(ZZ)V

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    .line 258
    :cond_d
    sget v0, Lcom/google/android/apps/translate/R$id;->fragment_container:I

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mFavoriteFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    const-string v2, "favorite"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private startHistoryFragment()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    if-nez v0, :cond_c

    .line 249
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryFragment;

    invoke-direct {v0, v1, v1}, Lcom/google/android/apps/translate/history/HistoryFragment;-><init>(ZZ)V

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    .line 251
    :cond_c
    sget v0, Lcom/google/android/apps/translate/R$id;->fragment_container:I

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mHistoryFragment:Lcom/google/android/apps/translate/history/HistoryFragment;

    const-string v2, "history"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private startSmsPickerFragment(Lcom/google/android/apps/translate/Language;)V
    .registers 5
    .parameter "to"

    .prologue
    .line 262
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "startSmsPickerFragment"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSmsPickerFragment:Lcom/google/android/apps/translate/SmsPickerFragment;

    if-nez v0, :cond_12

    .line 264
    new-instance v0, Lcom/google/android/apps/translate/SmsPickerFragment;

    invoke-direct {v0, p1}, Lcom/google/android/apps/translate/SmsPickerFragment;-><init>(Lcom/google/android/apps/translate/Language;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSmsPickerFragment:Lcom/google/android/apps/translate/SmsPickerFragment;

    .line 266
    :cond_12
    sget v0, Lcom/google/android/apps/translate/R$id;->fragment_container:I

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSmsPickerFragment:Lcom/google/android/apps/translate/SmsPickerFragment;

    const-string v2, "sms"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private startTranslateFragment()V
    .registers 4

    .prologue
    .line 232
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "startTranslateFragment"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    if-nez v0, :cond_14

    .line 234
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateFragment;

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/translate/translation/TranslateFragment;-><init>(Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    .line 236
    :cond_14
    sget v0, Lcom/google/android/apps/translate/R$id;->fragment_container:I

    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    const-string v2, "translate"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private switchFragment(ILandroid/app/Fragment;Ljava/lang/String;)V
    .registers 7
    .parameter "fragmentContainerResourceId"
    .parameter "fragment"
    .parameter "fragTag"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 225
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 226
    .local v1, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 227
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 228
    iput-object p2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    .line 229
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/app/Fragment;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, view:Landroid/view/View;
    sget v3, Lcom/google/android/apps/translate/R$id;->spinner_item_text_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    .line 192
    .local v0, padding:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 193
    sget v3, Lcom/google/android/apps/translate/R$drawable;->bg_action_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    packed-switch p1, :pswitch_data_3c

    .line 219
    :goto_1c
    return-object v2

    .line 197
    :pswitch_1d
    sget v3, Lcom/google/android/apps/translate/R$drawable;->spinner_icon_translate_bw:I

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1c

    .line 201
    :pswitch_23
    sget v3, Lcom/google/android/apps/translate/R$drawable;->spinner_icon_conversation_bw:I

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1c

    .line 205
    :pswitch_29
    sget v3, Lcom/google/android/apps/translate/R$drawable;->spinner_icon_history_bw:I

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1c

    .line 209
    :pswitch_2f
    sget v3, Lcom/google/android/apps/translate/R$drawable;->spinner_icon_starred_bw:I

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1c

    .line 213
    :pswitch_35
    sget v3, Lcom/google/android/apps/translate/R$drawable;->spinner_icon_sms_translation_bw:I

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1c

    .line 195
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method

.method public getSelectedNavigationIndex()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_b

    .line 302
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/google/android/apps/translate/translation/TranslateFragment;

    if-eqz v1, :cond_c

    .line 316
    :cond_b
    :goto_b
    return v0

    .line 304
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/google/android/apps/translate/conversation/ConversationFragment;

    if-eqz v1, :cond_14

    .line 305
    const/4 v0, 0x1

    goto :goto_b

    .line 306
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/google/android/apps/translate/history/HistoryFragment;

    if-eqz v1, :cond_28

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/google/android/apps/translate/history/HistoryFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryFragment;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 308
    const/4 v0, 0x2

    goto :goto_b

    .line 310
    :cond_26
    const/4 v0, 0x3

    goto :goto_b

    .line 312
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/google/android/apps/translate/SmsPickerFragment;

    if-eqz v1, :cond_b

    .line 313
    const/4 v0, 0x4

    goto :goto_b
.end method

.method public getTranslateFragment()Lcom/google/android/apps/translate/translation/TranslateFragment;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTabMenuMode:Z

    if-eqz v0, :cond_9

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public isTabMenuMode()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTabMenuMode:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 323
    const-string v0, "ActionBarSpinnerAdapter"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSelectedPosition:I

    packed-switch v0, :pswitch_data_1a

    .line 334
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 327
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_17

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 330
    :cond_17
    const/4 v0, 0x1

    goto :goto_d

    .line 324
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;

    if-eqz v0, :cond_12

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 272
    const/4 v0, 0x1

    .line 287
    :goto_11
    return v0

    .line 275
    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1a

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 287
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 8
    .parameter "position"
    .parameter "itemId"

    .prologue
    const/4 v1, 0x1

    .line 109
    const-string v2, "ActionBarSpinnerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNavigationItemSelected itemPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " itemId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " item="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSelectedPosition:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->postProcessPreviousFragment(II)V

    .line 112
    iget v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSelectedPosition:I

    if-ne v0, p1, :cond_3e

    move v0, v1

    .line 138
    :goto_3d
    return v0

    .line 115
    :cond_3e
    iput p1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mSelectedPosition:I

    .line 118
    packed-switch p1, :pswitch_data_72

    .line 138
    const/4 v0, 0x0

    goto :goto_3d

    .line 120
    :pswitch_45
    invoke-direct {p0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->startTranslateFragment()V

    move v0, v1

    .line 121
    goto :goto_3d

    .line 123
    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getInitialTranslationEntry()Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->startConversationFragment(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    move v0, v1

    .line 125
    goto :goto_3d

    .line 127
    :pswitch_59
    invoke-direct {p0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->startHistoryFragment()V

    move v0, v1

    .line 128
    goto :goto_3d

    .line 130
    :pswitch_5e
    invoke-direct {p0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->startFavoriteFragment()V

    move v0, v1

    .line 131
    goto :goto_3d

    .line 133
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTranslateFragment:Lcom/google/android/apps/translate/translation/TranslateFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateFragment;->getHelper()Lcom/google/android/apps/translate/translation/TranslateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->startSmsPickerFragment(Lcom/google/android/apps/translate/Language;)V

    move v0, v1

    .line 134
    goto :goto_3d

    .line 118
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_45
        :pswitch_4a
        :pswitch_59
        :pswitch_5e
        :pswitch_63
    .end packed-switch
.end method

.method public setTabMenuMode(Z)V
    .registers 5
    .parameter "tabMenuMode"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTabMenuMode:Z

    .line 343
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    .line 344
    iget-object v1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$id;->tab_menu_fake_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 346
    .local v0, fakeView:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_24

    const/4 v1, 0x4

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    return-void

    .line 346
    :cond_24
    const/16 v1, 0x8

    goto :goto_20
.end method

.method public setTabWidth()V
    .registers 5

    .prologue
    .line 353
    const-string v2, "ActionBarSpinnerAdapter"

    const-string v3, "setTabWidth"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-boolean v2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mTabMenuMode:Z

    if-nez v2, :cond_13

    .line 355
    const-string v2, "ActionBarSpinnerAdapter"

    const-string v3, "setTabWidth BYE!"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_12
    return-void

    .line 358
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, rootView:Landroid/view/View;
    sget v2, Lcom/google/android/apps/translate/R$id;->tab_menu_fragment_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 361
    .local v0, containerView:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;-><init>(Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;Landroid/view/View;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method
