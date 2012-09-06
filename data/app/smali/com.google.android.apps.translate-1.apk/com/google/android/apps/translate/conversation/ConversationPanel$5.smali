.class Lcom/google/android/apps/translate/conversation/ConversationPanel$5;
.super Ljava/lang/Object;
.source "ConversationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$5;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$5;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$1000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$5;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLanguagePanel:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$1000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_16
    return-void
.end method
