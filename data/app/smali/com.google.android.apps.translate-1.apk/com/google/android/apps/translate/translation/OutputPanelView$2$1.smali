.class Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/translate/translation/OutputPanelView$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;->this$1:Lcom/google/android/apps/translate/translation/OutputPanelView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;->this$1:Lcom/google/android/apps/translate/translation/OutputPanelView$2;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->showTranslateResultView()V

    .line 246
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$2$1;->this$1:Lcom/google/android/apps/translate/translation/OutputPanelView$2;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/OutputPanelView$2;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 247
    return-void
.end method
