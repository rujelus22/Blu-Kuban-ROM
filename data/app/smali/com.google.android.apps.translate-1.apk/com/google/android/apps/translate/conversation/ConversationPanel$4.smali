.class Lcom/google/android/apps/translate/conversation/ConversationPanel$4;
.super Ljava/lang/Object;
.source "ConversationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationPanel;->onAccept(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

.field final synthetic val$doTranslate:Z

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->val$doTranslate:Z

    iput p3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$800(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    if-ne v0, v1, :cond_30

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$000(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$600(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$100(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->val$doTranslate:Z

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    #calls: Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$900(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 342
    :goto_2f
    return-void

    .line 336
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mCurrentEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$800(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$400(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    if-ne v0, v1, :cond_60

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightEditView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v1}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$400(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v2}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$700(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mLeftBtn:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$100(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->val$doTranslate:Z

    sget-object v6, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    #calls: Lcom/google/android/apps/translate/conversation/ConversationPanel;->endEditMode(Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$900(Lcom/google/android/apps/translate/conversation/ConversationPanel;Lcom/google/android/apps/translate/editor/EditPanelView;Lcom/google/android/apps/translate/editor/TextSlot;Landroid/view/View;Landroid/view/View;ZLcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    goto :goto_2f

    .line 340
    :cond_60
    const-string v0, "ConversationPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccept invalid resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$4;->val$resourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method
