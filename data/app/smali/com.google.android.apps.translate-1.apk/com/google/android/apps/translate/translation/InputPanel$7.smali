.class Lcom/google/android/apps/translate/translation/InputPanel$7;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$7;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$7;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePanel:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1300(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 803
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$7;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mLanguagePanel:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$1300(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :cond_16
    return-void
.end method
