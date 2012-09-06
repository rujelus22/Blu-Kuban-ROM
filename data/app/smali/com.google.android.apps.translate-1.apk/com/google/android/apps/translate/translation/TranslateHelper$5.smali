.class Lcom/google/android/apps/translate/translation/TranslateHelper$5;
.super Ljava/lang/Object;
.source "TranslateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateHelper;->setInputPanel(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

.field final synthetic val$doTranslate:Z

.field final synthetic val$setInputText:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/TranslateHelper;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->val$setInputText:Z

    iput-boolean p3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->val$doTranslate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 634
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    if-nez v0, :cond_36

    .line 635
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    new-instance v0, Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslatePanel:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$300(Lcom/google/android/apps/translate/translation/TranslateHelper;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$400(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/InputPanel;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateHelper;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V

    #setter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v6, v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$202(Lcom/google/android/apps/translate/translation/TranslateHelper;Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/translation/InputPanel;

    .line 641
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 643
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 644
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->val$setInputText:Z

    if-eqz v0, :cond_53

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputText(Ljava/lang/String;)V

    .line 647
    :cond_53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_80

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, v2, v7, v7}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 655
    :cond_80
    iget-boolean v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->val$doTranslate:Z

    if-eqz v0, :cond_9e

    .line 656
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_9d
    :goto_9d
    return-void

    .line 659
    :cond_9e
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$5;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper;

    #getter for: Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTranslationResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    goto :goto_9d
.end method
