.class Lcom/google/android/apps/translate/translation/OutputPanelView$1;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->initializeInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 131
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->openFavoriteDb()Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$100(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v5

    #setter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mFavoriteDb:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v4, v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$002(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;)Lcom/google/android/apps/translate/history/BaseDb;

    .line 134
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->openHistoryDb()Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$300(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v5

    #setter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v4, v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$202(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;)Lcom/google/android/apps/translate/history/BaseDb;

    .line 137
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mInitLock:Landroid/os/ConditionVariable;
    invoke-static {v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$400(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 139
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$500(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 141
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$500(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 142
    .local v0, entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    iget-object v1, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    .line 143
    .local v1, from:Lcom/google/android/apps/translate/Language;
    iget-object v3, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    .line 144
    .local v3, to:Lcom/google/android/apps/translate/Language;
    iget-object v4, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 145
    iget-object v2, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    .line 146
    .local v2, inputText:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v2, v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->doTranslate(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2           #inputText:Ljava/lang/String;
    :goto_41
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V

    .line 154
    .end local v0           #entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    .end local v1           #from:Lcom/google/android/apps/translate/Language;
    .end local v3           #to:Lcom/google/android/apps/translate/Language;
    :cond_46
    return-void

    .line 148
    .restart local v0       #entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    .restart local v1       #from:Lcom/google/android/apps/translate/Language;
    .restart local v3       #to:Lcom/google/android/apps/translate/Language;
    :cond_47
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mHistoryDb:Lcom/google/android/apps/translate/history/BaseDb;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/history/BaseDb;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v6}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$500(Lcom/google/android/apps/translate/translation/OutputPanelView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v6

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->addToDb(Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z
    invoke-static {v4, v5, v6}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$600(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/history/BaseDb;Lcom/google/android/apps/translate/translation/TranslateEntry;)Z

    .line 149
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslatingMessage()V

    .line 150
    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$1;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->setTranslateResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    invoke-static {v4, v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$700(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    goto :goto_41
.end method
