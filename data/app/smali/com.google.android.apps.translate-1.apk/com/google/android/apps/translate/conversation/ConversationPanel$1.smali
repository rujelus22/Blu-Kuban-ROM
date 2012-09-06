.class Lcom/google/android/apps/translate/conversation/ConversationPanel$1;
.super Ljava/lang/Object;
.source "ConversationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationPanel;->getVoiceInput(ILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

.field final synthetic val$im:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;ILcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iput p2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$resourceId:I

    iput-object p3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$im:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$resourceId:I

    sget v1, Lcom/google/android/apps/translate/R$id;->left_speak_btn:I

    if-ne v0, v1, :cond_32

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$100(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$im:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    #calls: Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$300(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    .line 250
    :goto_1f
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->invalidate()V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mConversationHelper:Lcom/google/android/apps/translate/conversation/ConversationHelper;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$500(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/conversation/ConversationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 252
    return-void

    .line 245
    :cond_32
    iget v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$resourceId:I

    sget v1, Lcom/google/android/apps/translate/R$id;->right_speak_btn:I

    if-ne v0, v1, :cond_52

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$400(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$100(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$im:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    #calls: Lcom/google/android/apps/translate/conversation/ConversationPanel;->startEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$300(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;)V

    goto :goto_1f

    .line 248
    :cond_52
    const-string v0, "ConversationPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceInput invalid resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$1;->val$resourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
