.class Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;
.super Ljava/lang/Object;
.source "MultiChoiceActionModeStub.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #getter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    invoke-static {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-interface {v0, v1, p2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;->onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #setter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$002(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #getter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    invoke-static {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-interface {v0, v1, p2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;->onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #getter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    invoke-static {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;->onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$002(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 61
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #getter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    invoke-static {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;->onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V

    .line 71
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    #getter for: Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    invoke-static {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;->this$0:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-interface {v0, v1, p2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;->onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
