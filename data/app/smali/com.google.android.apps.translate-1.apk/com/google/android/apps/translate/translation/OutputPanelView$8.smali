.class Lcom/google/android/apps/translate/translation/OutputPanelView$8;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslationAlpha(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$from:Lcom/google/android/apps/translate/Language;

.field final synthetic val$to:Lcom/google/android/apps/translate/Language;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->val$from:Lcom/google/android/apps/translate/Language;

    iput-object p3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->val$to:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v2, Lcom/google/android/apps/translate/R$id;->text_translation_alpha:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->val$from:Lcom/google/android/apps/translate/Language;

    invoke-static {v1}, Lcom/google/android/apps/translate/Languages;->isAlphaLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$8;->val$to:Lcom/google/android/apps/translate/Language;

    invoke-static {v1}, Lcom/google/android/apps/translate/Languages;->isAlphaLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 502
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    :goto_1f
    return-void

    .line 504
    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method
