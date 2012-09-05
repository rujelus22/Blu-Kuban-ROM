.class Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;
.super Landroid/webkit/SelectActionModeCallbackSec;
.source "MessageWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageWebViewActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-direct {p0}, Landroid/webkit/SelectActionModeCallbackSec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 670
    invoke-super {p0, p1, p2}, Landroid/webkit/SelectActionModeCallbackSec;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;->this$0:Lcom/android/email/activity/MessageWebView;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$602(Lcom/android/email/activity/MessageWebView;Z)Z

    .line 660
    invoke-super {p0, p1, p2}, Landroid/webkit/SelectActionModeCallbackSec;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;->this$0:Lcom/android/email/activity/MessageWebView;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$602(Lcom/android/email/activity/MessageWebView;Z)Z

    .line 676
    invoke-super {p0, p1}, Landroid/webkit/SelectActionModeCallbackSec;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 677
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 665
    invoke-super {p0, p1, p2}, Landroid/webkit/SelectActionModeCallbackSec;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
