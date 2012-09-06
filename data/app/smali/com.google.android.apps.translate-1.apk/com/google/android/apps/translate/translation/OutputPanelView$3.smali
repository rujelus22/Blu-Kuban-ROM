.class Lcom/google/android/apps/translate/translation/OutputPanelView$3;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->postBackCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$3;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$3;->val$resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$3;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$3;->val$resultEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    #setter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$502(Lcom/google/android/apps/translate/translation/OutputPanelView;Lcom/google/android/apps/translate/translation/TranslateEntry;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 394
    return-void
.end method
