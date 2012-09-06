.class Lcom/google/android/apps/translate/translation/OutputPanelView$2;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->translateInBackground(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$from:Lcom/google/android/apps/translate/Language;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$to:Lcom/google/android/apps/translate/Language;

.field final synthetic val$translatedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    iput-object p3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$translatedText:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$to:Lcom/google/android/apps/translate/Language;

    iput-object p5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 176
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mInitLock:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$400(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    .line 179
    .local v1, sourceLanguage:Lcom/google/android/apps/translate/Language;
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v5

    .line 181
    .local v5, isAuto:Z
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$translatedText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 182
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$to:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$translatedText:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    .local v0, resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$700(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 194
    .end local v0           #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    :cond_29
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    iget-object v9, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$to:Lcom/google/android/apps/translate/Language;

    invoke-interface {v2, v3, v9}, Lcom/google/android/apps/translate/TranslateManager;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 195
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mTranslateManager:Lcom/google/android/apps/translate/TranslateManager;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/TranslateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$text:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/translate/TranslateManager;->doTranslate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, result:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/translate/Translate;->getResultCode(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, error:I
    if-nez v7, :cond_9e

    .line 205
    move-object v4, v8

    .line 208
    .local v4, translatedResult:Ljava/lang/String;
    const-string v2, "\t"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 209
    .local v6, delimiter:I
    if-ltz v6, :cond_6a

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mLanguageList:Lcom/google/android/apps/translate/Languages;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$900(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/Languages;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 212
    if-nez v1, :cond_64

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    .line 215
    :cond_64
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    :cond_6a
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$to:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$text:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    .restart local v0       #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 222
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 224
    const-string v2, "OutputPanelView"

    const-string v3, "Saves to history..."

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->addToDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$600(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    .line 242
    .end local v4           #translatedResult:Ljava/lang/String;
    .end local v6           #delimiter:I
    :cond_8f
    :goto_8f
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;-><init>(Lcom/google/android/apps/translate/translation/OutputPanelView$2;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void

    .line 227
    .end local v0           #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    :cond_9e
    const-string v2, "OutputPanelView"

    const-string v3, "Gets result from history if possible..."

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$from:Lcom/google/android/apps/translate/Language;

    iget-object v9, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$to:Lcom/google/android/apps/translate/Language;

    iget-object v10, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->val$text:Ljava/lang/String;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->tryLoadingFromHistory(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v2, v3, v9, v10}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1000(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 230
    .restart local v0       #resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-nez v0, :cond_d0

    .line 231
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslatingErrorMessage(I)V

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;->onTranslationFailed()V

    goto :goto_8f

    .line 236
    :cond_d0
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 237
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCallback:Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/google/android/apps/translate/translation/OutputPanelView$OutputPanelViewCallback;->onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V

    goto :goto_8f
.end method
