.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;
.super Landroid/os/Handler;
.source "EvBaseViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, bundle:Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_a8

    .line 274
    :cond_c
    :goto_c
    return-void

    .line 232
    :sswitch_d
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I
    invoke-static {v2, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    .line 233
    const-string v2, "EvBaseViewerActivity"

    const-string v3, "messageHandler CloseDialog"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/infraware/polarisoffice/common/DlgFactory;->getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2, v3, v5}, Lcom/infraware/polarisoffice/common/DlgFactory;->dismisProgress(Landroid/app/Activity;I)V

    .line 236
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    sget-object v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I
    invoke-static {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    .line 237
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)I

    move-result v2

    sparse-switch v2, :sswitch_data_c6

    .line 245
    :try_start_36
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    sget-object v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I
    invoke-static {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V

    .line 246
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 247
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V
    :try_end_4f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_4f} :catch_50

    goto :goto_c

    .line 248
    :catch_50
    move-exception v1

    .line 249
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "EvBaseViewerActivity"

    const-string v3, "Hey, check string resources"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 240
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :sswitch_59
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindReplaceEnabled(Z)V

    goto :goto_c

    .line 253
    :sswitch_5f
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 254
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto :goto_c

    .line 257
    :sswitch_6e
    invoke-static {}, Lcom/infraware/polarisoffice/common/DlgFactory;->getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/infraware/polarisoffice/common/DlgFactory;->dismisProgress(Landroid/app/Activity;I)V

    goto :goto_c

    .line 261
    :sswitch_7e
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->RequestViewerPrint(Ljava/lang/String;)V

    goto :goto_c

    .line 264
    :sswitch_88
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 265
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->checkPrintStatus()V

    goto/16 :goto_c

    .line 268
    :sswitch_96
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v3, v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->RequestViewerPrint(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 271
    :sswitch_a1
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finish()V

    goto/16 :goto_c

    .line 229
    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_5f
        0x3 -> :sswitch_6e
        0xb -> :sswitch_7e
        0xc -> :sswitch_88
        0xd -> :sswitch_96
        0x14 -> :sswitch_a1
    .end sparse-switch

    .line 237
    :sswitch_data_c6
    .sparse-switch
        0x1 -> :sswitch_59
        0x11 -> :sswitch_59
    .end sparse-switch
.end method
