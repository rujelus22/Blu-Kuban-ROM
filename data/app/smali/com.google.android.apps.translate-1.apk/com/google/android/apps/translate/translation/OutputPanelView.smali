.class public Lcom/google/android/apps/translate/translation/OutputPanelView;
.super Landroid/widget/LinearLayout;
.source "OutputPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;,
        Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;
    }
.end annotation


# static fields
.field public static final SHOW_TRANSLATED_TEXT:Z = false

.field private static final TAG:Ljava/lang/String; = "OutputPanelView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

.field private mChipView:Lcom/google/android/apps/translate/translation/ChipView;

.field private mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

.field private mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

.field private mInitLock:Landroid/os/ConditionVariable;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOutputTextViewPanelView:Landroid/widget/LinearLayout;

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mInitLock:Landroid/os/ConditionVariable;

    .line 71
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->openFavoriteDb()Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->tryLoadingFromHistory(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setDetectedLanguage(Lcom/google/android/apps/translate/Language;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslationAlpha(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setDictionaryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mDictionaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->translateInBackground(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mOutputTextViewPanelView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->openHistoryDb()Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/os/ConditionVariable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mInitLock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->addToDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/TranslateManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/Languages;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    return-object v0
.end method

.method private addToDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    .registers 6
    .parameter "db"
    .parameter "translateEntry"

    .prologue
    const/4 v0, 0x1

    .line 279
    const-string v1, "OutputPanelView"

    const-string v2, "addToDb"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/BaseDb;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    if-eqz v1, :cond_1d

    .line 282
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    invoke-virtual {p0, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->isStarred(Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;->onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    .line 284
    :cond_1d
    invoke-virtual {p2}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/translate/history/BaseDb;->add(Lcom/google/android/apps/translate/history/Entry;)V

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 289
    :goto_27
    return v0

    .line 288
    :cond_28
    const-string v0, "OutputPanelView"

    const-string v1, "database not opened!"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private closeFavoriteDb()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 262
    :cond_d
    return-void
.end method

.method private closeHistoryDb()V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->close(Z)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    .line 314
    :cond_d
    return-void
.end method

.method private flushFavoriteDb()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 268
    :cond_a
    return-void
.end method

.method private flushHistoryDb()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    if-eqz v0, :cond_a

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/BaseDb;->flush(Z)V

    .line 320
    :cond_a
    return-void
.end method

.method private getFromDb(Lcom/google/android/apps/translate/history/BaseDb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;
    .registers 6
    .parameter "db"
    .parameter "from"
    .parameter "to"
    .parameter "inputText"

    .prologue
    .line 293
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/BaseDb;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 294
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/apps/translate/history/BaseDb;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 296
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private hideTranslationAlpha()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/OutputPanelView$7;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method

.method private initializeInBackground()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "OutputPanelView"

    const-string v1, "initializeInBackground"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslatingMessage()V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mInitLock:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/OutputPanelView$1;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method private isInDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    .registers 6
    .parameter "db"
    .parameter "translation"

    .prologue
    .line 271
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/BaseDb;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 272
    iget-object v0, p2, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/translate/history/BaseDb;->exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 275
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private openFavoriteDb()Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/FavoriteDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method private openHistoryDb()Lcom/google/android/apps/translate/history/BaseDb;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/apps/translate/history/HistoryDb;->open(Landroid/content/Context;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v0

    return-object v0
.end method

.method private setDetectedLanguage(Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "language"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView$6;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method private setDictionaryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 7
    .parameter "word"
    .parameter "result"
    .parameter "fromLanguage"
    .parameter "toLanguage"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$9;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/google/android/apps/translate/translation/OutputPanelView$9;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method private setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView$5;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method private showMessage(Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;Ljava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "message"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView$4;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method private showTranslationAlpha(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/translate/translation/OutputPanelView$8;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method private translateInBackground(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "from"
    .parameter "to"
    .parameter "text"
    .parameter "translatedText"

    .prologue
    .line 160
    const-string v0, "OutputPanelView"

    const-string v1, "translateInBackground"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 162
    const-string v0, "no text, do not translate"

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showEmptyMessage()V

    .line 251
    :goto_15
    return-void

    .line 168
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslatingMessage()V

    .line 171
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/OutputPanelView$2;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_15
.end method

.method private tryLoadingFromHistory(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 12
    .parameter "from"
    .parameter "to"
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 334
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v5

    .line 335
    .local v5, isAutoLanguage:Z
    if-eqz v5, :cond_36

    .line 336
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3, p3}, Lcom/google/android/apps/translate/history/FavoriteDb;->getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 337
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    move-object v6, v0

    .line 338
    .local v6, entry:Lcom/google/android/apps/translate/history/Entry;
    :goto_16
    if-eqz v6, :cond_71

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object p1

    .line 355
    .end local v6           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_36
    :goto_36
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 357
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, p3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->getFromDb(Lcom/google/android/apps/translate/history/BaseDb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    .line 358
    .restart local v6       #entry:Lcom/google/android/apps/translate/history/Entry;
    if-eqz v6, :cond_a7

    .line 360
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    .local v0, resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 364
    const-string v1, "Loaded from favorites"

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->addToDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    .line 385
    .end local v0           #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    .end local v6           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_68
    :goto_68
    return-object v0

    .line 337
    .restart local v7       #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_69
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/history/Entry;

    move-object v6, v1

    goto :goto_16

    .line 343
    .restart local v6       #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_71
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3, p3}, Lcom/google/android/apps/translate/history/HistoryDb;->getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 344
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9f

    move-object v6, v0

    .line 345
    :goto_7e
    if-eqz v6, :cond_36

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 347
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object p1

    goto :goto_36

    .line 344
    :cond_9f
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/history/Entry;

    move-object v6, v1

    goto :goto_7e

    .line 370
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_a7
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, p3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->getFromDb(Lcom/google/android/apps/translate/history/BaseDb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    .line 371
    if-eqz v6, :cond_68

    .line 373
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-direct {p0, v1, v6}, Lcom/google/android/apps/translate/translation/OutputPanelView;->updateLastAccessed(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/history/Entry;)V

    .line 376
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    .restart local v0       #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 380
    const-string v1, "Loaded from history"

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    goto :goto_68
.end method

.method private updateLastAccessed(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/history/Entry;)V
    .registers 4
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 300
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/BaseDb;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 301
    invoke-virtual {p1, p2}, Lcom/google/android/apps/translate/history/BaseDb;->updateLastAccessed(Lcom/google/android/apps/translate/history/Entry;)V

    .line 303
    :cond_b
    return-void
.end method


# virtual methods
.method public copyTranslationText()V
    .registers 5

    .prologue
    .line 597
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v1, :cond_5

    .line 604
    :goto_4
    return-void

    .line 600
    :cond_5
    new-instance v0, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 602
    .local v0, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 603
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$string;->toast_message_copy:I

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    goto :goto_4
.end method

.method public doTranslate(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "from"
    .parameter "to"
    .parameter "text"
    .parameter "translatedText"

    .prologue
    .line 537
    const-string v0, "OutputPanelView"

    const-string v1, "doTranslate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 550
    :goto_d
    return-void

    .line 542
    :cond_e
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/OutputPanelView$10;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public getCurrentTranslation()Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object v0
.end method

.method public hideTranslateResultView()V
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/OutputPanelView$12;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method public init(Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Languages;)V
    .registers 7
    .parameter "callback"
    .parameter "chipView"
    .parameter "translateManager"
    .parameter "languageList"

    .prologue
    .line 79
    const-string v0, "OutputPanelView"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    if-eqz v0, :cond_c

    .line 108
    :cond_b
    :goto_b
    return-void

    .line 84
    :cond_c
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    .line 85
    iput-object p3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 86
    iput-object p4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget v0, Lcom/google/android/apps/translate/R$id;->output_textview_panel:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mOutputTextViewPanelView:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mOutputTextViewPanelView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget v0, Lcom/google/android/apps/translate/R$id;->text_translation_panel_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mMessageTextView:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mMessageTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    sget v0, Lcom/google/android/apps/translate/R$id;->text_dict:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mDictionaryTextView:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/google/android/apps/translate/R$id;->btn_supersize:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcom/google/android/apps/translate/R$id;->btn_share:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Lcom/google/android/apps/translate/R$id;->btn_copy:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->initializeInBackground()V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-eqz v0, :cond_b

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V

    goto :goto_b
.end method

.method public isStarred(Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    .registers 3
    .parameter "translation"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->isInDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    move-result v0

    return v0
.end method

.method public isTranslateResultViewHidden()Z
    .registers 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 584
    .local v0, id:I
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_copy:I

    if-ne v0, v1, :cond_c

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->copyTranslationText()V

    .line 591
    :cond_b
    :goto_b
    return-void

    .line 586
    :cond_c
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_share:I

    if-ne v0, v1, :cond_14

    .line 587
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->shareTranslatedText()V

    goto :goto_b

    .line 588
    :cond_14
    sget v1, Lcom/google/android/apps/translate/R$id;->btn_supersize:I

    if-ne v0, v1, :cond_b

    .line 589
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showSupersizeTranslatText()V

    goto :goto_b
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->closeFavoriteDb()V

    .line 629
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->closeHistoryDb()V

    .line 630
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->flushHistoryDb()V

    .line 634
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->flushFavoriteDb()V

    .line 635
    return-void
.end method

.method public postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 4
    .parameter "resultEntry"

    .prologue
    .line 389
    const-string v0, "OutputPanelView"

    const-string v1, "postBackCurrentTranslation"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView$3;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public refreshLanguageList(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 9
    .parameter "newFrom"
    .parameter "newTo"

    .prologue
    .line 115
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    .line 117
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v3, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v4, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-boolean v5, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->isAutoLanguage:Z

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 121
    :cond_2d
    return-void
.end method

.method public setResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 323
    const-string v0, "OutputPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResult result.outputText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 325
    return-void
.end method

.method public shareTranslatedText()V
    .registers 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v0, :cond_5

    .line 625
    :goto_4
    return-void

    .line 623
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto :goto_4
.end method

.method public showEmptyMessage()V
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->MESSAGE:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showMessage(Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public showSupersizeTranslatText()V
    .registers 4

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v0, :cond_5

    .line 614
    :goto_4
    return-void

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/Util;->openSupersizeTextActivity(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    goto :goto_4
.end method

.method public showTranslateResultView()V
    .registers 3

    .prologue
    .line 553
    const-string v0, "OutputPanelView"

    const-string v1, "showTranslateResultView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/OutputPanelView$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/OutputPanelView$11;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method public showTranslatingErrorMessage(I)V
    .registers 5
    .parameter "error"

    .prologue
    .line 409
    sget-object v1, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->ERROR:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x2

    if-ne p1, v0, :cond_11

    sget v0, Lcom/google/android/apps/translate/R$string;->msg_network_error:I

    :goto_9
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showMessage(Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;Ljava/lang/String;)V

    .line 412
    return-void

    .line 409
    :cond_11
    sget v0, Lcom/google/android/apps/translate/R$string;->msg_translation_error:I

    goto :goto_9
.end method

.method public showTranslatingMessage()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method
