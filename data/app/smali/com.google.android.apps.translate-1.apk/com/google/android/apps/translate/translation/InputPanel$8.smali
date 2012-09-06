.class Lcom/google/android/apps/translate/translation/InputPanel$8;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->setTranslationResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;

.field final synthetic val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 838
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/EditPanelView;->hideTranslationLoading()V

    .line 839
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/translation/TranslateEntry;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    .line 840
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V
    invoke-static {v3, v6}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1000(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 841
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 842
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/translate/Util;->isStarredTranslation(Landroid/app/Activity;Lcom/google/android/apps/translate/history/Entry;)Z

    move-result v2

    .line 843
    .local v2, isFavorite:Z
    new-instance v1, Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/translate/history/HistoryEntry;-><init>(Lcom/google/android/apps/translate/history/Entry;Z)V

    .line 844
    .local v1, historyEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$900(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/TextSlot;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 849
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v4, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputText(Ljava/lang/String;)V

    .line 851
    :cond_48
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mChipView:Lcom/google/android/apps/translate/translation/ChipView;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1400(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/translation/ChipView;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v6}, Lcom/google/android/apps/translate/translation/ChipView;->render(Lcom/google/android/apps/translate/history/HistoryEntry;II)V

    .line 855
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v1           #historyEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    .end local v2           #isFavorite:Z
    :goto_51
    return-void

    .line 853
    :cond_52
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$8;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setResultView(Z)V
    invoke-static {v3, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1000(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    goto :goto_51
.end method
