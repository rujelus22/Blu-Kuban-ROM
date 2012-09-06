.class Lcom/google/android/apps/translate/editor/EditPanelView$3;
.super Ljava/lang/Object;
.source "EditPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/EditPanelView;->onSuggestSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

.field final synthetic val$inputText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/EditPanelView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->val$inputText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mControlPanel:Lcom/google/android/apps/translate/editor/InputMethodView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$200(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/InputMethodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InputMethodView;->cancel()V

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->val$inputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$3;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(I)V

    .line 538
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SUGGEST:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 539
    return-void
.end method
