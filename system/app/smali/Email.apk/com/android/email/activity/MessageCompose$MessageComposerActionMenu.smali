.class Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;
.super Landroid/webkit/SelectActionModeCallbackSec;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageComposerActionMenu"
.end annotation


# instance fields
.field private final isFinish:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mDisableCopyNCut:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/HtmlComposerView;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 13366
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/webkit/SelectActionModeCallbackSec;-><init>()V

    .line 13371
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    .line 13373
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->isFinish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13366
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 13552
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 13553
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 13554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 13556
    :cond_c
    return-void
.end method

.method finish(Z)V
    .registers 2
    .parameter "recreate"

    .prologue
    .line 13560
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    .line 13561
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->finish()V

    .line 13562
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 13493
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    .line 13526
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 13495
    :sswitch_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x102001f

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 13496
    invoke-virtual {p0, p1, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto :goto_a

    .line 13501
    :sswitch_19
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 13502
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_a

    .line 13506
    :sswitch_27
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v1, :cond_35

    .line 13507
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020020

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 13509
    :cond_35
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_a

    .line 13513
    :sswitch_39
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v1, :cond_47

    .line 13514
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x1020021

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 13516
    :cond_47
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_a

    .line 13520
    :sswitch_4b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    const v2, 0x102040a

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 13521
    invoke-virtual {p0, p1, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto :goto_a

    .line 13493
    nop

    :sswitch_data_5a
    .sparse-switch
        0x102001f -> :sswitch_b
        0x1020020 -> :sswitch_27
        0x1020021 -> :sswitch_39
        0x1020022 -> :sswitch_19
        0x1020241 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x6

    const/4 v3, 0x0

    .line 13387
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    sget-object v6, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 13389
    .local v2, styledAttributes:Landroid/content/res/TypedArray;
    const v5, 0x102001f

    const v6, 0x104000d

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x61

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13399
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    if-nez v5, :cond_72

    .line 13400
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 13401
    const v5, 0x1020020

    const v6, 0x1040003

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x78

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13413
    :cond_4f
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 13414
    const v5, 0x1020021

    const v6, 0x1040001

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x63

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13427
    :cond_72
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 13428
    const v5, 0x1020022

    const v6, 0x104000b

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x76

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13439
    :cond_96
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 13440
    const v5, 0x1020241

    const v6, 0x10405c4

    invoke-interface {p2, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x70

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13452
    :cond_b9
    const/4 v1, 0x4

    .line 13453
    .local v1, mMaxActionModeItems:I
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v5

    if-lt v5, v8, :cond_d2

    .line 13454
    const/4 v0, 0x3

    .local v0, i:I
    :goto_c1
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v0, v5, :cond_d2

    .line 13455
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13454
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 13460
    .end local v0           #i:I
    :cond_d2
    const-string v5, "Compose >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateActionMode: spellcheckmode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", word selected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$14000(Lcom/android/email/activity/MessageCompose;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13463
    sget-boolean v5, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v5, :cond_109

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->isExpiredSpellCheckMode()Z

    move-result v5

    if-nez v5, :cond_109

    .line 13473
    :goto_108
    return v3

    .line 13467
    :cond_109
    sget-boolean v5, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v5, :cond_11b

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$14000(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 13468
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->doSpellCheck()V
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$14100(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_108

    .line 13472
    :cond_11b
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mActionMode:Landroid/view/ActionMode;

    move v3, v4

    .line 13473
    goto :goto_108
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 13533
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    if-nez v0, :cond_f

    .line 13534
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 13535
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 13539
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->SetContextMenuVisible(Z)V

    .line 13543
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mRecreate:Z

    .line 13546
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 13482
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->initComposerState()V

    .line 13484
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->SetContextMenuVisible(Z)V

    .line 13488
    return v1
.end method

.method public setDisableCopyNCut(Z)V
    .registers 2
    .parameter "DisableCopyNCut"

    .prologue
    .line 13565
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mDisableCopyNCut:Z

    .line 13566
    return-void
.end method

.method protected setWebView(Landroid/webkit/HtmlComposerView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 13477
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->mWebView:Landroid/webkit/HtmlComposerView;

    .line 13478
    return-void
.end method
