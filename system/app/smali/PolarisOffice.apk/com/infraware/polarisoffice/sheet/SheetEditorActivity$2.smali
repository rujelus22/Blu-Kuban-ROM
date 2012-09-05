.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;
.super Landroid/os/Handler;
.source "SheetEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, bundle:Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_9c

    .line 198
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$16(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-lez v2, :cond_41

    .line 199
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onToastMessage(I)V
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$17(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 200
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$16(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    const v3, 0x7f08021d

    if-ne v2, v3, :cond_41

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 201
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 202
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    .line 207
    :cond_41
    :goto_41
    return-void

    .line 173
    :sswitch_42
    const-string v2, "SheetEditorActivity"

    const-string v3, "messageHandler CloseDialog"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$13()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, resultCode:I
    const/16 v2, 0x33

    if-ne v1, v2, :cond_41

    .line 176
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->ReplaceText(I)V

    goto :goto_41

    .line 181
    .end local v1           #resultCode:I
    :sswitch_5b
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->CheckFunctionBar()V
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$14(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V

    goto :goto_41

    .line 184
    :sswitch_61
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_41

    .line 187
    :sswitch_6b
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    goto :goto_41

    .line 190
    :sswitch_71
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 191
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    goto :goto_41

    .line 194
    :sswitch_86
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 195
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    goto :goto_41

    .line 171
    nop

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_42
        0x100 -> :sswitch_5b
        0x101 -> :sswitch_61
        0x102 -> :sswitch_6b
        0x103 -> :sswitch_71
        0x104 -> :sswitch_86
    .end sparse-switch
.end method
