.class Lcom/google/android/apps/translate/translation/ChipView$1;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView;->initParameters(Landroid/app/Activity;Landroid/widget/ListView;Lcom/google/android/apps/translate/history/HistoryListAdapter;Lcom/google/android/apps/translate/TranslateManager;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/InputPanel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTts:Lcom/google/android/apps/translate/MyTts;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$000(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/MyTts;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$100(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$100(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$100(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    new-instance v3, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/ChipView$1;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mSrcTts:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/ChipView;->access$200(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;-><init>(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;)V

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->speak(Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$300(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    .line 250
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TTS_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 253
    :cond_48
    return-void
.end method
