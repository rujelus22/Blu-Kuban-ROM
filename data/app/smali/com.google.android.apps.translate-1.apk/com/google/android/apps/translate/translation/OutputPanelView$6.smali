.class Lcom/google/android/apps/translate/translation/OutputPanelView$6;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->setDetectedLanguage(Lcom/google/android/apps/translate/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$language:Lcom/google/android/apps/translate/Language;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/Language;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->val$language:Lcom/google/android/apps/translate/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 473
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->val$language:Lcom/google/android/apps/translate/Language;

    if-eqz v1, :cond_31

    .line 474
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v2, Lcom/google/android/apps/translate/R$id;->text_detected_language:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 475
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$string;->label_translated_from:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->val$language:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .end local v0           #tv:Landroid/widget/TextView;
    :goto_30
    return-void

    .line 479
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$6;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v2, Lcom/google/android/apps/translate/R$id;->text_detected_language:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30
.end method
