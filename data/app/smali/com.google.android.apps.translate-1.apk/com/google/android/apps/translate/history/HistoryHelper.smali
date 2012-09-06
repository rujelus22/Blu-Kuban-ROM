.class public Lcom/google/android/apps/translate/history/HistoryHelper;
.super Lcom/google/android/apps/translate/translation/BaseTranslateHelper;
.source "HistoryHelper.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/history/HistoryHelper$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryHelper"


# instance fields
.field private mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public getListAdapter()Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    return-object v0
.end method

.method public loadDatabaseFile(Z)V
    .registers 5
    .parameter "isHistory"

    .prologue
    const/4 v2, 0x1

    .line 115
    if-eqz p1, :cond_18

    .line 116
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->HISTORY_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 117
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->HISTORY:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    .line 122
    :goto_17
    return-void

    .line 119
    :cond_18
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->FAVORITES_VIEWS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 120
    new-instance v0, Lcom/google/android/apps/translate/history/HistoryListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;->FAVORITE:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/history/HistoryListAdapter;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$HistoryDisplayMode;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 246
    const-string v0, "HistoryHelper"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_12

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 250
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 135
    .local v2, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 137
    .local v3, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 138
    .local v1, id:I
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_translate_input_text:I

    if-ne v1, v8, :cond_28

    .line 139
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 140
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->openTranslateActivity(Lcom/google/android/apps/translate/history/Entry;)V

    .line 141
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v6

    sget-object v8, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v6, v8, v7}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    move v6, v7

    .line 196
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_27
    :goto_27
    return v6

    .line 144
    :cond_28
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_translate_translation:I

    if-ne v1, v8, :cond_61

    .line 145
    iget-object v8, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v8, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 146
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    new-instance v5, Lcom/google/android/apps/translate/history/Entry;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/translate/history/Entry;->getToLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/google/android/apps/translate/history/HistoryHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v9

    invoke-virtual {p0, v9, v6}, Lcom/google/android/apps/translate/history/HistoryHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v5, v8, v6, v9, v10}, Lcom/google/android/apps/translate/history/Entry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v5, reverseEntry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->openTranslateActivity(Lcom/google/android/apps/translate/history/Entry;)V

    .line 152
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v6

    sget-object v8, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v6, v8, v7}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    move v6, v7

    .line 154
    goto :goto_27

    .line 155
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v5           #reverseEntry:Lcom/google/android/apps/translate/history/Entry;
    :cond_61
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_copy_input_text:I

    if-ne v1, v8, :cond_84

    .line 156
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v8, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v6, v8, v9}, Lcom/google/android/apps/translate/Util;->copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 158
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    sget v8, Lcom/google/android/apps/translate/R$string;->toast_message_copy_input_text:I

    invoke-static {v6, v8}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    .line 159
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 160
    goto :goto_27

    .line 161
    :cond_84
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_copy:I

    if-ne v1, v8, :cond_ad

    .line 162
    new-instance v4, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 164
    .local v4, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v6, v8, v9}, Lcom/google/android/apps/translate/Util;->copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 165
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    sget v8, Lcom/google/android/apps/translate/R$string;->toast_message_copy:I

    invoke-static {v6, v8}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    .line 166
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 167
    goto/16 :goto_27

    .line 168
    .end local v4           #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    :cond_ad
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_remove:I

    if-ne v1, v8, :cond_b9

    .line 169
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->removeHistoryEntry(I)V

    move v6, v7

    .line 170
    goto/16 :goto_27

    .line 171
    :cond_b9
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_share:I

    if-ne v1, v8, :cond_ea

    .line 172
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 173
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v6, v6, Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v6, :cond_e0

    .line 174
    iget-object v8, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v6, Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/translation/ChipView;->getSelectedChipPart()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    move-result-object v6

    invoke-static {v8, v9, v0, v6}, Lcom/google/android/apps/translate/translation/TranslateHelper;->performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 181
    :goto_d8
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 182
    goto/16 :goto_27

    .line 178
    :cond_e0
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    sget-object v9, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v6, v8, v0, v9}, Lcom/google/android/apps/translate/translation/TranslateHelper;->performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto :goto_d8

    .line 183
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_ea
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_search_input_text:I

    if-ne v1, v8, :cond_107

    .line 184
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 185
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v6, v8, v9}, Lcom/google/android/apps/translate/Util;->searchTextOnWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 186
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 187
    goto/16 :goto_27

    .line 188
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_107
    sget v8, Lcom/google/android/apps/translate/R$id;->context_menu_search_translation:I

    if-ne v1, v8, :cond_27

    .line 189
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 190
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    new-instance v4, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getEntry(I)Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 192
    .restart local v4       #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v6, v8, v9}, Lcom/google/android/apps/translate/Util;->searchTextOnWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 193
    iget-object v6, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->notifyDataSetChanged()V

    move v6, v7

    .line 194
    goto/16 :goto_27
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 50
    const-string v0, "HistoryHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;)V

    .line 54
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 200
    iget-object v4, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    sget v5, Lcom/google/android/apps/translate/R$menu;->history_activity_context_menu:I

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object v2, p3

    .line 201
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 202
    .local v2, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 203
    .local v3, position:I
    iget-object v4, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getHistoryEntryItem(I)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 204
    .local v1, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v4, v4, Lcom/google/android/apps/translate/translation/ChipView;

    if-eqz v4, :cond_90

    .line 205
    iget-object v0, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView;

    .line 206
    .local v0, chipView:Lcom/google/android/apps/translate/translation/ChipView;
    sget-object v4, Lcom/google/android/apps/translate/history/HistoryHelper$1;->$SwitchMap$com$google$android$apps$translate$translation$ChipView$ChipPart:[I

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/ChipView;->getSelectedChipPart()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9e

    .line 243
    .end local v0           #chipView:Lcom/google/android/apps/translate/translation/ChipView;
    :goto_31
    return-void

    .line 208
    .restart local v0       #chipView:Lcom/google/android/apps/translate/translation/ChipView;
    :pswitch_32
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_translate_translation:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 209
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_share:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 210
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_copy:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 211
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_search_translation:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 212
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_copy_input_text:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 213
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_search_input_text:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 214
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_31

    .line 217
    :pswitch_58
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_translate_translation:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 218
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_remove:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 219
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_copy:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 220
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_search_translation:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 221
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_31

    .line 224
    :pswitch_74
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_translate_input_text:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 225
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_remove:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 226
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_copy_input_text:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 227
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_search_input_text:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 228
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_31

    .line 237
    .end local v0           #chipView:Lcom/google/android/apps/translate/translation/ChipView;
    :cond_90
    sget v4, Lcom/google/android/apps/translate/R$id;->context_menu_share:I

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 241
    invoke-virtual {v1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_31

    .line 206
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_58
        :pswitch_74
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 92
    sget v0, Lcom/google/android/apps/translate/R$menu;->history_activity_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onDestroy()V

    .line 82
    :cond_9
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 258
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->getHistoryEntryItem(I)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 86
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->openTranslateActivity(Lcom/google/android/apps/translate/history/Entry;)V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 104
    .local v0, id:I
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_feedback:I

    if-ne v0, v2, :cond_13

    .line 105
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->sendFeedback(Landroid/app/Activity;Z)V

    .line 108
    :goto_12
    return v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_12
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onPause()V

    .line 66
    :cond_c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 100
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 70
    const-string v0, "HistoryHelper"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onResume()V

    .line 72
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setHomeButton(Landroid/app/Activity;Z)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    if-eqz v0, :cond_1d

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->onResume()V

    .line 76
    :cond_1d
    return-void
.end method

.method public setFlushOnPause(Z)V
    .registers 3
    .parameter "flushOnPause"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setFlushOnPause(Z)V

    .line 131
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .registers 4
    .parameter "listView"

    .prologue
    .line 125
    const-string v0, "HistoryHelper"

    const-string v1, "setListView"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryHelper;->mListAdapter:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setListView(Landroid/widget/ListView;)V

    .line 127
    return-void
.end method
