.class Lcom/google/android/apps/translate/translation/OutputPanelView$5;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v1, :cond_5

    .line 464
    :goto_4
    return-void

    .line 431
    :cond_5
    const-string v1, "OutputPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTranslateResult result.outputText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-boolean v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->isAutoLanguage:Z

    if-eqz v1, :cond_67

    .line 441
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setDetectedLanguage(Lcom/google/android/apps/translate/Language;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1300(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;)V

    .line 446
    :goto_39
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslationAlpha(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1400(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 450
    invoke-virtual {v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->hasDictionaryResult()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 451
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getDictionaryResult()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v4, v4, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v5, v5, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setDictionaryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1500(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    .line 459
    :goto_61
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V

    goto :goto_4

    .line 443
    :cond_67
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setDetectedLanguage(Lcom/google/android/apps/translate/Language;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1300(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;)V

    goto :goto_39

    .line 455
    :cond_6e
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v4, v4, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$5;->val$result:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v5, v5, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setDictionaryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1500(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    goto :goto_61
.end method
