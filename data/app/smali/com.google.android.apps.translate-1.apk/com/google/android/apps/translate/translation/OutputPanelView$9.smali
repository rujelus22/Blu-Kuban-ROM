.class Lcom/google/android/apps/translate/translation/OutputPanelView$9;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->setDictionaryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$fromLanguage:Lcom/google/android/apps/translate/Language;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$toLanguage:Lcom/google/android/apps/translate/Language;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$toLanguage:Lcom/google/android/apps/translate/Language;

    iput-object p4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 521
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v1, Lcom/google/android/apps/translate/R$id;->panel_dict:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :goto_16
    return-void

    .line 524
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v1, Lcom/google/android/apps/translate/R$id;->panel_dict:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mDictionaryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1600(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$result:Ljava/lang/String;

    const-string v2, "\\n+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$toLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$9;->val$fromLanguage:Lcom/google/android/apps/translate/Language;

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/android/apps/translate/Constants$AppearanceType;->DICTIONARY_RESULT:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    goto :goto_16
.end method
