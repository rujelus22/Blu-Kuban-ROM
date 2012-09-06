.class Lcom/google/android/apps/translate/translation/OutputPanelView$7;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->hideTranslationAlpha()V
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
    .line 486
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$7;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$7;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    sget v1, Lcom/google/android/apps/translate/R$id;->text_translation_alpha:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    return-void
.end method
