.class Lcom/google/android/apps/translate/translation/OutputPanelView$11;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V
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
    .line 554
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$11;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$11;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mOutputTextViewPanelView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$11;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$11;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mOutputTextViewPanelView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1800(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$11;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->invalidate()V

    .line 562
    return-void
.end method
