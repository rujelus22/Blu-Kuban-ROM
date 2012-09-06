.class Lcom/google/android/apps/translate/translation/OutputPanelView$10;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->doTranslate(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
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
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$from:Lcom/google/android/apps/translate/Language;

    iput-object p3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$to:Lcom/google/android/apps/translate/Language;

    iput-object p4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$translatedText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$502(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 547
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$from:Lcom/google/android/apps/translate/Language;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$to:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$10;->val$translatedText:Ljava/lang/String;

    #calls: Lcom/google/android/apps/translate/translation/OutputPanelView;->translateInBackground(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1700(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method
