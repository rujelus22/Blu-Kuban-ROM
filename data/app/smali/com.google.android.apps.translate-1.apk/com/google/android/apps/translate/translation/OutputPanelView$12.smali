.class Lcom/google/android/apps/translate/translation/OutputPanelView$12;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->hideTranslateResultView()V
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
    .line 571
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$12;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$12;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$12;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->invalidate()V

    .line 577
    return-void
.end method
