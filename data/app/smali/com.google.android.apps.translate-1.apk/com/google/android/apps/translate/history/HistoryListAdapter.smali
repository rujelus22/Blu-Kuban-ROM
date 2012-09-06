.class public Lcom/google/android/apps/translate/history/HistoryListAdapter;
.super Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
.source "HistoryListAdapter.java"


# static fields
.field private static final MINIMUM_INSTANT_SCROLLING_POSITIONS:I = 0x2

.field private static final SCROLLING_OVERRUN_FOR_REFRESH_PX:I = 0x0

.field public static final SELECTED_HISTORY_ITEM_POSITION_NULL:I = -0x1

.field private static final SELECT_LAST_ITEM_ANIMATION_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HistoryListAdapter"


# instance fields
.field private mAnimateScroll:Z

.field private mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

.field private mPreviousSelectedItem:Lcom/google/android/apps/translate/translation/ChipView;

.field private mSelectedHistoryItemPosition:I

.field private mSelectedItemPosition:I

.field private mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V
    .registers 5
    .parameter "activity"
    .parameter "mode"

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V

    .line 42
    iput v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mAnimateScroll:Z

    .line 219
    iput v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->getTranslateManager()Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    .line 49
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mAnimateScroll:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/history/HistoryListAdapter;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->scroll(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/history/HistoryListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mAnimateScroll:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/history/HistoryListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/history/HistoryListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I

    return v0
.end method

.method private static buildTranslateEntry(Lcom/google/android/apps/translate/history/HistoryEntry;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 6
    .parameter "historyEntry"
    .parameter "languageList"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    return-object v0
.end method

.method private scroll(IZ)V
    .registers 5
    .parameter "position"
    .parameter "select"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/translate/history/HistoryListAdapter$2;-><init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;ZI)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method


# virtual methods
.method public getSelectedHistoryItem()Lcom/google/android/apps/translate/translation/ChipView;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mPreviousSelectedItem:Lcom/google/android/apps/translate/translation/ChipView;

    return-object v0
.end method

.method public getSelectedHistoryItemPosition()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/translate/history/HistoryEntry;

    .line 65
    .local v10, itemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-object v9, v10, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 67
    .local v9, entry:Lcom/google/android/apps/translate/history/Entry;
    if-eqz p2, :cond_20

    instance-of v1, p2, Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v1, :cond_20

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;

    iget v1, v1, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;->position:I

    if-eq v1, p1, :cond_7d

    .line 69
    :cond_20
    const-string v1, "HistoryListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView NEW position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$layout;->chip_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView;

    .line 71
    .local v0, itemView:Lcom/google/android/apps/translate/translation/ChipView;
    new-instance v11, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;

    invoke-direct {v11}, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;-><init>()V

    .line 72
    .local v11, tag:Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;
    iput p1, v11, Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;->position:I

    .line 73
    invoke-virtual {v0, v11}, Lcom/google/android/apps/translate/translation/ChipView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v9}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    .line 76
    .local v5, fromLang:Lcom/google/android/apps/translate/Language;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v9}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v6

    .line 77
    .local v6, toLang:Lcom/google/android/apps/translate/Language;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;

    iget-object v7, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-boolean v8, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mAnimateScroll:Z

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/translate/translation/ChipView;->initParameters(Landroid/app/Activity;Landroid/widget/ListView;Lcom/google/android/apps/translate/history/HistoryListAdapter;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 83
    .end local v5           #fromLang:Lcom/google/android/apps/translate/Language;
    .end local v6           #toLang:Lcom/google/android/apps/translate/Language;
    .end local v11           #tag:Lcom/google/android/apps/translate/translation/ChipView$ChipViewTag;
    :goto_73
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v10, p1, v1}, Lcom/google/android/apps/translate/translation/ChipView;->render(Lcom/google/android/apps/translate/history/HistoryEntry;II)V

    .line 84
    return-object v0

    .line 80
    .end local v0           #itemView:Lcom/google/android/apps/translate/translation/ChipView;
    :cond_7d
    const-string v1, "HistoryListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView REUSE position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 81
    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView;

    .restart local v0       #itemView:Lcom/google/android/apps/translate/translation/ChipView;
    goto :goto_73
.end method

.method public hasNonFakeSelectedItem()Z
    .registers 3

    .prologue
    .line 216
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadListInBackground(ZZ)V
    .registers 10
    .parameter "force"
    .parameter "selectTop"

    .prologue
    .line 171
    const-string v0, "HistoryListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadListInBackground force="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " selectTop="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isDbChanged()Z

    move-result v4

    .line 174
    .local v4, dbChanged:Z
    if-nez p1, :cond_37

    if-nez v4, :cond_37

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->isFavoriteDbChanged()Z

    move-result v0

    if-nez v0, :cond_37

    .line 197
    :cond_36
    :goto_36
    return-void

    .line 179
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setLoadingMessage()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mIsLoadingList:Z

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v6

    .line 185
    .local v6, textFilter:Ljava/lang/CharSequence;
    if-nez v6, :cond_52

    const/4 v2, 0x0

    .line 188
    .local v2, filter:Ljava/lang/String;
    :goto_46
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;-><init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;Ljava/lang/String;ZZZ)V

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter$3;->start()V

    goto :goto_36

    .line 185
    .end local v2           #filter:Ljava/lang/String;
    :cond_52
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 262
    const-string v0, "HistoryListAdapter"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 285
    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    if-eq v1, v3, :cond_20

    .line 286
    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v1, v2, :cond_21

    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    iget-object v2, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_21

    .line 289
    iput v3, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 296
    :goto_1f
    const/4 v0, 0x1

    .line 298
    :cond_20
    return v0

    .line 293
    :cond_21
    iget v1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->scroll(IZ)V

    goto :goto_1f
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onPause()V

    .line 224
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->getSelectedHistoryItemPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I

    .line 225
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 229
    const-string v0, "HistoryListAdapter"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-super {p0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1c

    .line 232
    iget v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedItemPosition:I

    if-ltz v0, :cond_1d

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/history/HistoryListAdapter$4;-><init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_1c
    :goto_1c
    return-void

    .line 245
    :cond_1d
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->loadListInBackground(ZZ)V

    goto :goto_1c
.end method

.method protected refreshHistoryList(Ljava/util/List;ZZ)V
    .registers 7
    .parameter
    .parameter "scrollToTop"
    .parameter "selectTop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/HistoryEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, historyEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/HistoryEntry;>;"
    const-string v0, "HistoryListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshHistoryList scrollToTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/translate/history/HistoryListAdapter$1;-><init>(Lcom/google/android/apps/translate/history/HistoryListAdapter;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public setInputPanel(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 2
    .parameter "inputPanel"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    .line 60
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 4
    .parameter "listView"

    .prologue
    .line 54
    const-string v0, "HistoryListAdapter"

    const-string v1, "setListView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setListView(Landroid/widget/ListView;)V

    .line 56
    return-void
.end method

.method public setSelectedHistoryItem(Lcom/google/android/apps/translate/translation/ChipView;)V
    .registers 2
    .parameter "previousSelectedItem"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mPreviousSelectedItem:Lcom/google/android/apps/translate/translation/ChipView;

    .line 201
    return-void
.end method

.method public setSelectedHistoryItemPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 208
    iput p1, p0, Lcom/google/android/apps/translate/history/HistoryListAdapter;->mSelectedHistoryItemPosition:I

    .line 209
    return-void
.end method
