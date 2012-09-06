.class Lcom/google/android/apps/translate/translation/InputPanel$2;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->internalSetInputText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->startInternalEdit()V

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$900(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->val$text:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/editor/TextSlot;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$900(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->requestFocus()Z

    .line 476
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$900(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->selectAll()V

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputTextHint()V
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$700(Lcom/google/android/apps/translate/translation/InputPanel;)V

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$600(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$2;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->endInternalEdit()V

    .line 481
    return-void
.end method
