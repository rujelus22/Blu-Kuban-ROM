.class public Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;
.super Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
.source "SimpleHistoryListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V
    .registers 3
    .parameter "activity"
    .parameter "mode"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V

    .line 27
    return-void
.end method

.method private setEntryView(Landroid/view/View;Lcom/google/android/apps/translate/history/HistoryEntry;)V
    .registers 13
    .parameter "v"
    .parameter "entry"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    iget-object v3, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 54
    .local v0, from:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->mLanguages:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 59
    .local v2, to:Lcom/google/android/apps/translate/Language;
    sget v3, Lcom/google/android/apps/translate/R$id;->title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Lcom/google/android/apps/translate/Language;

    aput-object v0, v5, v7

    aput-object v2, v5, v8

    sget-object v6, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_TITLE:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 62
    new-instance v1, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v3, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-direct {v1, v3}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 64
    .local v1, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasTranslateText()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 66
    sget v3, Lcom/google/android/apps/translate/R$id;->summary:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Lcom/google/android/apps/translate/Language;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    sget-object v6, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_SUMMARY:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 72
    :cond_58
    iget-boolean v3, p2, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->setStar(Landroid/view/View;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/android/apps/translate/R$id;->translate_entry:I

    if-ne v2, v3, :cond_23

    move-object v1, p2

    .line 36
    .local v1, v:Landroid/view/View;
    :goto_b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->getHistoryEntryItem(I)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v0

    .line 37
    .local v0, entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->setEntryView(Landroid/view/View;Lcom/google/android/apps/translate/history/HistoryEntry;)V

    .line 40
    sget v2, Lcom/google/android/apps/translate/R$id;->btn_star:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;-><init>(Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;Lcom/google/android/apps/translate/history/HistoryEntry;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v1

    .line 31
    .end local v0           #entry:Lcom/google/android/apps/translate/history/HistoryEntry;
    .end local v1           #v:Landroid/view/View;
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/apps/translate/R$layout;->entry:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_b
.end method
